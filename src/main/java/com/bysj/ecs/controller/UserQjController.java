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

import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserQj;

import com.bysj.ecs.service.UserQjService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserQjController {

	 private UserQjService userQjService;
		
		@Resource(name="userQjService")
		public void setUserQjService(UserQjService userQjService) {
			this.userQjService = userQjService;
		}
		
		//添加差旅报销
		@RequestMapping("addQj")
		@ResponseBody
		public ModelAndView addQj(@RequestParam(value="file")MultipartFile file, UserQj userQj, ModelMap map,HttpSession session)
		{  String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		   userQj.setQj_tjtime(Timestamp.valueOf(nowTime));
			session.setAttribute("qj_sqr",userQj.getQj_sqr());
			userQj.setQj_delete("未删");
			System.out.println(file.getOriginalFilename());
				String msg="1";
				try {
					String filePath = "E:\\upload";

					if(file !=null && ! file.isEmpty())
					{
						System.out.println("555");
					}else
					{
						System.out.println(userQj.getQj_fj()+"566");
					}
					System.out.println(userQj.getQj_fj()+"1");
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
					userQj.setQj_fj(newFpName);
				    userQjService.addQj(userQj);
					msg="0";
				} catch (Exception e) {
					e.printStackTrace();
				}
				ModelAndView mv=new ModelAndView("redirect:/selectQj.action");
				return mv;
	   }
		
		//查询本人的申请单
		@RequestMapping("selectQj")
		public ModelAndView selectQj(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
			PageHelper.startPage(page, 4);
			System.out.println("selectQj");
			String qj_delete="未删";
			System.out.println(session.getAttribute("user_name"));
			ModelAndView mv = null;
			String qj_sqr=(String) session.getAttribute("user_name");
			try
			{
				mv = new ModelAndView("staff_committed_qj");
				ArrayList<UserQj> userQj = userQjService.selectQj(qj_sqr,qj_delete);
				PageInfo<UserQj> p=new PageInfo<UserQj>(userQj);  
		        model.addAttribute("page", p);  
		        model.addAttribute("userQj",userQj); 
				mv.addObject("data_qj", userQj);
				mv.setViewName("staff_committed_qj");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mv;
		}
		
		//删除本条差旅报销-未真正删除
		@RequestMapping("deleteQj")
		@ResponseBody
		public String deleteQj(int qj_id,UserQj userQj) {
			String msg="1";
			System.out.println("hahaha");
			try {
				userQj.setQj_id(qj_id);
				userQj.setQj_delete("已删");
				userQjService.updateQjDelete(userQj);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
		
		//删除本条差旅报销-真正删除
				@RequestMapping("deletedQj")
				@ResponseBody
				public String deletedQj(int qj_id) {
					String msg="1";
					System.out.println("hahaha");
					try {
						userQjService.deleteQj(qj_id);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
		
		
		//修改请假
		@RequestMapping("updateQj")
		@ResponseBody
		public ModelAndView updateQj(@RequestParam(value="file")MultipartFile file, UserQj userQj, ModelMap map,HttpSession session) {
			userQj.setQj_state("未审批");
			userQj.setQj_advice(" ");
			String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			userQj.setQj_tjtime(Timestamp.valueOf(nowTime));
			String msg="1";
			try {
				String filePath = "E:\\upload";

				if(file !=null && ! file.isEmpty())
				{
					System.out.println("555");
				}else
				{
					System.out.println(userQj.getQj_fj()+"566");
				}
				System.out.println(userQj.getQj_fj()+"1");
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
				userQj.setQj_fj(newFpName);
				userQjService.updateQj(userQj);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			ModelAndView mv=new ModelAndView("redirect:/selectQj.action");
			return mv;
		}


		//查询某条差旅报销
		@RequestMapping("editQj")
		@ResponseBody
		public UserQj editQj(Integer qj_id) {
			System.out.println("我是请假！");
			UserQj userQj=userQjService.selectoneQj(qj_id);
			
			return userQj;
		}
		
		public UserQj selectoneQj(int qj_id,HttpSession session){
			UserQj userQj = null;
			ModelAndView mv = null;
			try
			{
				System.out.println("我是测验的");
				mv = new ModelAndView();
				userQj = userQjService.selectoneQj(qj_id);
			    mv.addObject("userQj", userQj);
				return userQj;
			} catch (Exception e) 
			{
				e.printStackTrace();
			}
			return userQj;
		}
		
		//审批-请假-同意
		@RequestMapping("agreeQj")
		@ResponseBody
		public String agreeQj(UserQj userQj) {
			userQj.setQj_state("同意");
			String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			   userQj.setQj_sptime(Timestamp.valueOf(nowTime));
			String msg="1";
			try {
				userQjService.agreeQj(userQj);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
		
		//审批-请假-退回
			@RequestMapping("returnQj")
			@ResponseBody
			public String returnQj(UserQj userQj) {
				userQj.setQj_state("退回");
				String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
				userQj.setQj_sptime(Timestamp.valueOf(nowTime));
				String msg="1";
				try {
					userQjService.returnQj(userQj);
					msg="0";
				} catch (Exception e) {
					e.printStackTrace();
				}
				return msg;
			}
		
			//查询本人的申请单
			@RequestMapping("selectNotDeleteQj")
			public ModelAndView selectNotDeleteQj(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
				PageHelper.startPage(page, 4);
				System.out.println("selectQj");
				String qj_delete="已删";
				System.out.println(session.getAttribute("user_name"));
				ModelAndView mv = null;
				String qj_sqr=(String) session.getAttribute("user_name");
				try
				{
					mv = new ModelAndView("staff_delete_qj");
					ArrayList<UserQj> userQj = userQjService.selectNotDeleteQj(qj_sqr, qj_delete);
					PageInfo<UserQj> p=new PageInfo<UserQj>(userQj);  
			        model.addAttribute("page", p);  
			        model.addAttribute("userQj",userQj); 
					mv.addObject("data_qj", userQj);
					mv.setViewName("staff_delete_qj");
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				return mv;
			}
}
