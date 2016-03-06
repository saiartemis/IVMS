/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.bill.entity;

import org.hibernate.validator.constraints.Length;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 账单模块Entity
 * @author zhangxian
 * @version 2016-03-06
 */
public class Bill extends DataEntity<Bill> {
	
	private static final long serialVersionUID = 1L;
	private String pay;		// 支出
	private String income;		// 收入
	private String orderId;		// 订单编号
	
	public Bill() {
		super();
	}

	public Bill(String id){
		super(id);
	}

	@Length(min=0, max=64, message="支出长度必须介于 0 和 64 之间")
	@ExcelField(title="支出", align=2, sort=7)
	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}
	
	@Length(min=0, max=64, message="收入长度必须介于 0 和 64 之间")
	@ExcelField(title="收入", align=2, sort=8)
	public String getIncome() {
		return income;
	}

	public void setIncome(String income) {
		this.income = income;
	}
	
	@Length(min=0, max=64, message="订单编号长度必须介于 0 和 64 之间")
	@ExcelField(title="订单编号", align=2, sort=9)
	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	
}