/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.car.dao;

import java.util.List;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.car.entity.Car;
import com.jeeplus.modules.sys.entity.User;

/**
 * 车辆信息管理DAO接口
 * @author zhangxian
 * @version 2016-03-01
 */
@MyBatisDao
public interface CarDao extends CrudDao<Car> {
	/**
	 * 查询当前用户空闲车辆
	 * @param user
	 * @return
	 */
	public List<Car> getFreeCarList(User user);
}