package com.liguo.hgl.proxydao.dto;

import com.liguo.hgl.proxydao.model.TbWapOrderTracking;

public class WapOrderTrackingDto extends TbWapOrderTracking {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String userName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
