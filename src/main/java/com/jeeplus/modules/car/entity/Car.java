/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.car.entity;

import org.hibernate.validator.constraints.Length;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 1Entity
 * @author zx
 * @version 2016-02-25
 */
public class Car extends DataEntity<Car> {
	
	private static final long serialVersionUID = 1L;
	private String price;		// 价格
	
	public Car() {
		super();
	}

	public Car(String id){
		super(id);
	}

	@Length(min=0, max=64, message="价格长度必须介于 0 和 64 之间")
	@ExcelField(title="价格", align=2, sort=7)
	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
}