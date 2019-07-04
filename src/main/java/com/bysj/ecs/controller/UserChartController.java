package com.bysj.ecs.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.service.UserChartService;
import com.bysj.ecs.service.UserClbxService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserChartController {

	 private UserChartService userChartService;
		
		@Resource(name="userChartService")
		public void setUserChartService(UserChartService userChartService) {
			this.userChartService = userChartService;
		}
		
		
		//查询总额
		@RequestMapping("showPieChart")
		public ModelAndView showPieChart(String user_name,HttpSession session,Model model){
			ModelAndView mv = null;
			String sqr=(String) session.getAttribute("user_name");
			try
			{
				mv = new ModelAndView("staff_show_piechart");
				int clbx_sum=userChartService.selectClbxSum(sqr);
				int rcbx_sum=userChartService.selectRcbxSum(sqr);
				int ccsq_sum=userChartService.selectCcsqSum(sqr);
				int jk_sum=userChartService.selectJkSum(sqr);
				int hk_sum=userChartService.selectHkSum(sqr);
				
				session.setAttribute("clbx_sum",clbx_sum);
				session.setAttribute("rcbx_sum",rcbx_sum);
				session.setAttribute("ccsq_sum",ccsq_sum);
				session.setAttribute("jk_sum",jk_sum);
				session.setAttribute("hk_sum",hk_sum);
				
				mv.setViewName("staff_show_piechart");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mv;
		}
}
