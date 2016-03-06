/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.bill.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.bill.entity.Bill;
import com.jeeplus.modules.bill.dao.BillDao;

/**
 * 账单模块Service
 * @author zhangxian
 * @version 2016-03-06
 */
@Service
@Transactional(readOnly = true)
public class BillService extends CrudService<BillDao, Bill> {

	public Bill get(String id) {
		return super.get(id);
	}
	
	public List<Bill> findList(Bill bill) {
		return super.findList(bill);
	}
	
	public Page<Bill> findPage(Page<Bill> page, Bill bill) {
		return super.findPage(page, bill);
	}
	
	@Transactional(readOnly = false)
	public void save(Bill bill) {
		super.save(bill);
	}
	
	@Transactional(readOnly = false)
	public void delete(Bill bill) {
		super.delete(bill);
	}
	
}