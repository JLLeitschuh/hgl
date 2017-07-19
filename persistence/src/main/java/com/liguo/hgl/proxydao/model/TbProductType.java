package com.liguo.hgl.proxydao.model;

import java.io.Serializable;
import java.util.List;

public class TbProductType implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_product_type.id
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_product_type.parent_id
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    private Integer parentId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_product_type.parent_id
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    private Integer mainId;
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_product_type.name
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_product_type.describe
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    private String describes;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_product_type.version
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    private Integer version;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_product_type.id
     *
     * @return the value of tb_product_type.id
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    
    /**
     * 类型 0 后台添加 1 前台添加
     */
    private Integer type;

    /**
     * 创建人
     */
    private Integer createBy;
    
    /*产品类别图标*/
    private String icon;
    
    private List<TbBrand> brands;
    
    public Integer getId() {
        return id;
    }

    public Integer getMainId() {
		return mainId;
	}

	public void setMainId(Integer mainId) {
		this.mainId = mainId;
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_product_type.id
     *
     * @param id the value for tb_product_type.id
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_product_type.parent_id
     *
     * @return the value of tb_product_type.parent_id
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    public Integer getParentId() {
        return parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_product_type.parent_id
     *
     * @param parentId the value for tb_product_type.parent_id
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_product_type.name
     *
     * @return the value of tb_product_type.name
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_product_type.name
     *
     * @param name the value for tb_product_type.name
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_product_type.describe
     *
     * @return the value of tb_product_type.describe
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    public String getDescribes() {
        return describes;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_product_type.describe
     *
     * @param describe the value for tb_product_type.describe
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    public void setDescribes(String describes) {
        this.describes = describes;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_product_type.version
     *
     * @return the value of tb_product_type.version
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_product_type.version
     *
     * @param version the value for tb_product_type.version
     *
     * @mbggenerated Tue Mar 29 17:16:20 CST 2016
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public List<TbBrand> getBrands() {
		return brands;
	}

	public void setBrands(List<TbBrand> brands) {
		this.brands = brands;
	}
	
	   /**
     * @return 类型 0 后台添加 1 前台添加
     */
    public Integer getType() {
        return type;
    }

    /**
     * @param type 
	 *            类型 0 后台添加 1 前台添加
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * @return 创建人
     */
    public Integer getCreateBy() {
        return createBy;
    }

    /**
     * @param createBy 
	 *            创建人
     */
    public void setCreateBy(Integer createBy) {
        this.createBy = createBy;
    }

}