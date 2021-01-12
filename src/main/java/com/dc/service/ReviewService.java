package com.dc.service;

import com.dc.pojo.Review;

import java.util.List;

/**
 * @author 孟赟强
 * @date 2020/12/18-19:46
 */
public interface ReviewService extends CrudService<Review>{
    /**
     * 获得一个商品的所有评论
     * @param id 商品id
     * @return
     */
    List<Review> getReviewListByPid(int id);
}
