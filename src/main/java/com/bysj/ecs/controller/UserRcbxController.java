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
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.pojo.UserRcbx;
import com.bysj.ecs.service.UserClbxService;
import com.bysj.ecs.service.impl.UserRcbxServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserRcbxController {

private UserRcbxServiceImpl userRcbxService;
	
	@Resource(name="userRcbxService")
	public void setUserRcbxService(UserRcbxServiceImpl userRcbxService) {
		this.userRcbxService = userRcbxService;
	}
	
	//添加差旅报销
	@RequestMapping("addRcbx")
	@ResponseBody
	public ModelAndView addClbx(@RequestParam(value="file")MultipartFile file, UserRcbx userRcbx, ModelMap map,HttpSession session)
	{   
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		userRcbx.setRcbx_tjtime(Timestamp.valueOf(nowTime));
		userRcbx.setRcbx_delete("未删");
		session.setAttribute("rcbx_sqr",userRcbx.getRcbx_sqr());
		System.out.println(file.getOriginalFilename());
			String msg="1";
			try {
				String filePath = "E:\\upload";

				if(file !=null && ! file.isEmpty())
				{
					System.out.println("555");
				}else
				{
					System.out.println(userRcbx.getRcbx_fp()+"566");
				}
				System.out.println(userRcbx.getRcbx_fp()+"1");
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
				userRcbx.setRcbx_fp(newFpName);
				System.out.println(userRcbx.getRcbx_fp()+"\n");
				System.out.println(userRcbx.getRcbx_bxsy()+"\n");
			    userRcbxService.addRcbx(userRcbx);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			ModelAndView mv=new ModelAndView("redirect:/selectRcbx.action");
			return mv;
   }
	
	//查询本人的申请单
	@RequestMapping("selectRcbx")
	public ModelAndView selectRcbx(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
		System.out.println("selectRcbx");
		System.out.println(session.getAttribute("user_name"));
		String rcbx_delete="未删";
		PageHelper.startPage(page, 4);
		ModelAndView mv = null;
		String rcbx_sqr=(String) session.getAttribute("user_name");
		try
		{
			mv = new ModelAndView("staff_committed_rcbx");
			ArrayList<UserRcbx> userRcbx = userRcbxService.selectRcbx(rcbx_sqr,rcbx_delete);
			PageInfo<UserRcbx> p=new PageInfo<UserRcbx>(userRcbx);  
	        model.addAttribute("page", p);  
	        model.addAttribute("userRcbx",userRcbx);  
			mv.addObject("data_rcbx", userRcbx);
			mv.setViewName("staff_committed_rcbx");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	//删除本条差旅报销-没真正删除
	@RequestMapping("deleteRcbx")
	@ResponseBody
	public String deleteRcbx(int rcbx_id,UserRcbx userRcbx) {
		String msg="1";
		System.out.println("hahaha");
		try {
			userRcbx.setRcbx_id(rcbx_id);
			userRcbx.setRcbx_delete("已删");
			userRcbxService.updateRcbxDelete(userRcbx);
			msg="0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	//删除本条差旅报销-真正删除
		@RequestMapping("deletedRcbx")
		@ResponseBody
		public String deletedRcbx(int rcbx_id) {
			String msg="1";
			System.out.println("hahaha");
			try {
				userRcbxService.deleteRcbx(rcbx_id);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
	
	//修改日常报销
	@RequestMapping("updateRcbx")
	@ResponseBody
	public ModelAndView updateRcbx(@RequestParam(value="file")MultipartFile file, UserRcbx userRcbx, ModelMap map,HttpSession session) {
		userRcbx.setRcbx_state("未审批");
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		userRcbx.setRcbx_tjtime(Timestamp.valueOf(nowTime));
		userRcbx.setRcbx_advice(" ");
		String msg="1";
		try {
			String filePath = "E:\\upload";

			if(file !=null && ! file.isEmpty())
			{
				System.out.println("555");
			}else
			{
				System.out.println(userRcbx.getRcbx_fp()+"566");
			}
			System.out.println(userRcbx.getRcbx_fp()+"1");
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
			userRcbx.setRcbx_fp(newFpName);
			System.out.println(userRcbx.getRcbx_fp()+"\n");
			System.out.println(userRcbx.getRcbx_bxsy()+"\n");
			userRcbxService.updateRcbx(userRcbx);
			msg="0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		ModelAndView mv=new ModelAndView("redirect:/selectRcbx.action");
		return mv;
	}


	//查询某条日常报销
	@RequestMapping("editRcbx")
	@ResponseBody
	public UserRcbx editRcbx(Integer rcbx_id) {
		UserRcbx userRcbx=userRcbxService.selectoneRcbx(rcbx_id);
		
		return userRcbx;
	}
	
	public UserRcbx selectoneRcbx(int rcbx_id,HttpSession session){
		UserRcbx userRcbx = null;
		ModelAndView mv = null;
		try
		{
			System.out.println("我是测验的");
			mv = new ModelAndView();
			userRcbx = userRcbxService.selectoneRcbx(rcbx_id);
		    mv.addObject("userRcbx", userRcbx);
			return userRcbx;
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return userRcbx;
	}
	
	//审批-日常报销-同意
	@RequestMapping("agreeRcbx")
	@ResponseBody
	public String agreeRcbx(UserRcbx userRcbx) {
		userRcbx.setRcbx_state("同意");
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		userRcbx.setRcbx_sptime(Timestamp.valueOf(nowTime));
		String msg="1";
		try {
			userRcbxService.agreeRcbx(userRcbx);
			msg="0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	//审批-日常报销-退回
		@RequestMapping("returnRcbx")
		@ResponseBody
		public String returnRcbx(UserRcbx userRcbx) {
			userRcbx.setRcbx_state("退回");
			String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			userRcbx.setRcbx_sptime(Timestamp.valueOf(nowTime));
			String msg="1";
			try {
				userRcbxService.returnRcbx(userRcbx);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
		
		
		//查找本人rcbx_delete为"已删"
		@RequestMapping("selectNotDeleteRcbx")
		public ModelAndView selectNotDeleteRcbx(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
			System.out.println("selectRcbx");
			System.out.println(session.getAttribute("user_name"));
			String rcbx_delete="已删";
			PageHelper.startPage(page, 4);
			ModelAndView mv = null;
			String rcbx_sqr=(String) session.getAttribute("user_name");
			try
			{
				mv = new ModelAndView("staff_delete_rcbx");
				ArrayList<UserRcbx> userRcbx = userRcbxService.selectNotDeleteRcbx(rcbx_sqr, rcbx_delete);
				PageInfo<UserRcbx> p=new PageInfo<UserRcbx>(userRcbx);  
		        model.addAttribute("page", p);  
		        model.addAttribute("userRcbx",userRcbx);  
				mv.addObject("data_rcbx", userRcbx);
				mv.setViewName("staff_delete_rcbx");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mv;
		}
		

}
