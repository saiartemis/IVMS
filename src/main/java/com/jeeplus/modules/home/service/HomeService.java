/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.modules.home.entity.Home;
import com.jeeplus.modules.home.dao.HomeDao;
import com.jeeplus.modules.home.entity.Person;
import com.jeeplus.modules.home.dao.PersonDao;

/**
 * 家庭Service
 * @author zx
 * @version 2016-02-28
 */
@Service
@Transactional(readOnly = true)
public class HomeService extends CrudService<HomeDao, Home> {

	@Autowired
	private PersonDao personDao;
	
	public Home get(String id) {
		Home home = super.get(id);
		home.setPersonList(personDao.findList(new Person(home)));
		return home;
	}
	
	public List<Home> findList(Home home) {
		return super.findList(home);
	}
	
	public Page<Home> findPage(Page<Home> page, Home home) {
		return super.findPage(page, home);
	}
	
	@Transactional(readOnly = false)
	public void save(Home home) {
		super.save(home);
		for (Person person : home.getPersonList()){
			if (person.getId() == null){
				continue;
			}
			if (Person.DEL_FLAG_NORMAL.equals(person.getDelFlag())){
				if (StringUtils.isBlank(person.getId())){
					person.setHome(home);
					person.preInsert();
					personDao.insert(person);
				}else{
					person.preUpdate();
					personDao.update(person);
				}
			}else{
				personDao.delete(person);
			}
		}
	}
	
	@Transactional(readOnly = false)
	public void delete(Home home) {
		super.delete(home);
		personDao.delete(new Person(home));
	}
	
}