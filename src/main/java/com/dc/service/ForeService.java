package com.dc.service;

import com.dc.pojo.Category;
import com.dc.pojo.Product;

import java.util.List;

public interface ForeService {

    /**
     * 返回保存6个分类对象的List集合
     * @return
     */
    public List<Category> listToThree();

    /**
     * 随机获取5件商品
     * @return
     */
    public List<Product> getFivePro();
}
