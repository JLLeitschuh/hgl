package com.liguo.hgl.service;

import java.util.List;

import com.liguo.hgl.proxydao.model.Criteria;
import com.liguo.hgl.proxydao.model.TbPayContextParam;

public interface TbPayContextParamService {
    /**
     * 根据条件获取总行数
     */
    int countByObject(Criteria example) throws RuntimeException;

    /**
     * 根据主键查询记录
     */
    TbPayContextParam selectByPrimaryKey(String orderGroubNo) throws RuntimeException;

    /**
     * 根据指定条件查询记录
     */
    List<TbPayContextParam> selectByObject(Criteria example) throws RuntimeException;

    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(String orderGroubNo) throws RuntimeException;

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TbPayContextParam record) throws RuntimeException;

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TbPayContextParam record) throws RuntimeException;

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TbPayContextParam record) throws RuntimeException;
}