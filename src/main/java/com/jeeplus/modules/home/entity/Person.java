/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.home.entity;

import org.hibernate.validator.constraints.Length;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 家庭Entity
 * @author zx
 * @version 2016-02-25
 */
public class Person extends DataEntity<Person> {
	
	private static final long serialVersionUID = 1L;
	private Home homeId;		// 家庭标号 父类
	private String name;		// 姓名
	
	public Person() {
		super();
	}

	public Person(String id){
		super(id);
	}

	public Person(Home homeId){
		this.homeId = homeId;
	}

	@Length(min=0, max=64, message="家庭标号长度必须介于 0 和 64 之间")
	public Home getHomeId() {
		return homeId;
	}

	public void setHomeId(Home homeId) {
		this.homeId = homeId;
	}
	
	@Length(min=0, max=64, message="姓名长度必须介于 0 和 64 之间")
	@ExcelField(title="姓名", align=2, sort=8)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}