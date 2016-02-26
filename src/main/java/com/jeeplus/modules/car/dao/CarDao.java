/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.car.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.car.entity.Car;

/**
 * 1DAO接口
 * @author zx
 * @version 2016-02-25
 */
@MyBatisDao
public interface CarDao extends CrudDao<Car> {
	
}