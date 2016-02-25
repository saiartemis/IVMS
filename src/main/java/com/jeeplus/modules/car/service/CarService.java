/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.car.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.car.entity.Car;
import com.jeeplus.modules.car.dao.CarDao;

/**
 * 1Service
 * @author zx
 * @version 2016-02-25
 */
@Service
@Transactional(readOnly = true)
public class CarService extends CrudService<CarDao, Car> {

	public Car get(String id) {
		return super.get(id);
	}
	
	public List<Car> findList(Car car) {
		return super.findList(car);
	}
	
	public Page<Car> findPage(Page<Car> page, Car car) {
		return super.findPage(page, car);
	}
	
	@Transactional(readOnly = false)
	public void save(Car car) {
		super.save(car);
	}
	
	@Transactional(readOnly = false)
	public void delete(Car car) {
		super.delete(car);
	}
	
}