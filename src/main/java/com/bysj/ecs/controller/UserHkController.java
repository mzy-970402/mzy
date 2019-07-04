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
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.service.UserHkService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserHkController {

   private UserHkService userHkService;
	
	@Resource(name="userHkService")
	public void setUserHkService(UserHkService userHkService) {
		this.userHkService = userHkService;
	}
	
	//添加还款
	@RequestMapping("addHk")
	@ResponseBody
	public ModelAndView addHk(@RequestParam(value="file")MultipartFile file, UserHk userHk, ModelMap map,HttpSession session)
	{   
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		userHk.setHk_tjtime(Timestamp.valueOf(nowTime));
		userHk.setHk_delete("未删");
		userHk.setHk_state("未审批");
		session.setAttribute("hk_hkr",userHk.getHk_hkr());
		System.out.println(file.getOriginalFilename());
			try {
				String filePath = "E:\\upload";

				if(file !=null && ! file.isEmpty())
				{
					System.out.println("555");
				}else
				{
					System.out.println(userHk.getHk_fj()+"566");
				}
				System.out.println(userHk.getHk_fj()+"1");
				// 获取原始图片的扩展名
				String originalFilename = file.getOriginalFilename();
				// 生成文件新的名字
				String newFpName = UUID.randomUUID() + originalFilename;
				// 封装上传文件位置的全路径
				File targetFile = new File(filePath, newFpName);
				try {
					file.transferTo(targetFile);
					
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}	
				
				// 保存到数据库
				userHk.setHk_fj(newFpName);
			    userHkService.addHk(userHk);
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			ModelAndView mv=new ModelAndView("redirect:/selectHk.action");
			return mv;
   }
	
	//查询本人的还款
	@RequestMapping("selectHk")
	public ModelAndView selectHk(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
		PageHelper.startPage(page, 4);
		System.out.println(session.getAttribute("user_name"));
		ModelAndView mv = null;
		String hk_delete="未删";
		String hk_hkr=(String) session.getAttribute("user_name");
		try
		{
			mv = new ModelAndView("staff_committed_hk");
			ArrayList<UserHk> userHk = userHkService.selectHk(hk_hkr,hk_delete);
			PageInfo<UserHk> p=new PageInfo<UserHk>(userHk);  
	        model.addAttribute("page", p);  
	        model.addAttribute("user_hk",userHk);  
			mv.addObject("data_hk", userHk);
			mv.setViewName("staff_committed_hk");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	//删除本条还款 -未真正删除
	@RequestMapping("deleteHk")
	@ResponseBody
	public String deleteHk(int hk_id,UserHk userHk) {
		String msg="1";
		try {
			userHk.setHk_id(hk_id);
			userHk.setHk_delete("已删");
			userHkService.updateHkDelete(userHk);
			msg="0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	//删除本条还款 -真正删除
		@RequestMapping("deletedHk")
		@ResponseBody
		public String deletedHk(int hk_id) {
			String msg="1";
			try {
				userHkService.deleteHk(hk_id);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
	
	
	//修改还款
	@RequestMapping("updateHk")
	@ResponseBody
	public ModelAndView updateHk(@RequestParam(value="file")MultipartFile file, UserHk userHk, ModelMap map,HttpSession session) {
		userHk.setHk_state("未审批");
		userHk.setHk_advice(" ");
		String msg="1";
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		userHk.setHk_tjtime(Timestamp.valueOf(nowTime));
		try {
			String filePath = "E:\\upload";

			if(file !=null && ! file.isEmpty())
			{
				System.out.println("555");
			}else
			{
				System.out.println(userHk.getHk_fj()+"566");
			}
			System.out.println(userHk.getHk_fj()+"1");
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
			userHk.setHk_fj(newFpName);
			userHkService.updateHk(userHk);
			msg="0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		ModelAndView mv=new ModelAndView("redirect:/selectHk.action");
		return mv;
	}


	//查询某条还款
	@RequestMapping("editHk")
	@ResponseBody
	public UserHk editHk(Integer hk_id) {
		UserHk userHk=userHkService.selectoneHk(hk_id);
		return userHk;
	}
	
	public UserHk selectoneHk(int hk_id,HttpSession session){
		UserHk userHk = null;
		ModelAndView mv = null;
		try
		{
			System.out.println("我是测验的");
			mv = new ModelAndView();
			userHk = userHkService.selectoneHk(hk_id);
		    mv.addObject("userHk", userHk);
			return userHk;
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return userHk;
	}
	
	//审批-还款-同意
	@RequestMapping("agreeHk")
	@ResponseBody
	public String agreeHk(UserHk userHk) {
		userHk.setHk_state("同意");
		String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		userHk.setHk_sptime(Timestamp.valueOf(nowTime));
		String msg="1";
		try {
			userHkService.agreeHk(userHk);
			msg="0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	//审批-还款-退回
		@RequestMapping("returnHk")
		@ResponseBody
		public String returnHk(UserHk userHk) {
			userHk.setHk_state("退回");
			String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			userHk.setHk_sptime(Timestamp.valueOf(nowTime));
			String msg="1";
			try {
				userHkService.returnHk(userHk);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
	
		//查询本人的还款
		@RequestMapping("selectNotDeleteHk")
		public ModelAndView selectNotDeleteHk(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
			PageHelper.startPage(page, 4);
			System.out.println(session.getAttribute("user_name"));
			ModelAndView mv = null;
			String hk_delete="已删";
			String hk_hkr=(String) session.getAttribute("user_name");
			try
			{
				mv = new ModelAndView("staff_delete_hk");
				ArrayList<UserHk> userHk = userHkService.selectNotDeleteHk(hk_hkr, hk_delete);
				PageInfo<UserHk> p=new PageInfo<UserHk>(userHk);  
		        model.addAttribute("page", p);  
		        model.addAttribute("user_hk",userHk);  
				mv.addObject("data_hk", userHk);
				mv.setViewName("staff_delete_hk");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mv;
		}
		
}
