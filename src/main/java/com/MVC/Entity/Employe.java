 package com.MVC.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;


@javax.persistence.Entity
@Table(name="Emp_details")
public class Employe {
	
	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	private int id;
	private String name;
	private String email;
	private String city;
	private String contact;
	private double salary;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	@Override
	public String toString() {
		return "Employe [Id=" + id + ", name=" + name + ", email=" + email + ", city=" + city + ", contact=" + contact
				+ ", salary=" + salary + "]";
	}
}
