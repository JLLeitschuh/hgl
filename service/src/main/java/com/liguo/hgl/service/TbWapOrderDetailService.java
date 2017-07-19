package com.liguo.hgl.service;

import java.util.List;

import com.liguo.hgl.proxydao.model.Criteria;
import com.liguo.hgl.proxydao.model.TbWapOrderDetail;

public interface TbWapOrderDetailService {
    /**
     * 根据条件获取总行数
     */
    int countByObject(Criteria example) throws RuntimeException;

    /**
     * 根据主键查询记录
     */
    TbWapOrderDetail selectByPrimaryKey(Integer id) throws RuntimeException;

    /**
     * 根据指定条件查询记录
     */
    List<TbWapOrderDetail> selectByObject(Criteria example) throws RuntimeException;

    /**
     * 根据指定条件查询记录
     */
   /* DataPackage getDatapackage(Criteria example, int lines, int page) throws RuntimeException;*/

    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Integer id) throws RuntimeException;

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TbWapOrderDetail record) throws RuntimeException;

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TbWapOrderDetail record) throws RuntimeException;

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TbWapOrderDetail record) throws RuntimeException;
    
    
    /*查询订单总金额*/
    Double selectTotalAmount(Criteria criteria);
}