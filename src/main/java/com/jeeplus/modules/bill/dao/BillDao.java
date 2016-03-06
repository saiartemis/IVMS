/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.bill.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.bill.entity.Bill;

/**
 * 账单模块DAO接口
 * @author zhangxian
 * @version 2016-03-06
 */
@MyBatisDao
public interface BillDao extends CrudDao<Bill> {
	
}