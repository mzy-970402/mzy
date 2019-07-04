package com.bysj.ecs.controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.ecs.pojo.Department;
import com.bysj.ecs.pojo.Position;
import com.bysj.ecs.pojo.User;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserInfo;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

@Controller
public class UserController {
    private UserService userService;
	
	@Resource(name="userService")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
    
	@RequestMapping("showUsers")
	public ModelAndView showUsers(){
		ModelAndView mv = null;
		try
		{
		mv=new ModelAndView("show");//show前面会自动加前缀和后缀 spring-mvc.xml中
		ArrayList<UserInfo> users=userService.getAllUsers();
		mv.addObject("data", users);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return mv;
		
	}
	
	@RequestMapping("removeUsers")
	public ModelAndView removeUsers(int id){
		ModelAndView mv=new ModelAndView("error");
		try
		{
		if(userService.removeUser(id))
		{
			return showUsers();
		}
		else
		{
			return mv;
		}
		}catch(Exception e)
		{
			e.printStackTrace();
			return mv;
		}
		
	}
	
	//添加用户
	@RequestMapping("add")
	public String add(String user_name,String user_psw,User user,Model model,HttpSession session)
	{
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		user.setUser_time(Timestamp.valueOf(nowTime));
		user.setUser_type_id(2);
		user.setUser_position("普通员工");
		userService.addUser(user);
		
		 userService.login(user_name, user_psw);
	   
		model.addAttribute("msg", "注册成功");
		return "login";
	}
	
	//用户登录
	@RequestMapping(value="/login")
    public ModelAndView login(String user_name,String user_psw,ModelAndView mv,HttpSession session)
	{
        User user=userService.login(user_name, user_psw);
        String user_name1=user.getUser_name();
        String user_psw1=user.getUser_psw();
        session.setAttribute("user_name",user_name1);
        session.setAttribute("user_id",user.getUser_id());
        if(user!=null){
        	if(user.getUser_type_id()==1)
        	{
        		session.setAttribute("user_name",user_name);
        		mv=new ModelAndView("redirect:/selectSum.action.action");
        	}else if(user.getUser_type_id()==2)
        	{
        		session.setAttribute("user_name",user_name);
        		mv.setViewName("staff_txsqd");
        	}else
        	{
        		 mv.addObject("message","登录名和密码错误，请重新输入");
                 mv.setViewName("login");
        	}
        }
        return mv;
	}   
	
	//查询用户基本信息
	@RequestMapping("selectUserMessage")
	public ModelAndView selectUserMessage(HttpSession session){
		User user  = null;
		int user_id=(Integer) session.getAttribute("user_id");
		ModelAndView mv = null;
		try
		{
			mv = new ModelAndView();
			user=userService.selectUserMessage(user_id);
			session.setAttribute("user_message_sex",user.getUser_sex());
            session.setAttribute("user_message_phone",user.getUser_phone());
           
            session.setAttribute("user_message_birthday",user.getUser_birthday());
            session.setAttribute("user_message_number",user.getUser_number());
            session.setAttribute("user_message_department",user.getUser_department());
            session.setAttribute("user_message_position",user.getUser_position());
            session.setAttribute("user_message_card",user.getUser_card());
            session.setAttribute("user_message_address",user.getUser_address());
            session.setAttribute("user_message_age",user.getUser_age());
            session.setAttribute("user_message_image",user.getUser_image());
           
		    mv.addObject("userMessage", user);
            mv.setViewName("staff_message");
			return mv;
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return mv;
	}
	
	
	//修改个人信息
	@RequestMapping("updateUserMessage")
	@ResponseBody
	public ModelAndView updateUserMessage(@RequestParam(value="file")MultipartFile file, User user, ModelMap map,HttpSession session) {
		
		String msg="1";
		try {
			String filePath = "E:\\upload";
			// 获取原始图片的扩展名
			String originalFilename = file.getOriginalFilename();
			// 生成文件新的名字
			String newFpName = UUID.randomUUID() + originalFilename;
			// 封装上传文件位置的全路径
			File targetFile = new File(filePath, newFpName);
			try {
				file.transferTo(targetFile);
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			
			// 保存到数据库
			user.setUser_image(newFpName);
			userService.updateUserMessage(user);
			msg="0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		ModelAndView mv=new ModelAndView("redirect:/selectUserMessage.action");
		return mv;
	}


	//查询用户基本信息
	@RequestMapping("editUserMessage")
	@ResponseBody
	public User editUserMessage(Integer user_id) {
		User user=userService.selectUserMessage(user_id);
		
		return user;
	}
	
	
	//修改密码
	@RequestMapping("updateUserPsw")
	@ResponseBody
	public ModelAndView updateUserPsw(User user,HttpSession session) {
		String msg="1";
		userService.updateUserPsw(user);
		msg="0";
	
	
	ModelAndView mv=new ModelAndView("redirect:/login.jsp");
	return mv;
	}
	
	//查询拥有审批功能的用户
	@RequestMapping("selectApproveClbxUser")
		public ModelAndView selectApproveClbxUser(HttpSession session,Model model){
			String user_name=(String)session.getAttribute("user_name");
			ModelAndView mv = null;
			try
			{
				mv = new ModelAndView("staff_clbx");
				ArrayList<User> userApprove = userService.selectApproveUser("普通员工",user_name);
				model.addAttribute("userApprove", userApprove);
		        mv.addObject("userApprove", userApprove);
				mv.setViewName("staff_clbx");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mv;
		}
	
	//查询拥有审批功能的用户
		@RequestMapping("selectApproveRcbxUser")
			public ModelAndView selectApproveRcbxUser(HttpSession session,Model model){
				String user_name=(String)session.getAttribute("user_name");
				ModelAndView mv = null;
				try
				{
					mv = new ModelAndView("staff_rcbx");
					ArrayList<User> userApprove = userService.selectApproveUser("普通员工",user_name);
					model.addAttribute("userApprove", userApprove);
			        mv.addObject("userApprove", userApprove);
					mv.setViewName("staff_rcbx");
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				return mv;
			}
		
		//查询拥有审批功能的用户
				@RequestMapping("selectApproveCcsqUser")
					public ModelAndView selectApproveCcsqUser(HttpSession session,Model model){
						String user_name=(String)session.getAttribute("user_name");
						ModelAndView mv = null;
						try
						{
							mv = new ModelAndView("staff_ccsq");
							ArrayList<User> userApprove = userService.selectApproveUser("普通员工",user_name);
							model.addAttribute("userApprove", userApprove);
					        mv.addObject("userApprove", userApprove);
							mv.setViewName("staff_ccsq");
							
						} catch (Exception e) {
							e.printStackTrace();
						}
						return mv;
					}
		
				//查询拥有审批功能的用户
				@RequestMapping("selectApproveJkUser")
					public ModelAndView selectApproveJkUser(HttpSession session,Model model){
						String user_name=(String)session.getAttribute("user_name");
						ModelAndView mv = null;
						try
						{
							mv = new ModelAndView("staff_jk");
							ArrayList<User> userApprove = userService.selectApproveUser("普通员工",user_name);
							model.addAttribute("userApprove", userApprove);
					        mv.addObject("userApprove", userApprove);
							mv.setViewName("staff_jk");
							
						} catch (Exception e) {
							e.printStackTrace();
						}
						return mv;
					}
				
				//查询拥有审批功能的用户
				@RequestMapping("selectApproveHkUser")
					public ModelAndView selectApproveHkUser(HttpSession session,Model model){
						String user_name=(String)session.getAttribute("user_name");
						ModelAndView mv = null;
						try
						{
							mv = new ModelAndView("staff_hk");
							ArrayList<User> userApprove = userService.selectApproveUser("普通员工",user_name);
							model.addAttribute("userApprove", userApprove);
					        mv.addObject("userApprove", userApprove);
							mv.setViewName("staff_hk");
							
						} catch (Exception e) {
							e.printStackTrace();
						}
						return mv;
					}
				
				//查询拥有审批功能的用户
				@RequestMapping("selectApproveQjUser")
					public ModelAndView selectApproveQjUser(HttpSession session,Model model){
						String user_name=(String)session.getAttribute("user_name");
						ModelAndView mv = null;
						try
						{
							mv = new ModelAndView("staff_qj");
							ArrayList<User> userApprove = userService.selectApproveUser("普通员工",user_name);
							model.addAttribute("userApprove", userApprove);
					        mv.addObject("userApprove", userApprove);
							mv.setViewName("staff_qj");
							
						} catch (Exception e) {
							e.printStackTrace();
						}
						return mv;
					}
				
}
