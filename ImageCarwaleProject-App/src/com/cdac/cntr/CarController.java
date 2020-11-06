package com.cdac.cntr;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Car;
import com.cdac.dto.User;
import com.cdac.service.CarService;

@Controller
public class CarController {
	
	@Autowired
	private CarService carService;
	
	
	
		
	@RequestMapping(value = "/prep_expense_add_form.htm",method = RequestMethod.GET)
	public String prepExpenseAddForm(ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		UserController.protectRoute(session,response);
		map.put("car", new Car());
		return "expense_add_form";
	}
	
	
	
	@RequestMapping(value = "/expense_add.htm",method = RequestMethod.POST)
	public String expenseAdd(Car car,HttpSession session,HttpServletResponse response) throws IOException {
		UserController.protectRoute(session,response);
		int userId = ((User)session.getAttribute("user")).getUserId();
		car.setUserId(userId); 
		carService.addCar(car);
		return "home";
	}
	
	@RequestMapping(value = "/expense_list.htm",method = RequestMethod.GET)
	public String allExpenses(ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		UserController.protectRoute(session,response);
		int userId = (((User)session.getAttribute("user")) != null)?((User)session.getAttribute("user")).getUserId():0;
		List<Car> li = carService.selectAll(userId);
		map.put("carList", li);
		return "expense_list";
	}
	
	@RequestMapping(value = "/expense_delete.htm",method = RequestMethod.GET)
	public String expenseDelete(@RequestParam int carId,ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		
		carService.removeCar(carId); 
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		List<Car> li = carService.selectAll(userId);
		map.put("carList", li);
		return "expense_list";
	}
	
	@RequestMapping(value = "/expense_update_form.htm",method = RequestMethod.GET)
	public String expenseUpdateForm(@RequestParam int carId,ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		
		Car cr = carService.findCar(carId);
		map.put("car", cr);
		
		return "expense_update_form";
	}
	
	@RequestMapping(value = "/expense_update.htm",method = RequestMethod.POST)
	public String expenseUpdate(Car car,ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		car.setUserId(userId);
		carService.modifyCar(car);
			
		List<Car> li = carService.selectAll(userId);
		map.put("carList", li);
		return "expense_list";
	}
	
}
