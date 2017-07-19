package com.liguo.hgl.proxydao.dao;

import java.util.List;

import com.liguo.hgl.proxydao.base.BaseMapper;
import com.liguo.hgl.proxydao.dto.TbWapProductInventoryDto;
import com.liguo.hgl.proxydao.model.Criteria;
import com.liguo.hgl.proxydao.model.ProductImport;
import com.liguo.hgl.proxydao.model.TbWapProductInventory;
import com.liguo.hgl.proxydao.page.PageDto;

public interface TbWapProductInventoryMapper extends BaseMapper {
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
    int insert(TbWapProductInventory record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TbWapProductInventory record);

    /**
     * 根据条件查询记录集
     */
    List<TbWapProductInventory> selectByObject(Criteria example);

    /**
     * 根据主键查询记录
     */
    TbWapProductInventory selectByPrimaryKey(Integer id);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TbWapProductInventory record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TbWapProductInventory record);
    
    /**
     * 根据条件查询出库存信息
     * @param criteria
     * @return
     * @throws RuntimeException
     */
    List<TbWapProductInventoryDto> selectByCriteria(Criteria criteria)  throws RuntimeException;
    
    /**
     * 批量上下架
     * @param parameter
     * @return
     * @throws RuntimeException
     */
    int batchUpOrdownFrame(Criteria parameter) throws RuntimeException;
    
    /**
     * 根据条件查询返回列表
     * @param criteria
     * @param page
     * @return
     * @throws RuntimeException
     */
	List<TbWapProductInventoryDto> selectByCriteria(Criteria criteria,PageDto page) throws RuntimeException;
	
	/**
	 * 根据条件删除库存信息
	 * @param parameter
	 * @return
	 */
	int markDeleteByPrimaryKey(Criteria parameter) throws RuntimeException;

	/**
	 * 批量更新价格
	 */
    int batchUpdatePrice(Criteria example);
	
	/**
	 * 根据id查询出库存对象
	 * @param id
	 * @return
	 * @throws RuntimeException
	 */
	TbWapProductInventoryDto selectById(Integer id) throws RuntimeException;
	
    /**
     * 批量插入
     * @param twis
     * @return
     */
	int batchInsertSelective(List<TbWapProductInventory> twis);
	
	/**
	 * 单个插入
	 * @param twis
	 * @return
	 */
	int insertBatchInventory(List<TbWapProductInventory> twis);
	
	/**
	 * 批量更新状态
	 * @param parameter
	 * @return
	 * @throws RuntimeException
	 */
	int batchUpdateStatus(Criteria parameter)throws RuntimeException;
	
	/**
	 * 获取产品名称
	 * @param criteria
	 * @return
	 */
	List<ProductImport> findProNameAndCodeLimit(Criteria criteria);
	
	/**
	 * 获取产品名称返回单条记录
	 * @param criteria
	 * @return
	 */
	TbWapProductInventoryDto selectByProductNameCriteria(Criteria criteria);
}