package com.bysj.ecs.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.service.UserJkService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserJkController 
{
	private UserJkService userJkService;
	
	@Resource(name="userJkService")
	public void setUserJkService(UserJkService userJkService) {
		this.userJkService = userJkService;
	}
	
	//添加借款
	@RequestMapping("addJk")
	@ResponseBody
	public ModelAndView addJk(UserJk userJk,HttpSession session)
	{ 
		userJk.setJk_state("未审批");
		userJk.setJk_delete("未删");
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		userJk.setJk_tjtime(Timestamp.valueOf(nowTime));
        userJkService.addJk(userJk);
	    ModelAndView mv=new ModelAndView("redirect:/selectJk.action");
		return mv;
   }
	
	//查询本人的借款
	@RequestMapping("selectJk")
	public ModelAndView selectJk(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
		PageHelper.startPage(page, 4);
		ModelAndView mv = null;
		String jk_delete="未删";
		String jk_jkr=(String) session.getAttribute("user_name");
		try
		{
			mv = new ModelAndView("staff_committed_jk");
			ArrayList<UserJk> userJk = userJkService.selectJk(jk_jkr,jk_delete);
			PageInfo<UserJk> p=new PageInfo<UserJk>(userJk);  
	        model.addAttribute("page", p);  
	        model.addAttribute("userJk",userJk); 
			mv.addObject("data_jk", userJk);
			mv.setViewName("staff_committed_jk");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	//删除本条借款-未真正删除
	@RequestMapping("deleteJk")
	@ResponseBody
	public String deleteJk(int jk_id,UserJk userJk) {
		String msg="1";
		System.out.println("hahaha");
		try {
			userJk.setJk_id(jk_id);
			userJk.setJk_delete("已删");
			userJkService.updateJkDelete(userJk);
			msg="0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	//删除本条借款-真正删除
		@RequestMapping("deletedJk")
		@ResponseBody
		public String deletedJk(int jk_id) {
			String msg="1";
			System.out.println("hahaha");
			try {
				userJkService.deleteJk(jk_id);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
	
	
	
	
	//修改借款
			@RequestMapping("updateJk")
			@ResponseBody
			public ModelAndView updateJk(UserJk userJk) {
				String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
				userJk.setJk_tjtime(Timestamp.valueOf(nowTime));
				System.out.println(userJk);
				userJk.setJk_state("未审批");
				userJk.setJk_advice(" ");
				String msg="1";
					userJkService.updateJk(userJk);
					msg="0";
				
				
				ModelAndView mv=new ModelAndView("redirect:/selectJk.action");
				return mv;
			}

			
			
			//修改某条出差申请
			@RequestMapping("editJk")
			@ResponseBody
			public UserJk editJk(Integer jk_id) {
				UserJk userJk=userJkService.selectoneJk(jk_id);
				
				return userJk;
			}
			
			//查询某条出差申请
			public UserJk selectoneJk(int jk_id,HttpSession session){
				UserJk userJk = null;
				ModelAndView mv = null;
				try
				{
					System.out.println("我是测验的");
					mv = new ModelAndView();
					userJk= userJkService.selectoneJk(jk_id);
				    mv.addObject("userJk", userJk);
					return userJk;
				} catch (Exception e) 
				{
					e.printStackTrace();
				}
				return userJk;
			}
			
	
			//审批-借款-同意
			@RequestMapping("agreeJk")
			@ResponseBody
			public String agreeJk(UserJk userJk) {
				userJk.setJk_state("同意");
				String msg="1";
				try {
					String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
					userJk.setJk_sptime(Timestamp.valueOf(nowTime));
					userJkService.agreeJk(userJk);
				
					msg="0";
				} catch (Exception e) {
					e.printStackTrace();
				}
				return msg;
			}
			
			//审批-借款-退回
				@RequestMapping("returnJk")
				@ResponseBody
				public String returnJk(UserJk userJk) {
					userJk.setJk_state("退回");
					String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
					userJk.setJk_sptime(Timestamp.valueOf(nowTime));
					String msg="1";
					try {
						userJkService.returnJk(userJk);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
			
	
				//查询本人的借款
				@RequestMapping("selectNotDeleteJk")
				public ModelAndView selectNotDeleteJk(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
					PageHelper.startPage(page, 4);
					ModelAndView mv = null;
					String jk_delete="已删";
					String jk_jkr=(String) session.getAttribute("user_name");
					try
					{
						mv = new ModelAndView("staff_delete_jk");
						ArrayList<UserJk> userJk = userJkService.selectNotDeleteJk(jk_jkr, jk_delete);
						PageInfo<UserJk> p=new PageInfo<UserJk>(userJk);  
				        model.addAttribute("page", p);  
				        model.addAttribute("userJk",userJk); 
						mv.addObject("data_jk", userJk);
						mv.setViewName("staff_delete_jk");
						
					} catch (Exception e) {
						e.printStackTrace();
					}
					return mv;
				}

}
