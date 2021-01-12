package com.dc.controller;

import com.dc.pojo.User;
import com.dc.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @date 2020/12/19-21:30
 * 后台登陆
 */
@Controller
@RequestMapping("")
public class LoginController {
    @Autowired
    UserService userService;

    @RequestMapping(value="/login",method= RequestMethod.POST)
    public String login(Model model, String name, String password){//throws ParseException
        //获取当前登录用户
        Subject subject = SecurityUtils.getSubject();
        //封装用户登录的数据
        UsernamePasswordToken token = new UsernamePasswordToken(name,password);
        try {
            //执行登录的方法
            subject.login(token);
            User us = userService.getByName(name);
            String lastLoginTime = "";
            if(us!=null){
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                //上次时间
                Date time = us.getLasttime();
                lastLoginTime = sdf.format(time);
                //新时间
                String format = sdf.format(new Date());
                //string转date  不处理时间格式会不理想
                ParsePosition pos = new ParsePosition(0);
                Date strtodate = sdf.parse(format, pos);
                us.setLasttime(strtodate);
                userService.update(us);
            }
            if (us.getStatus()==1){
                Session session=subject.getSession();
                session.setAttribute("subject", subject);
                session.setAttribute("lastLoginTime",lastLoginTime);
                return "redirect:index";//重定向
            }else {
                model.addAttribute("error", "账号已被停用！");
                return "/login";//转发
            }

        } catch(UnknownAccountException e){
            model.addAttribute("error", "用户名验证失败！");
            return "/login";
        } catch (IncorrectCredentialsException e){
            model.addAttribute("error", "密码验证失败！");
            return "/login";
        }
    }
}
