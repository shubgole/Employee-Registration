package com.MVC.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.MVC.Dao.empDao;
import com.MVC.Entity.Employe;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private empDao dao;

	@RequestMapping(path = "/yes")
	public String myHomePage() {

		return "home";
	}

	@RequestMapping(path = "/add")
	public String myForm() {

		return "add_emp";
	}


	// insert data
	@RequestMapping(path = "create_emp", method = RequestMethod.POST)
	public String addEmp(@ModelAttribute Employe emp, HttpSession session) {
		//System.out.println(emp);

		int a = dao.add(emp);
		session.setAttribute("msg", "Value Inserted...");
		return "redirect:/add";
	}
	
	// Fetch data
	@RequestMapping(path = "/show")
	public String changes(Model m) {
		List<Employe> list = dao.addAllData();
		m.addAttribute("empList", list);
		return "view_emp";
	}
	

	// update data
	@RequestMapping(path = "/edit_emp/{id}")
	public String update(@PathVariable int id, Model m, HttpSession session) {

		Employe emp = dao.getEmpById(id);
		m.addAttribute("emp", emp);
		return "edit";
	}

	@RequestMapping(path = "/updateEmp", method = RequestMethod.POST)
	public String update(@ModelAttribute Employe emp, HttpSession session) {

		dao.updateData(emp);
		session.setAttribute("msg", "Updated...");

		return "redirect:/show";
	}

	@RequestMapping(path = "/deleteEmp/{id}")
	public String delete(@PathVariable int id,HttpSession session) {
		
		dao.delteData(id);
		session.setAttribute("msg", "Data Deleted.....");
		return "redirect:/show";
	}

}
