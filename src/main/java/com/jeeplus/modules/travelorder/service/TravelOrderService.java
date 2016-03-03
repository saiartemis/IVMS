/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.travelorder.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.travelorder.entity.TravelOrder;
import com.jeeplus.modules.travelorder.dao.TravelOrderDao;

/**
 * 旅行单管理Service
 * @author zhangxian
 * @version 2016-03-01
 */
@Service
@Transactional(readOnly = true)
public class TravelOrderService extends CrudService<TravelOrderDao, TravelOrder> {

	public TravelOrder get(String id) {
		return super.get(id);
	}
	
	public List<TravelOrder> findList(TravelOrder travelOrder) {
		return super.findList(travelOrder);
	}
	
	public Page<TravelOrder> findPage(Page<TravelOrder> page, TravelOrder travelOrder) {
		return super.findPage(page, travelOrder);
	}
	
	@Transactional(readOnly = false)
	public void save(TravelOrder travelOrder) {
		
		super.save(travelOrder);
	}
	
	@Transactional(readOnly = false)
	public void delete(TravelOrder travelOrder) {
		super.delete(travelOrder);
	}
	
	//public TravelOrder getTravelOrderBy
}