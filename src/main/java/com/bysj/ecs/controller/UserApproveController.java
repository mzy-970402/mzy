package com.bysj.ecs.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.pojo.UserRcbx;
import com.bysj.ecs.service.UserApproveService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserApproveController {

	 private UserApproveService userApproveService;
		
		@Resource(name="userApproveService")
		public void setUserApproveService(UserApproveService userApproveService) {
			this.userApproveService = userApproveService;
		}

		
		//差旅报销-未审批
		@RequestMapping("selectNotApproved")
		public ModelAndView selectNotApproved(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
			
			ModelAndView mv = null;
			try
			{
				String spr=(String) session.getAttribute("user_name");
				String state="未审批";
				mv = new ModelAndView("staff_notapproved");
				String delete="未删";
				//差旅报销
				ArrayList<UserClbx> userClbx = userApproveService.selectClbxNotApproved(spr, state,delete);
		        model.addAttribute("userClbx",userClbx);  
		        mv.addObject("data_clbx", userClbx);
		        //日常报销
				ArrayList<UserRcbx> userRcbx = userApproveService.selectRcbxNotApproved(spr, state,delete);
		        model.addAttribute("userRcbx",userRcbx);  
		        mv.addObject("data_rcbx", userRcbx);
		        //出差申请
				ArrayList<UserCcsq> userCcsq = userApproveService.selectCcsqNotApproved(spr, state,delete);
		        model.addAttribute("userCcsq",userCcsq);  
		        mv.addObject("data_ccsq", userCcsq);
		        //借款
				ArrayList<UserJk> userJk = userApproveService.selectJkNotApproved(spr, state,delete);
		        model.addAttribute("userJk",userJk);  
		        mv.addObject("data_jk", userJk);
		        //还款
				ArrayList<UserHk> userHk = userApproveService.selectHkNotApproved(spr, state,delete);
		        model.addAttribute("userHk",userHk);  
		        mv.addObject("data_hk", userHk);
		        //请假
				ArrayList<UserQj> userQj = userApproveService.selectQjNotApproved(spr, state,delete);
		        model.addAttribute("userQj",userQj);  
		        mv.addObject("data_qj", userQj);
		        
		        
				mv.setViewName("staff_notapproved");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mv;
		}
		
		
		//差旅报销-已审批
		@RequestMapping("selectApproved")
		public ModelAndView selectApproved(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
					
					ModelAndView mv = null;
					try
					{
						String spr=(String) session.getAttribute("user_name");
						String state1="同意";
						String state2="退回";
						mv = new ModelAndView("staff_approved");
						//差旅报销
						ArrayList<UserClbx> userClbx1 = userApproveService.selectClbxApprovedAgree(spr, state1);
						ArrayList<UserClbx> userClbx2 = userApproveService.selectClbxApprovedReturn(spr, state2);
				        model.addAttribute("userClbx1",userClbx1); 
				        model.addAttribute("userClbx2",userClbx2); 
				        mv.addObject("data_clbx1", userClbx1);
				        mv.addObject("data_clbx2", userClbx2);
				        
				      //日常报销
						ArrayList<UserRcbx> userRcbx1 = userApproveService.selectRcbxApprovedAgree(spr, state1);
						ArrayList<UserRcbx> userRcbx2 = userApproveService.selectRcbxApprovedReturn(spr, state2);
				        model.addAttribute("userRcbx1",userRcbx1); 
				        model.addAttribute("userRcbx2",userRcbx2); 
				        mv.addObject("data_rcbx1", userRcbx1);
				        mv.addObject("data_rcbx2", userRcbx2);
				        
				      //出差申请
						ArrayList<UserCcsq> userCcsq1 = userApproveService.selectCcsqApprovedAgree(spr, state1);
						ArrayList<UserCcsq> userCcsq2 = userApproveService.selectCcsqApprovedReturn(spr, state2);
				        model.addAttribute("userCcsq1",userCcsq1); 
				        model.addAttribute("userCcsq2",userCcsq2); 
				        mv.addObject("data_ccsq1", userCcsq1);
				        mv.addObject("data_ccsq2", userCcsq2);
				        
				      //借款
						ArrayList<UserJk> userJk1 = userApproveService.selectJkApprovedAgree(spr, state1);
						ArrayList<UserJk> userJk2 = userApproveService.selectJkApprovedReturn(spr, state2);
				        model.addAttribute("userJk1",userJk1); 
				        model.addAttribute("userJk2",userJk2); 
				        mv.addObject("data_jk1", userJk1);
				        mv.addObject("data_jk2", userJk2);
				        
				      //还款
						ArrayList<UserHk> userHk1 = userApproveService.selectHkApprovedAgree(spr, state1);
						ArrayList<UserHk> userHk2 = userApproveService.selectHkApprovedReturn(spr, state2);
				        model.addAttribute("userHk1",userHk1); 
				        model.addAttribute("userHk2",userHk2); 
				        mv.addObject("data_hk1", userHk1);
				        mv.addObject("data_hk2", userHk2);
				        
				      //请假
						ArrayList<UserQj> userQj1 = userApproveService.selectQjApprovedAgree(spr, state1);
						ArrayList<UserQj> userQj2 = userApproveService.selectQjApprovedReturn(spr, state2);
				        model.addAttribute("userQj1",userQj1); 
				        model.addAttribute("userQj2",userQj2); 
				        mv.addObject("data_qj1", userQj1);
				        mv.addObject("data_qj2", userQj2);
				        
				        
						mv.setViewName("staff_approved");
						
					} catch (Exception e) {
						e.printStackTrace();
					}
					return mv;
				}
				
}
