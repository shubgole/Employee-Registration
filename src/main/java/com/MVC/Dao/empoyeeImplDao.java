package com.MVC.Dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.MVC.Entity.Employe;

@Repository
public class empoyeeImplDao implements empDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	
	//Insert
	@Transactional
	public int add(Employe emp) {
		int save = (Integer) this.hibernateTemplate.save(emp);
		return save;
	}

	
	//fetch one data
	public Employe getEmpById(int id) {
		Employe emp = this.hibernateTemplate.get(Employe.class, id);
		return emp;
	}
	
	
	//fetch all data in table
	public List<Employe> addAllData() {
		List<Employe> list = this.hibernateTemplate.loadAll(Employe.class);
		return list;
	}

	
	//update data
	@Transactional
	public void updateData(Employe emp) {
		this.hibernateTemplate.update(emp);
	}
	
	
	//delete data
	@Transactional
	public void delteData(int id) {
		Employe emp = this.hibernateTemplate.get(Employe.class, id);
		this.hibernateTemplate.delete(emp);
		
	}

	

}
