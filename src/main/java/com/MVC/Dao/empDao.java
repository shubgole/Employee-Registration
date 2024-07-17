package com.MVC.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.MVC.Entity.Employe;

public interface empDao {

	public int add(Employe emp);
	
	public Employe getEmpById(int id);

	public List<Employe> addAllData();

	public void updateData(Employe id);

	public void delteData(int id);

}
