package com.bysj.ecs.controller;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.service.UserCcsqService;
import com.bysj.ecs.service.UserClbxService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserCcsqController {

	 private UserCcsqService userCcsqService;
		
		@Resource(name="userCcsqService")
		public void setUserCcsqService(UserCcsqService userCcsqService) {
			this.userCcsqService = userCcsqService;
		}
		
		//添加出差申请
		@RequestMapping("addCcsq")
		@ResponseBody
		public ModelAndView addCcsq(UserCcsq userCcsq,HttpSession session)
		{ 
			String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			userCcsq.setCcsq_tjtime(Timestamp.valueOf(nowTime));
			userCcsq.setCcsq_delete("未删");
            userCcsqService.addCcsq(userCcsq);
		    ModelAndView mv=new ModelAndView("redirect:/selectCcsq.action");
			return mv;
	   }
		
		//查询本人的出差申请
		@RequestMapping("selectCcsq")
		public ModelAndView selectCcsq(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
			PageHelper.startPage(page, 4);
			ModelAndView mv = null;
			String ccsq_delete="未删";
			String ccsq_sqr=(String) session.getAttribute("user_name");
			try
			{
				mv = new ModelAndView("staff_committed_ccsq");
				ArrayList<UserCcsq> userCcsq = userCcsqService.selectCcsq(ccsq_sqr,ccsq_delete);
		
				PageInfo<UserCcsq> p=new PageInfo<UserCcsq>(userCcsq);  
		        model.addAttribute("page", p);  
		        model.addAttribute("userCcsq",userCcsq);  
				mv.addObject("data_ccsq", userCcsq);
				mv.setViewName("staff_committed_ccsq");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mv;
		}
		
		//删除本条差旅报销-未真正删除
		@RequestMapping("deleteCcsq")
		@ResponseBody
		public String deleteCcsq(int ccsq_id,UserCcsq userCcsq) {
			String msg="1";
			System.out.println("hahaha");
			try {
				userCcsq.setCcsq_id(ccsq_id);
				userCcsq.setCcsq_delete("已删");
				userCcsqService.updateCcsqDelete(userCcsq);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
		
		//删除本条差旅报销-真正删除
				@RequestMapping("deletedCcsq")
				@ResponseBody
				public String deletedCcsq(int ccsq_id) {
					String msg="1";
					System.out.println("hahaha");
					try {
						
						userCcsqService.deleteCcsq(ccsq_id);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
		
		
		//修改出差申请
		@RequestMapping("updateCcsq")
		@ResponseBody
		public ModelAndView updateCcsq(UserCcsq userCcsq) {
			String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			userCcsq.setCcsq_tjtime(Timestamp.valueOf(nowTime));
			userCcsq.setCcsq_state("未审批");
			userCcsq.setCcsq_advice(" ");
			String msg="1";
				userCcsqService.updateCcsq(userCcsq);
				msg="0";
			
			
			ModelAndView mv=new ModelAndView("redirect:/selectCcsq.action");
			return mv;
		}

		
		
		//修改某条出差申请
		@RequestMapping("editCcsq")
		@ResponseBody
		public UserCcsq editCcsq(Integer ccsq_id) {
			UserCcsq userCcsq=userCcsqService.selectoneCcsq(ccsq_id);
			System.out.println(userCcsq.getCcsq_cfd_city()+"2");
			return userCcsq;
		}
		
		//查询某条出差申请
		public UserCcsq selectoneCcsq(int ccsq_id,HttpSession session){
			UserCcsq userCcsq = null;
			ModelAndView mv = null;
			try
			{
				System.out.println("我是测验的");
				mv = new ModelAndView();
				userCcsq= userCcsqService.selectoneCcsq(ccsq_id);
				System.out.println(userCcsq.getCcsq_cfd_city()+"1");
			    mv.addObject("userCcsq", userCcsq);
				return userCcsq;
			} catch (Exception e) 
			{
				e.printStackTrace();
			}
			return userCcsq;
		}
		
		//审批-出差申请-同意
		@RequestMapping("agreeCcsq")
		@ResponseBody
		public String agreeCcsq(UserCcsq userCcsq) {
			userCcsq.setCcsq_state("同意");
			String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			userCcsq.setCcsq_sptime(Timestamp.valueOf(nowTime));
			String msg="1";
			try {
				userCcsqService.agreeCcsq(userCcsq);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
		
		//审批-出差申请-退回
			@RequestMapping("returnCcsq")
			@ResponseBody
			public String returnCcsq(UserCcsq userCcsq) {
				userCcsq.setCcsq_state("退回");
				String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
				userCcsq.setCcsq_sptime(Timestamp.valueOf(nowTime));
				String msg="1";
				try {
					userCcsqService.returnCcsq(userCcsq);
					msg="0";
				} catch (Exception e) {
					e.printStackTrace();
				}
				return msg;
			}
		
			//查询本人的出差申请
			@RequestMapping("selectNotDeleteCcsq")
			public ModelAndView selectNotDeleteCcsq(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
				PageHelper.startPage(page, 4);
				ModelAndView mv = null;
				String ccsq_delete="已删";
				String ccsq_sqr=(String) session.getAttribute("user_name");
				try
				{
					mv = new ModelAndView("staff_delete_ccsq");
					ArrayList<UserCcsq> userCcsq = userCcsqService.selectNotDeleteCcsq(ccsq_sqr, ccsq_delete);
			
					PageInfo<UserCcsq> p=new PageInfo<UserCcsq>(userCcsq);  
			        model.addAttribute("page", p);  
			        model.addAttribute("userCcsq",userCcsq);  
					mv.addObject("data_ccsq", userCcsq);
					mv.setViewName("staff_delete_ccsq");
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				return mv;
			}
			

}
