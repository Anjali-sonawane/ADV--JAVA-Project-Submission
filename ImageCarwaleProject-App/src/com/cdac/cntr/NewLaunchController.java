package com.cdac.cntr;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cdac.dto.Car;
import com.cdac.dto.NewCarLaunch;
import com.cdac.dto.User;
import com.cdac.service.NewLaunchService;

@Controller
public class NewLaunchController {

	@Autowired
	private NewLaunchService newlaunchService;
	
	
	@RequestMapping(value = "/new_launch_list.htm",method = RequestMethod.GET)
	public String newLaunchList(ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		UserController.protectRoute(session,response);
		List<NewCarLaunch> li = newlaunchService.selectAllNewCar();
		map.put("carList", li);
		return "new_launch_list";
	}
	
	
	@RequestMapping(value = "/UserChoiceCar_form.htm",method = RequestMethod.GET)
	public String userChoiceCar(ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		UserController.protectRoute(session,response);
		map.put("newcar", new NewCarLaunch());
	
		return "UserChoiceCar_form";
	}
	
	@RequestMapping(value = "/userchoice_add.htm",method = RequestMethod.GET)
	public String userChoiceAdd(NewCarLaunch newcar,HttpSession session,ModelMap map,HttpServletResponse response) throws IOException {
		UserController.protectRoute(session,response);
		//int userId = ((User)session.getAttribute("user")).getUserId();
		String brandName = newcar.getBrandName();
		List<NewCarLaunch> li = newlaunchService.selectCar(brandName);
		map.put("choiceList", li);
		return "UserChoiceCar_list";
				
		//return "home";
	}


}
