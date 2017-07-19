package com.liguo.hgl.proxydao.dao;

import java.util.List;

import com.liguo.hgl.proxydao.base.BaseMapper;
import com.liguo.hgl.proxydao.dto.IntegralMallRecordDto;
import com.liguo.hgl.proxydao.model.Criteria;
import com.liguo.hgl.proxydao.model.TbIntegralMallRecord;
import com.liguo.hgl.proxydao.page.PageDto;

public interface TbIntegralMallRecordMapper extends BaseMapper {
    /**
     * 根据条件查询记录总数
     */
    int countByObject(Criteria example);

    /**
     * 根据条件删除记录
     */
    int deleteByObject(Criteria example);

    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TbIntegralMallRecord record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TbIntegralMallRecord record);

    /**
     * 根据条件查询记录集
     */
    List<IntegralMallRecordDto> selectByObject(Criteria example);

    /**
     * 根据主键查询记录
     */
    TbIntegralMallRecord selectByPrimaryKey(Integer id);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TbIntegralMallRecord record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TbIntegralMallRecord record);
    
    /**
     * 根据条件查询记录集(带分页)
     */
    List<IntegralMallRecordDto> selectByObject(Criteria example,PageDto pgo);
    
    /**
     * 根据订单的序列号查询
     */
    TbIntegralMallRecord selectBySerialNo(Criteria example);
}