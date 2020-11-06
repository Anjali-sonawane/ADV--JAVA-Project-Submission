package com.cdac.cntr;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cdac.dto.Car;
import com.cdac.dto.User;
import com.cdac.service.UserService;




@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MailSender mailSender;
	
	
	
	//registration form
	@RequestMapping(value = "/prep_reg_form.htm",method = RequestMethod.GET)
	public String prepRegForm(User user,ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		
		map.put("user", new User());
		return "reg";
		
	}
	
	
	
	//register page if success reg success shows
	@RequestMapping(value = "/reg.htm",method = RequestMethod.POST)
	public String register(User user,BindingResult result,ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		
			userService.addUser(user);
			return "regSuccess";	
		}
	
	
	//home check session exist or not
	@RequestMapping(value = "/session_form.htm",method = RequestMethod.GET)
	public String sessionForm(ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		UserController.protectRoute(session,response);
		
		return "home";
	}
	
	//login check go to session form
	@RequestMapping(value = "/login.htm",method = RequestMethod.POST)
	public String login(User user,BindingResult result,ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		
	
		boolean b = userService.findUser(user);
		if(b) {
			session.setAttribute("user", user);
			return "redirect: session_form.htm";
		}else {
			String msa = "Wrong Credential!!!!!";
			map.put("msg",msa);

			return "login_form";
		}
	}
	
	//go to login form 
	@RequestMapping(value = "/prep_log_form.htm",method = RequestMethod.GET)
	public String prepLogForm(ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		
		map.put("user", new User());
		return "login_form";
	}
	
	
	
	//upload profile pic
	@RequestMapping(value = "/upload_file.htm", method = RequestMethod.POST)
	public String uploadFile(@RequestParam("file") MultipartFile file,HttpSession session,HttpServletRequest request,ModelMap map,HttpServletResponse response) throws IOException {
		UserController.protectRoute(session,response);
		String fileName = "0";

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				
				fileName = file.getOriginalFilename();
				fileName = fileName.substring(fileName.lastIndexOf("."));
				
				User user = (User)session.getAttribute("user");
				
				fileName = (1+user.getUserId())+fileName;
				
				

				// Creating the directory to store file
				String rootPath = request.getServletContext().getRealPath("/");
				File dir = new File(rootPath + File.separator + "images");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				
				
				String filePath = dir.getAbsolutePath()+ File.separator +fileName;
				
				System.out.println("Server File Location= "+ filePath );
				
				File serverFile = new File(filePath);
				
						
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				
				userService.uploadImage(fileName, user.getUserId());
				
				user.setProfilePic(fileName);
				

			} catch (Exception e) {
				e.printStackTrace();
			}
		}	
		
		return "home";
	}

	//forgot password
	@RequestMapping(value = "/forgot_password.htm",method = RequestMethod.POST)
	public String forgotPassword(@RequestParam String Email,ModelMap map) {		
		String pass = userService.forgotPassword(Email);
		String msg = "you are not registered";
		if(pass!=null) {	
			
			SimpleMailMessage message = new SimpleMailMessage();  
	        message.setFrom("anjalisonawane.24@gmail.com");  
	        message.setTo(Email);  
	        message.setSubject("pass");  
	        message.setText(pass);  
	        //sending message   
	        mailSender.send(message);
			msg = "check the mail for password";
		}
		map.put("msg", msg);
		return "info";
	}
	
	
	
	//invalidate session go to index.jsp
	@RequestMapping(value = "/user_logout.htm",method = RequestMethod.GET)
	public String userLogout(ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
	
		session.invalidate();
		return "index";
	}
	

	
	//check user object is null or not if null go to index.jsp
	static void protectRoute(HttpSession session,HttpServletResponse response) throws IOException
	{
		User user=(User)session.getAttribute("user");
		if(user == null) {
			response.sendRedirect("./");
		}
	}

}
