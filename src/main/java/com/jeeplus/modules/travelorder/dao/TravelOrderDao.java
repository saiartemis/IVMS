/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.travelorder.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.travelorder.entity.TravelOrder;

/**
 * 旅行单管理DAO接口
 * @author zhangxian
 * @version 2016-03-01
 */
@MyBatisDao
public interface TravelOrderDao extends CrudDao<TravelOrder> {
	
}