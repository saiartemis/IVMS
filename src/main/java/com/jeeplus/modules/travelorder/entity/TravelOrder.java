/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.travelorder.entity;

import org.hibernate.validator.constraints.Length;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;
import com.jeeplus.modules.car.entity.Car;
import com.jeeplus.modules.sys.entity.Area;
import com.jeeplus.modules.sys.entity.User;

/**
 * 旅行单管理Entity
 * @author zhangxian
 * @version 2016-03-01
 */
public class TravelOrder extends DataEntity<TravelOrder> {
	
	private static final long serialVersionUID = 1L;
	private String orderName;		// 订单名称
//	private String startAddress;		// 出发地
//	private String endAddress;		// 目的地
	public static final String STATUS_ON_ROAD = "1";
	public static final String STATUS_FREE = "0";
	private Area startAddress;
	private Area endAddress;
	private String peopleNum;		// 人数
	private String startTime;		// 开始时间
	private String endTime;		// 结束时间
	private String status;		// 状态
	private Car car;
	private User user;
	
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public TravelOrder() {
		super();
	}

	public TravelOrder(String id){
		super(id);
	}

	@Length(min=0, max=64, message="订单名称长度必须介于 0 和 64 之间")
	@ExcelField(title="订单名称", align=2, sort=7)
	public String getOrderName() {
		return orderName;
	}
	
	public Area getStartAddress() {
		return startAddress;
	}

	public void setStartAddress(Area startAddress) {
		this.startAddress = startAddress;
	}

	public Area getEndAddress() {
		return endAddress;
	}

	public void setEndAddress(Area endAddress) {
		this.endAddress = endAddress;
	}

	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	
	
	@Length(min=0, max=64, message="人数长度必须介于 0 和 64 之间")
	@ExcelField(title="人数", align=2, sort=10)
	public String getPeopleNum() {
		return peopleNum;
	}

	public void setPeopleNum(String peopleNum) {
		this.peopleNum = peopleNum;
	}
	
	@ExcelField(title="开始时间", align=2, sort=11)
	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	
	@ExcelField(title="结束时间", align=2, sort=12)
	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
	@Length(min=0, max=64, message="状态长度必须介于 0 和 64 之间")
	@ExcelField(title="状态", align=2, sort=13)
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}