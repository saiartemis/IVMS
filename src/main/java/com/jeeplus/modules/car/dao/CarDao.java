/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.car.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.car.entity.Car;

/**
 * 车辆信息管理DAO接口
 * @author zhangxian
 * @version 2016-03-01
 */
@MyBatisDao
public interface CarDao extends CrudDao<Car> {
	
}