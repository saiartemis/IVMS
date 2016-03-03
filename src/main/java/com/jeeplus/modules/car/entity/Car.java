/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.car.entity;

import org.hibernate.validator.constraints.Length;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;
import com.jeeplus.modules.sys.entity.User;
import com.jeeplus.modules.travelorder.entity.TravelOrder;

/**
 * 车辆信息管理Entity
 * @author zhangxian
 * @version 2016-03-01
 */
public class Car extends DataEntity<Car> {
	
	private static final long serialVersionUID = 1L;
	public static final String STATUS_ON_ROAD = "1";//在途状态
	public static final String STATUS_FREE = "0";//空闲状态
	public static final String STATUS_FIX = "3";//维修状态
	private String carNo;		// 车牌号
	private String driver;		// 司机
	private String driverPhone;		// 司机电话
	private String status;		// 车辆状态
	private User user;
	private TravelOrder travelOrder;
	
	public Car() {
		super();
	}

	public Car(String id){
		super(id);
	}

	
	
	public TravelOrder getTravelOrder() {
		return travelOrder;
	}

	public void setTravelOrder(TravelOrder travelOrder) {
		this.travelOrder = travelOrder;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Length(min=0, max=64, message="车牌号长度必须介于 0 和 64 之间")
	@ExcelField(title="车牌号", align=2, sort=7)
	public String getCarNo() {
		return carNo;
	}

	public void setCarNo(String carNo) {
		this.carNo = carNo;
	}
	
	@Length(min=0, max=64, message="司机长度必须介于 0 和 64 之间")
	@ExcelField(title="司机", align=2, sort=8)
	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}
	
	@Length(min=0, max=64, message="司机电话长度必须介于 0 和 64 之间")
	@ExcelField(title="司机电话", align=2, sort=9)
	public String getDriverPhone() {
		return driverPhone;
	}

	public void setDriverPhone(String driverPhone) {
		this.driverPhone = driverPhone;
	}
	
	@Length(min=0, max=64, message="车辆状态长度必须介于 0 和 64 之间")
	@ExcelField(title="车辆状态", align=2, sort=10)
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}