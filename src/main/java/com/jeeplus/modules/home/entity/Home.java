/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.home.entity;

import org.hibernate.validator.constraints.Length;
import java.util.List;
import com.google.common.collect.Lists;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 家庭Entity
 * @author zx
 * @version 2016-02-25
 */
public class Home extends DataEntity<Home> {
	
	private static final long serialVersionUID = 1L;
	private String homeName;		// 家庭名称
	private String homePhone;		// 家庭电话
	private List<Person> personList = Lists.newArrayList();		// 子表列表
	
	public Home() {
		super();
	}

	public Home(String id){
		super(id);
	}

	@Length(min=1, max=64, message="家庭名称长度必须介于 1 和 64 之间")
	@ExcelField(title="家庭名称", align=2, sort=7)
	public String getHomeName() {
		return homeName;
	}

	public void setHomeName(String homeName) {
		this.homeName = homeName;
	}
	
	@Length(min=0, max=64, message="家庭电话长度必须介于 0 和 64 之间")
	@ExcelField(title="家庭电话", align=2, sort=8)
	public String getHomePhone() {
		return homePhone;
	}

	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}
	
	public List<Person> getPersonList() {
		return personList;
	}

	public void setPersonList(List<Person> personList) {
		this.personList = personList;
	}
}