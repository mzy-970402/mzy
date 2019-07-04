package com.bysj.ecs.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
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
import com.bysj.ecs.service.UserClbxService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserClbxController {

   private UserClbxService userClbxService;
	
	@Resource(name="userClbxService")
	public void setUserClbxService(UserClbxService userClbxService) {
		this.userClbxService = userClbxService;
	}
	
	//添加差旅报销
	@RequestMapping("addClbx")
	@ResponseBody
	public ModelAndView addClbx(@RequestParam(value="file")MultipartFile file, UserClbx userClbx, ModelMap map,HttpSession session)
	{   
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		userClbx.setClbx_tjtime(Timestamp.valueOf(nowTime));
		userClbx.setClbx_delete("未删");
		userClbx.setClbx_state("未审批");
		session.setAttribute("clbx_sqr",userClbx.getClbx_sqr());
		System.out.println(file.getOriginalFilename());
			String msg="1";
			try {
				String filePath = "E:\\upload";

				if(file !=null && ! file.isEmpty())
				{
					System.out.println("555");
				}else
				{
					System.out.println(userClbx.getClbx_fp()+"566");
				}
				System.out.println(userClbx.getClbx_fp()+"1");
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
				userClbx.setClbx_fp(newFpName);
				System.out.println(userClbx.getClbx_fp()+"\n");
				System.out.println(userClbx.getClbx_bxsy()+"\n");
			    userClbxService.addClbx(userClbx);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			ModelAndView mv=new ModelAndView("redirect:/selectClbx.action");
			return mv;
   }
	
	//查询本人的差旅报销
	@RequestMapping("selectClbx")
	public ModelAndView selectClbx(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
		PageHelper.startPage(page, 4);
		ModelAndView mv = null;
		String clbx_sqr=(String) session.getAttribute("user_name");
		String clbx_delete="未删";
		try
		{
			mv = new ModelAndView("staff_committed_clbx");
			ArrayList<UserClbx> userClbx = userClbxService.selectClbx(clbx_sqr,clbx_delete);
			PageInfo<UserClbx> p=new PageInfo<UserClbx>(userClbx);  
	        model.addAttribute("page", p);  
	        model.addAttribute("userClbx",userClbx);  
			mv.addObject("data_clbx", userClbx);
			mv.setViewName("staff_committed_clbx");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	//删除本条差旅报销---没真正删除
	@RequestMapping("deleteClbx")
	@ResponseBody
	public String deleteClbx(int clbx_id,UserClbx userClbx) {
		String msg="1";
		System.out.println("hahaha");
		try {
			userClbx.setClbx_id(clbx_id);
			userClbx.setClbx_delete("已删");
			userClbxService.updateClbxDelete(userClbx);
			msg="0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	
	//删除本条差旅报销---真正删除
		@RequestMapping("deletedClbx")
		@ResponseBody
		public String deletedClbx(int clbx_id) {
			String msg="1";
			System.out.println("hahaha");
			try {
				userClbxService.deleteClbx(clbx_id);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
	
	
	//修改差旅报销
	@RequestMapping("updateClbx")
	@ResponseBody
	public ModelAndView updateClbx(@RequestParam(value="file")MultipartFile file, UserClbx userClbx, ModelMap map,HttpSession session){
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		userClbx.setClbx_tjtime(Timestamp.valueOf(nowTime));
		userClbx.setClbx_advice(" ");
		userClbx.setClbx_state("未审批");
		String msg="1";
		try {
			String filePath = "E:\\upload";

			if(file !=null && ! file.isEmpty())
			{
				System.out.println("555");
			}else
			{
				System.out.println(userClbx.getClbx_fp()+"566");
			}
			System.out.println(userClbx.getClbx_fp()+"1");
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
			userClbx.setClbx_fp(newFpName);
			userClbxService.updateClbx(userClbx);
			msg="0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		ModelAndView mv=new ModelAndView("redirect:/selectClbx.action");
		return mv;
	}


	//查询某条差旅报销
	@RequestMapping("editClbx")
	@ResponseBody
	public UserClbx editClbx(Integer clbx_id) {
		System.out.println("我是测验的0000");
		
		UserClbx userClbx=userClbxService.selectoneClbx(clbx_id);
		return userClbx;
	}
	
	public UserClbx selectoneClbx(int clbx_id,HttpSession session){
		UserClbx userClbx = null;
		ModelAndView mv = null;
		try
		{
			System.out.println("我是测验的");
			mv = new ModelAndView();
			userClbx = userClbxService.selectoneClbx(clbx_id);
		    mv.addObject("userClbx", userClbx);
			return userClbx;
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return userClbx;
	}
	
	
	//审批-差旅报销-同意
	@RequestMapping("agreeClbx")
	@ResponseBody
	public String agreeClbx(UserClbx userClbx) {
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		userClbx.setClbx_sptime(Timestamp.valueOf(nowTime));
		userClbx.setClbx_state("同意");
		String msg="1";
		try {
			userClbxService.agreeClbx(userClbx);
			msg="0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	//审批-差旅报销-退回
		@RequestMapping("returnClbx")
		@ResponseBody
		public String returnClbx(UserClbx userClbx) {
			String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			userClbx.setClbx_sptime(Timestamp.valueOf(nowTime));
			userClbx.setClbx_state("退回");
			String msg="1";
			try {
				userClbxService.returnClbx(userClbx);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
		
		//查找本人clbx_delete为"已删"的差旅报销
		@RequestMapping("selectNotDeleteClbx")
		public ModelAndView selectNotDeleteClbx(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
			PageHelper.startPage(page, 4);
			System.out.println("我是selectNotDeleteClbx");
			ModelAndView mv = null;
			String clbx_sqr=(String) session.getAttribute("user_name");
			String clbx_delete="已删";
			try
			{
				mv = new ModelAndView("staff_delete_clbx");
				ArrayList<UserClbx> userClbx = userClbxService.selectNotDeleteClbx(clbx_sqr, clbx_delete);
				PageInfo<UserClbx> p=new PageInfo<UserClbx>(userClbx);  
		        model.addAttribute("page", p);  
		        model.addAttribute("userClbx",userClbx);  
				mv.addObject("data_clbx", userClbx);
				mv.setViewName("staff_delete_clbx");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mv;
		}
		
	

}
