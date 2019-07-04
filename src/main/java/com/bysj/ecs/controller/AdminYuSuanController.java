package com.bysj.ecs.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.ecs.pojo.BudgetType;
import com.bysj.ecs.pojo.Department;
import com.bysj.ecs.pojo.Position;
import com.bysj.ecs.pojo.User;
import com.bysj.ecs.service.AdminService;
import com.bysj.ecs.service.AdminYuSuanService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class AdminYuSuanController {

	 private AdminYuSuanService adminYuSuanService;
		
		@Resource(name="adminYuSuanService")
		public void setAdminYuSuanService(AdminYuSuanService adminYuSuanService) {
			this.adminYuSuanService = adminYuSuanService;
		}
	
		
		//季度,年度
		@RequestMapping("selectSum")
		public ModelAndView selectSum(HttpSession session){
			ModelAndView mv = null;
			try
			{
				mv = new ModelAndView("admin_bulletin_board");
				
				long fjYs = 0;
				long hcYs=0;
				long snjtYs=0;
				long ctqcYs=0;
				long cyYs = 0;
				long zsYs = 0;
				long bgYs = 0;
				long btYs = 0;
				long fzYs = 0;
				long jjYs = 0;
				long sdYs = 0;
				long txYs = 0;
				long zpYs = 0;
				long jkYs = 0;
				
				String fjtb=null;
				String hctb=null;
				String snjttb=null;
				String ctqctb=null;
				String cytb=null;
				String zstb=null;
				String bgtb=null;
				String bttb=null;
				String fztb=null;
				String jjtb=null;
				String sdtb=null;
				String txtb=null;
				String zptb=null;
				String jktb=null;
				
				BudgetType budgetTypeFj=adminYuSuanService.selectBudgetType("交通费-飞机");
				BudgetType budgetTypeHc=adminYuSuanService.selectBudgetType("交通费-火车");
				BudgetType budgetTypeSnjt=adminYuSuanService.selectBudgetType("交通费-市内交通");
				BudgetType budgetTypeCtqc=adminYuSuanService.selectBudgetType("交通费-长途汽车");
				BudgetType budgetTypeCy=adminYuSuanService.selectBudgetType("餐饮");
				BudgetType budgetTypeZs=adminYuSuanService.selectBudgetType("住宿");
				BudgetType budgetTypeBg=adminYuSuanService.selectBudgetType("办公");
				BudgetType budgetTypeBt=adminYuSuanService.selectBudgetType("补贴");
				BudgetType budgetTypeFz=adminYuSuanService.selectBudgetType("房租");
				BudgetType budgetTypeJj=adminYuSuanService.selectBudgetType("交际");
				BudgetType budgetTypeSd=adminYuSuanService.selectBudgetType("水电");
				BudgetType budgetTypeTx=adminYuSuanService.selectBudgetType("通讯");
				BudgetType budgetTypeZp=adminYuSuanService.selectBudgetType("招聘");
				BudgetType budgetTypeJk=adminYuSuanService.selectBudgetType("借款");
				
				
				Calendar cal = Calendar.getInstance();
	            int m = cal.get(Calendar.MONTH) + 1;
                System.out.println("当前月份为"+m); 
                if (m >= 1 && m == 3) 
                {
                	 fjYs=budgetTypeFj.getBudget_type_one();
     				 hcYs=budgetTypeHc.getBudget_type_one();
     				 snjtYs=budgetTypeSnjt.getBudget_type_one();
     				 ctqcYs=budgetTypeCtqc.getBudget_type_one();
     				 cyYs = budgetTypeCy.getBudget_type_one();
     				 zsYs = budgetTypeZs.getBudget_type_one();
     				 bgYs = budgetTypeBg.getBudget_type_one();
     				 btYs = budgetTypeBt.getBudget_type_one();
     				 fzYs = budgetTypeFz.getBudget_type_one();
     				 jjYs = budgetTypeJj.getBudget_type_one();
     				 sdYs = budgetTypeSd.getBudget_type_one();
     				 txYs = budgetTypeSd.getBudget_type_one();
     				 zpYs = budgetTypeZp.getBudget_type_one();
     				 jkYs = budgetTypeJk.getBudget_type_one();
                }else if(m >= 4 && m <= 6)
                {
                	 fjYs=budgetTypeFj.getBudget_type_two();
                	 hcYs=budgetTypeHc.getBudget_type_two();
     				 snjtYs=budgetTypeSnjt.getBudget_type_two();
     				 ctqcYs=budgetTypeCtqc.getBudget_type_two();
     				 cyYs = budgetTypeCy.getBudget_type_two();
     				 zsYs = budgetTypeZs.getBudget_type_two();
     				 bgYs = budgetTypeBg.getBudget_type_two();
     				 btYs = budgetTypeBt.getBudget_type_two();
     				 fzYs = budgetTypeFz.getBudget_type_two();
     				 jjYs = budgetTypeJj.getBudget_type_two();
     				 sdYs = budgetTypeSd.getBudget_type_two();
     				 txYs = budgetTypeSd.getBudget_type_two();
     				 zpYs = budgetTypeZp.getBudget_type_two();
     				 jkYs = budgetTypeJk.getBudget_type_two();
                }else if(m >= 7 && m <= 9)
                {
                	 fjYs=budgetTypeFj.getBudget_type_three();
                	 hcYs=budgetTypeHc.getBudget_type_three();
     				 snjtYs=budgetTypeSnjt.getBudget_type_three();
     				 ctqcYs=budgetTypeCtqc.getBudget_type_three();
     				 cyYs = budgetTypeCy.getBudget_type_three();
     				 zsYs = budgetTypeZs.getBudget_type_three();
     				 bgYs = budgetTypeBg.getBudget_type_three();
     				 btYs = budgetTypeBt.getBudget_type_three();
     				 fzYs = budgetTypeFz.getBudget_type_three();
     				 jjYs = budgetTypeJj.getBudget_type_three();
     				 sdYs = budgetTypeSd.getBudget_type_three();
     				 txYs = budgetTypeSd.getBudget_type_three();
     				 zpYs = budgetTypeZp.getBudget_type_three();
     				 jkYs = budgetTypeJk.getBudget_type_three();
                }else if(m >= 10 && m <= 12)
                {  
                	 fjYs=budgetTypeFj.getBudget_type_four();
                	 hcYs=budgetTypeHc.getBudget_type_four();
     				 snjtYs=budgetTypeSnjt.getBudget_type_four();
     				 ctqcYs=budgetTypeCtqc.getBudget_type_four();
     				 cyYs = budgetTypeCy.getBudget_type_four();
     				 zsYs = budgetTypeZs.getBudget_type_four();
     				 bgYs = budgetTypeBg.getBudget_type_four();
     				 btYs = budgetTypeBt.getBudget_type_four();
     				 fzYs = budgetTypeFz.getBudget_type_four();
     				 jjYs = budgetTypeJj.getBudget_type_four();
     				 sdYs = budgetTypeSd.getBudget_type_four();
     				 txYs = budgetTypeSd.getBudget_type_four();
     				 zpYs = budgetTypeZp.getBudget_type_four();
     				 jkYs = budgetTypeJk.getBudget_type_four();
                }
                
                //飞机
				long fjClbxSum=adminYuSuanService.SelectQuarterClbxSum("飞机");
				long fjRcbxSum=adminYuSuanService.SelectQuarterRcbxSum("飞机");
				long fjCcsqSum=adminYuSuanService.SelectQuarterCcsqSum("飞机");
				long fjSum=fjClbxSum+fjRcbxSum+fjCcsqSum;
				long fjYe=fjYs-fjSum;
				if(fjYe>2000)
				{
					fjtb="lv1.png";
				}else if(fjSum>fjYs)
				{
					fjtb="hong1.png";
				}else if(fjYe<=2000)
				{
					fjtb="huang1.png";
				}
				session.setAttribute("fjSum", fjSum);
				session.setAttribute("fjYs", fjYs);
				session.setAttribute("fjYe", fjYe);
				session.setAttribute("fjtb", fjtb);
		       
			    //市内交通
				long snjtClbxSum=adminYuSuanService.SelectQuarterClbxSum("市内交通");
				long snjtRcbxSum=adminYuSuanService.SelectQuarterRcbxSum("市内交通");
				long snjtCcsqSum=adminYuSuanService.SelectQuarterCcsqSum("市内交通");
				long snjtSum=snjtClbxSum+snjtRcbxSum+snjtCcsqSum;
				long snjtYe=snjtYs-snjtSum;
				if(snjtYe>500)
				{
					snjttb="lv1.png";
				}else if(snjtSum>snjtYs)
				{
					snjttb="hong1.png";
				}else if(snjtYe<=500)
				{
					snjttb="huang1.png";
				}
				session.setAttribute("snjtSum", snjtSum);
				session.setAttribute("snjtYs", snjtYs);
				session.setAttribute("snjtYe", snjtYe);
				session.setAttribute("snjttb", snjttb);
				
				//火车
				long hcClbxSum=adminYuSuanService.SelectQuarterClbxSum("火车");
				long hcRcbxSum=adminYuSuanService.SelectQuarterRcbxSum("火车");
				long hcCcsqSum=adminYuSuanService.SelectQuarterCcsqSum("火车");
				long hcSum=hcClbxSum+hcRcbxSum+hcCcsqSum;
				long hcYe=hcYs-hcSum;
				if(hcYe>500)
				{
					hctb="lv1.png";
				}else if(hcSum>hcYs)
				{
					hctb="hong1.png";
				}else if(hcYe<=500)
				{
					hctb="huang1.png";
				}
				session.setAttribute("hcSum", hcSum);
				session.setAttribute("hcYs", hcYs);
				session.setAttribute("hcYe", hcYe);
				session.setAttribute("hctb", hctb);
				
				//长途汽车
				long ctqcClbxSum=adminYuSuanService.SelectQuarterClbxSum("长途汽车");
				long ctqcRcbxSum=adminYuSuanService.SelectQuarterRcbxSum("长途汽车");
				long ctqcCcsqSum=adminYuSuanService.SelectQuarterCcsqSum("长途汽车");
				long ctqcSum=ctqcClbxSum+ctqcRcbxSum+ctqcCcsqSum;
				long ctqcYe=ctqcYs-ctqcSum;
				if(ctqcYe>500)
				{
					ctqctb="lv1.png";
				}else if(ctqcSum>ctqcYs)
				{
					ctqctb="hong1.png";
				}else if(ctqcYe<=500)
				{
					ctqctb="huang1.png";
				}
				session.setAttribute("ctqcSum", ctqcSum);
				session.setAttribute("ctqcYs", ctqcYs);
				session.setAttribute("ctqcYe", ctqcYe);
				session.setAttribute("ctqctb", ctqctb);
				
				//餐饮
				long cyClbxSum=adminYuSuanService.SelectQuarterClbxSum("餐饮");
				long cyRcbxSum=adminYuSuanService.SelectQuarterRcbxSum("餐饮");
				long cyCcsqSum=adminYuSuanService.SelectQuarterCcsqSum("餐饮");
				long cySum=cyClbxSum+cyRcbxSum+cyCcsqSum;
				long cyYe=cyYs-cySum;
				if(cyYe>500)
				{
					cytb="lv1.png";
				}else if(cySum>cyYs)
				{
					cytb="hong1.png";
				}else if(cyYe<=500)
				{
					cytb="huang1.png";
				}
				session.setAttribute("cySum", cySum);
				session.setAttribute("cyYs", cyYs);
				session.setAttribute("cyYe", cyYe);
				session.setAttribute("cytb", cytb);
				
				//住宿
				long zsClbxSum=adminYuSuanService.SelectQuarterClbxSum("住宿");
				long zsRcbxSum=adminYuSuanService.SelectQuarterRcbxSum("住宿");
				long zsCcsqSum=adminYuSuanService.SelectQuarterCcsqSum("住宿");
				long zsSum=zsClbxSum+zsRcbxSum+zsCcsqSum;
				long zsYe=zsYs-zsSum;
				if(zsYe>500)
				{
					zstb="lv1.png";
				}else if(zsSum>zsYs)
				{
					zstb="hong1.png";
				}else if(zsYe<=500)
				{
					zstb="huang1.png";
				}
				session.setAttribute("zsSum", zsSum);
				session.setAttribute("zsYs",zsYs);
				session.setAttribute("zsYe",zsYe);
				session.setAttribute("zstb",zstb);
				
				//办公
				long bgSum=adminYuSuanService.SelectQuarterCcsqSum("办公");
				long bgYe=bgYs-bgSum;
				if(bgYe>500)
				{
					bgtb="lv1.png";
				}else if(bgSum>bgYs)
				{
					bgtb="hong1.png";
				}else if(bgYe<=500)
				{
					bgtb="huang1.png";
				}
				session.setAttribute("bgSum", bgSum);
				session.setAttribute("bgYs",bgYs);
				session.setAttribute("bgYe",bgYe);
				session.setAttribute("bgtb",bgtb);
				
				//补贴
				long btSum=adminYuSuanService.SelectQuarterCcsqSum("补贴");
				long btYe=btYs-btSum;
				if(btYe>500)
				{
					bttb="lv1.png";
				}else if(btSum>btYs)
				{
					bttb="hong1.png";
				}else if(btYe<=500)
				{
					bttb="huang1.png";
				}
				session.setAttribute("btSum", btSum);
				session.setAttribute("btYs",btYs);
				session.setAttribute("btYe",btYe);
				session.setAttribute("bttb",bttb);
				
				//房租
				long fzSum=adminYuSuanService.SelectQuarterCcsqSum("房租");
				long fzYe=fzYs-fzSum;
				if(fzYe>500)
				{
					fztb="lv1.png";
				}else if(fzSum>fzYs)
				{
					fztb="hong1.png";
				}else if(fzYe<=500)
				{
					fztb="huang1.png";
				}
				session.setAttribute("fzSum", fzSum);
				session.setAttribute("fzYs",fzYs);
				session.setAttribute("fzYe",fzYe);
				session.setAttribute("fztb",fztb);
				
				//交际
				long jjSum=adminYuSuanService.SelectQuarterCcsqSum("交际");
				long jjYe=jjYs-jjSum;
				if(jjYe>500)
				{
					jjtb="lv1.png";
				}else if(jjSum>jjYs)
				{
					jjtb="hong1.png";
				}else if(jjYe<=500)
				{
					jjtb="huang1.png";
				}
				session.setAttribute("jjSum", jjSum);
				session.setAttribute("jjYs",jjYs);
				session.setAttribute("jjYe",jjYe);
				session.setAttribute("jjtb",jjtb);
				
				//水电
				long sdSum=adminYuSuanService.SelectQuarterCcsqSum("水电");
				long sdYe=sdYs-sdSum;
				if(sdYe>500)
				{
					sdtb="lv1.png";
				}else if(sdSum>sdYs)
				{
					sdtb="hong1.png";
				}else if(sdYe<=500)
				{
					sdtb="huang1.png";
				}
				session.setAttribute("sdSum", sdSum);
				session.setAttribute("sdYs",sdYs);
				session.setAttribute("sdYe",sdYe);
				session.setAttribute("sdtb",sdtb);
				
				//通讯
				long txSum=adminYuSuanService.SelectQuarterCcsqSum("通讯");
				long txYe=txYs-txSum;
				if(txYe>500)
				{
					txtb="lv1.png";
				}else if(txSum>txYs)
				{
					txtb="hong1.png";
				}else if(txYe<=500)
				{
					txtb="huang1.png";
				}
				session.setAttribute("txSum", txSum);
				session.setAttribute("txYs",txYs);
				session.setAttribute("txYe",txYe);
				session.setAttribute("txtb",txtb);
				
				//招聘
				long zpSum=adminYuSuanService.SelectQuarterCcsqSum("招聘");
				long zpYe=zpYs-zpSum;
				if(zpYe>500)
				{
					zptb="lv1.png";
				}else if(zpSum>zpYs)
				{
					zptb="hong1.png";
				}else if(zpYe<=500)
				{
					zptb="huang1.png";
				}
				session.setAttribute("zpSum", zpSum);
				session.setAttribute("zpYs",zpYs);
				session.setAttribute("zpYe",zpYe);
				session.setAttribute("zptb",zptb);
				
				//借款
				long jkSum=adminYuSuanService.SelectQuarterJkSum();
				long jkYe=jkYs-jkSum;
				if(jkYe>500)
				{
					jktb="lv1.png";
				}else if(jkSum>jkYs)
				{
					jktb="hong1.png";
				}else if(jkYe<=500)
				{
					jktb="huang1.png";
				}
				session.setAttribute("jkSum", jkSum);
				session.setAttribute("jkYs",jkYs);
				session.setAttribute("jkYe",jkYe);
				session.setAttribute("jktb",jktb);
//----年度------------------------------------------------------------------				
				long fjYs1 = 0;
				long hcYs1=0;
				long snjtYs1=0;
				long ctqcYs1=0;
				long cyYs1 = 0;
				long zsYs1 = 0;
				long bgYs1 = 0;
				long btYs1 = 0;
				long fzYs1 = 0;
				long jjYs1 = 0;
				long sdYs1 = 0;
				long txYs1 = 0;
				long zpYs1 = 0;
				long jkYs1 = 0;
				
				String fjtb1=null;
				String hctb1=null;
				String snjttb1=null;
				String ctqctb1=null;
				String cytb1=null;
				String zstb1=null;
				String bgtb1=null;
				String bttb1=null;
				String fztb1=null;
				String jjtb1=null;
				String sdtb1=null;
				String txtb1=null;
				String zptb1=null;
				String jktb1=null;
				
				BudgetType budgetTypeFj1=adminYuSuanService.selectBudgetType("交通费-飞机");
				BudgetType budgetTypeHc1=adminYuSuanService.selectBudgetType("交通费-火车");
				BudgetType budgetTypeSnjt1=adminYuSuanService.selectBudgetType("交通费-市内交通");
				BudgetType budgetTypeCtqc1=adminYuSuanService.selectBudgetType("交通费-长途汽车");
				BudgetType budgetTypeCy1=adminYuSuanService.selectBudgetType("餐饮");
				BudgetType budgetTypeZs1=adminYuSuanService.selectBudgetType("住宿");
				BudgetType budgetTypeBg1=adminYuSuanService.selectBudgetType("办公");
				BudgetType budgetTypeBt1=adminYuSuanService.selectBudgetType("补贴");
				BudgetType budgetTypeFz1=adminYuSuanService.selectBudgetType("房租");
				BudgetType budgetTypeJj1=adminYuSuanService.selectBudgetType("交际");
				BudgetType budgetTypeSd1=adminYuSuanService.selectBudgetType("水电");
				BudgetType budgetTypeTx1=adminYuSuanService.selectBudgetType("通讯");
				BudgetType budgetTypeZp1=adminYuSuanService.selectBudgetType("招聘");
				BudgetType budgetTypeJk1=adminYuSuanService.selectBudgetType("借款");	
				
				 fjYs1=budgetTypeFj.getBudget_type_year();
            	 hcYs1=budgetTypeHc.getBudget_type_year();
 				 snjtYs1=budgetTypeSnjt.getBudget_type_year();
 				 ctqcYs1=budgetTypeCtqc.getBudget_type_year();;
 				 cyYs1 = budgetTypeCy.getBudget_type_year();
 				 zsYs1 = budgetTypeZs.getBudget_type_year();;
 				 bgYs1 = budgetTypeBg.getBudget_type_year();
 				 btYs1 = budgetTypeBt.getBudget_type_year();
 				 fzYs1 = budgetTypeFz.getBudget_type_year();
 				 jjYs1 = budgetTypeJj.getBudget_type_year();
 				 sdYs1 = budgetTypeSd.getBudget_type_year();
 				 txYs1 = budgetTypeSd.getBudget_type_year();
 				 zpYs1 = budgetTypeZp.getBudget_type_year();
 				 jkYs1 = budgetTypeJk.getBudget_type_year();
				
 				 
 				//飞机
 				long fjClbxSum1=adminYuSuanService.SelectYearClbxSum("飞机");
 				long fjRcbxSum1=adminYuSuanService.SelectYearRcbxSum("飞机");
 				long fjCcsqSum1=adminYuSuanService.SelectYearCcsqSum("飞机");
 				long fjSum1=fjClbxSum1+fjRcbxSum1+fjCcsqSum1;
 				long fjYe1=fjYs1-fjSum1;
 				if(fjYe1>10000)
 				{
 					fjtb1="lv1.png";
 				}else if(fjSum1>fjYs1)
 				{
 					fjtb1="hong1.png";
 				}else if(fjYe1<=10000)
 				{
 					fjtb1="huang1.png";
 				}
 				session.setAttribute("fjSum1", fjSum1);
 				session.setAttribute("fjYs1", fjYs1);
 				session.setAttribute("fjYe1", fjYe1);
 				session.setAttribute("fjtb1", fjtb1);
 				
 				
 				//市内交通
				long snjtClbxSum1=adminYuSuanService.SelectYearClbxSum("市内交通");
				long snjtRcbxSum1=adminYuSuanService.SelectYearRcbxSum("市内交通");
				long snjtCcsqSum1=adminYuSuanService.SelectYearCcsqSum("市内交通");
				long snjtSum1=snjtClbxSum1+snjtRcbxSum1+snjtCcsqSum1;
				long snjtYe1=snjtYs1-snjtSum1;
				if(snjtYe1>500)
				{
					snjttb1="lv1.png";
				}else if(snjtSum1>snjtYs1)
				{
					snjttb1="hong1.png";
				}else if(snjtYe1<=500)
				{
					snjttb1="huang1.png";
				}
				session.setAttribute("snjtSum1", snjtSum1);
				session.setAttribute("snjtYs1", snjtYs1);
				session.setAttribute("snjtYe1", snjtYe1);
				session.setAttribute("snjttb1", snjttb1);
				
				//火车
				long hcClbxSum1=adminYuSuanService.SelectYearClbxSum("火车");
				long hcRcbxSum1=adminYuSuanService.SelectYearRcbxSum("火车");
				long hcCcsqSum1=adminYuSuanService.SelectYearCcsqSum("火车");
				long hcSum1=hcClbxSum1+hcRcbxSum1+hcCcsqSum1;
				long hcYe1=hcYs1-hcSum1;
				if(hcYe1>500)
				{
					hctb1="lv1.png";
				}else if(hcSum1>hcYs1)
				{
					hctb1="hong1.png";
				}else if(hcYe1<=500)
				{
					hctb1="huang1.png";
				}
				session.setAttribute("hcSum1", hcSum1);
				session.setAttribute("hcYs1", hcYs1);
				session.setAttribute("hcYe1", hcYe1);
				session.setAttribute("hctb1", hctb1);
				
				//长途汽车
				long ctqcClbxSum1=adminYuSuanService.SelectYearClbxSum("长途汽车");
				long ctqcRcbxSum1=adminYuSuanService.SelectYearRcbxSum("长途汽车");
				long ctqcCcsqSum1=adminYuSuanService.SelectYearCcsqSum("长途汽车");
				long ctqcSum1=ctqcClbxSum1+ctqcRcbxSum1+ctqcCcsqSum1;
				long ctqcYe1=ctqcYs1-ctqcSum1;
				if(ctqcYe1>500)
				{
					ctqctb1="lv1.png";
				}else if(ctqcSum1>ctqcYs1)
				{
					ctqctb1="hong1.png";
				}else if(ctqcYe1<=500)
				{
					ctqctb1="huang1.png";
				}
				session.setAttribute("ctqcSum1", ctqcSum1);
				session.setAttribute("ctqcYs1", ctqcYs1);
				session.setAttribute("ctqcYe1", ctqcYe1);
				session.setAttribute("ctqctb1", ctqctb1);
				
				//餐饮
				long cyClbxSum1=adminYuSuanService.SelectYearClbxSum("餐饮");
				long cyRcbxSum1=adminYuSuanService.SelectYearRcbxSum("餐饮");
				long cyCcsqSum1=adminYuSuanService.SelectYearCcsqSum("餐饮");
				long cySum1=cyClbxSum1+cyRcbxSum1+cyCcsqSum1;
				long cyYe1=cyYs1-cySum1;
				if(cyYe1>500)
				{
					cytb1="lv1.png";
				}else if(cySum1>cyYs1)
				{
					cytb1="hong1.png";
				}else if(cyYe1<=500)
				{
					cytb1="huang1.png";
				}
				session.setAttribute("cySum1", cySum1);
				session.setAttribute("cyYs1", cyYs1);
				session.setAttribute("cyYe1", cyYe1);
				session.setAttribute("cytb1", cytb1);
				
				//住宿
				long zsClbxSum1=adminYuSuanService.SelectYearClbxSum("住宿");
				long zsRcbxSum1=adminYuSuanService.SelectYearRcbxSum("住宿");
				long zsCcsqSum1=adminYuSuanService.SelectYearCcsqSum("住宿");
				long zsSum1=zsClbxSum1+zsRcbxSum1+zsCcsqSum1;
				long zsYe1=zsYs1-zsSum1;
				if(zsYe1>500)
				{
					zstb1="lv1.png";
				}else if(zsSum1>zsYs1)
				{
					zstb1="hong1.png";
				}else if(zsYe1<=500)
				{
					zstb1="huang1.png";
				}
				session.setAttribute("zsSum1", zsSum1);
				session.setAttribute("zsYs1",zsYs1);
				session.setAttribute("zsYe1",zsYe1);
				session.setAttribute("zstb1",zstb1);
				
				//办公
				long bgSum1=adminYuSuanService.SelectYearCcsqSum("办公");
				long bgYe1=bgYs1-bgSum1;
				if(bgYe1>500)
				{
					bgtb1="lv1.png";
				}else if(bgSum1>bgYs1)
				{
					bgtb1="hong1.png";
				}else if(bgYe1<=500)
				{
					bgtb1="huang1.png";
				}
				session.setAttribute("bgSum1", bgSum1);
				session.setAttribute("bgYs1",bgYs1);
				session.setAttribute("bgYe1",bgYe1);
				session.setAttribute("bgtb1",bgtb1);
				
				//补贴
				long btSum1=adminYuSuanService.SelectYearCcsqSum("补贴");
				long btYe1=btYs1-btSum1;
				if(btYe1>500)
				{
					bttb1="lv1.png";
				}else if(btSum1>btYs1)
				{
					bttb1="hong1.png";
				}else if(btYe1<=500)
				{
					bttb1="huang1.png";
				}
				session.setAttribute("btSum1", btSum1);
				session.setAttribute("btYs1",btYs1);
				session.setAttribute("btYe1",btYe1);
				session.setAttribute("bttb1",bttb1);
				
				//房租
				long fzSum1=adminYuSuanService.SelectYearCcsqSum("房租");
				long fzYe1=fzYs1-fzSum1;
				if(fzYe1>500)
				{
					fztb1="lv1.png";
				}else if(fzSum1>fzYs1)
				{
					fztb1="hong1.png";
				}else if(fzYe1<=500)
				{
					fztb1="huang1.png";
				}
				session.setAttribute("fzSum1", fzSum1);
				session.setAttribute("fzYs1",fzYs1);
				session.setAttribute("fzYe1",fzYe1);
				session.setAttribute("fztb1",fztb1);
				
				//交际
				long jjSum1=adminYuSuanService.SelectYearCcsqSum("交际");
				long jjYe1=jjYs1-jjSum1;
				if(jjYe1>500)
				{
					jjtb1="lv1.png";
				}else if(jjSum1>jjYs1)
				{
					jjtb1="hong1.png";
				}else if(jjYe1<=500)
				{
					jjtb1="huang1.png";
				}
				session.setAttribute("jjSum1", jjSum1);
				session.setAttribute("jjYs1",jjYs1);
				session.setAttribute("jjYe1",jjYe1);
				session.setAttribute("jjtb1",jjtb1);
				
				//水电
				long sdSum1=adminYuSuanService.SelectYearCcsqSum("水电");
				long sdYe1=sdYs1-sdSum1;
				if(sdYe1>500)
				{
					sdtb1="lv1.png";
				}else if(sdSum1>sdYs1)
				{
					sdtb1="hong1.png";
				}else if(sdYe1<=500)
				{
					sdtb1="huang1.png";
				}
				session.setAttribute("sdSum1", sdSum1);
				session.setAttribute("sdYs1",sdYs1);
				session.setAttribute("sdYe1",sdYe1);
				session.setAttribute("sdtb1",sdtb1);
				
				//通讯
				long txSum1=adminYuSuanService.SelectYearCcsqSum("通讯");
				long txYe1=txYs1-txSum1;
				if(txYe1>500)
				{
					txtb1="lv1.png";
				}else if(txSum1>txYs1)
				{
					txtb1="hong1.png";
				}else if(txYe1<=500)
				{
					txtb1="huang1.png";
				}
				session.setAttribute("txSum1", txSum1);
				session.setAttribute("txYs1",txYs1);
				session.setAttribute("txYe1",txYe1);
				session.setAttribute("txtb1",txtb1);
				
				//招聘
				long zpSum1=adminYuSuanService.SelectYearCcsqSum("招聘");
				long zpYe1=zpYs1-zpSum1;
				if(zpYe1>500)
				{
					zptb1="lv1.png";
				}else if(zpSum1>zpYs1)
				{
					zptb1="hong1.png";
				}else if(zpYe1<=500)
				{
					zptb1="huang1.png";
				}
				session.setAttribute("zpSum1", zpSum1);
				session.setAttribute("zpYs1",zpYs1);
				session.setAttribute("zpYe1",zpYe1);
				session.setAttribute("zptb1",zptb1);
				
				//借款
				long jkSum1=adminYuSuanService.SelectQuarterJkSum();
				long jkYe1=jkYs1-jkSum1;
				if(jkYe1>500)
				{
					jktb1="lv1.png";
				}else if(jkSum1>jkYs1)
				{
					jktb1="hong1.png";
				}else if(jkYe1<=500)
				{
					jktb1="huang1.png";
				}
				session.setAttribute("jkSum1", jkSum1);
				session.setAttribute("jkYs1",jkYs1);
				session.setAttribute("jkYe1",jkYe1);
				session.setAttribute("jktb1",jktb1);
//----------------------------------------------------------------------------------------------
				long xsbYs1=0;
				long scbYs1=0;
				long cwbYs1=0;
				long rlzybYs1=0;
				long shcbYs1=0;
				long yfbYs1=0;
				long cgbYs1=0;
				
				String xsbtb1=null;
				String scbtb1=null;
				String cwbtb1=null;
				String rlzybtb1=null;
				String shcbtb1=null;
				String yfbtb1=null;
				String cgbtb1=null;
				
				
				Department xsbBudget1=adminYuSuanService.selectDepartmentType("销售部");
				Department scbBudget1=adminYuSuanService.selectDepartmentType("市场部");
				Department cwbBudget1=adminYuSuanService.selectDepartmentType("财务部");
				Department rlzybBudget1=adminYuSuanService.selectDepartmentType("人力资源部");
				Department shcbBudget1=adminYuSuanService.selectDepartmentType("生产部");
				Department yfbBudget1=adminYuSuanService.selectDepartmentType("研发部");
				Department cgbBudget1=adminYuSuanService.selectDepartmentType("采购部");
				
				
            	xsbYs1=xsbBudget1.getDepartment_budget_year();
			    scbYs1=scbBudget1.getDepartment_budget_year();
				cwbYs1=cwbBudget1.getDepartment_budget_year();
				rlzybYs1=rlzybBudget1.getDepartment_budget_year();
				shcbYs1=shcbBudget1.getDepartment_budget_year();
				yfbYs1=yfbBudget1.getDepartment_budget_year();
				cgbYs1=cgbBudget1.getDepartment_budget_year();
              
                //销售部
                long xsbClbxSum1=adminYuSuanService.SelectYearDeClbxSum("销售部");
                long xsbRcbxSum1=adminYuSuanService.SelectYearDeRcbxSum("销售部");
                long xsbCcsqSum1=adminYuSuanService.SelectYearDeCcsqSum("销售部");
				long xsbJkSum1=adminYuSuanService.SelectYearDeJkSum("销售部");
				long xsbSum1=xsbClbxSum1+xsbRcbxSum1+xsbCcsqSum1+xsbJkSum1;
				long xsbYe1=xsbYs1-xsbSum1;
				if(xsbYe1>500)
				{
					xsbtb1="lv1.png";
				}else if(xsbSum1>xsbYs1)
				{
					xsbtb1="hong1.png";
				}else if(xsbYe1<=500)
				{
					xsbtb1="huang1.png";
				}
				
				session.setAttribute("xsbSum1", xsbSum1);
				session.setAttribute("xsbYs1",xsbYs1);
				session.setAttribute("xsbYe1",xsbYe1);
				session.setAttribute("xsbtb1",xsbtb1);
				
				//市场部
                long scbClbxSum1=adminYuSuanService.SelectYearDeClbxSum("市场部");
                long scbRcbxSum1=adminYuSuanService.SelectYearDeRcbxSum("市场部");
                long scbCcsqSum1=adminYuSuanService.SelectYearDeCcsqSum("市场部");
				long scbJkSum1=adminYuSuanService.SelectYearDeJkSum("市场部");
				long scbSum1=scbClbxSum1+scbRcbxSum1+scbCcsqSum1+scbJkSum1;
				long scbYe1=scbYs1-scbSum1;
				if(scbYe1>500)
				{
					scbtb1="lv1.png";
				}else if(scbSum1>scbYs1)
				{
					scbtb1="hong1.png";
				}else if(scbYe1<=500)
				{
					scbtb1="huang1.png";
				}
				
				session.setAttribute("scbSum1", scbSum1);
				session.setAttribute("scbYs1",scbYs1);
				session.setAttribute("scbYe1",scbYe1);
				session.setAttribute("scbtb1",scbtb1);
				
				//财务部
                long cwbClbxSum1=adminYuSuanService.SelectYearDeClbxSum("财务部");
                long cwbRcbxSum1=adminYuSuanService.SelectYearDeRcbxSum("财务部");
                long cwbCcsqSum1=adminYuSuanService.SelectYearDeCcsqSum("财务部");
				long cwbJkSum1=adminYuSuanService.SelectYearDeJkSum("财务部");
				long cwbSum1=cwbClbxSum1+cwbRcbxSum1+cwbCcsqSum1+cwbJkSum1;
				long cwbYe1=cwbYs1-cwbSum1;
				if(cwbYe1>500)
				{
					cwbtb1="lv1.png";
				}else if(cwbSum1>cwbYs1)
				{
					cwbtb1="hong1.png";
				}else if(cwbYe1<=500)
				{
					cwbtb1="huang1.png";
				}
				
				session.setAttribute("cwbSum1", cwbSum1);
				session.setAttribute("cwbYs1",cwbYs1);
				session.setAttribute("cwbYe1",cwbYe1);
				session.setAttribute("cwbtb1",cwbtb1);
				
				//人力资源部
                long rlzybClbxSum1=adminYuSuanService.SelectYearDeClbxSum("人力资源部");
                long rlzybRcbxSum1=adminYuSuanService.SelectYearDeRcbxSum("人力资源部");
                long rlzybCcsqSum1=adminYuSuanService.SelectYearDeCcsqSum("人力资源部");
				long rlzybJkSum1=adminYuSuanService.SelectYearDeJkSum("人力资源部");
				long rlzybSum1=rlzybClbxSum1+rlzybRcbxSum1+rlzybCcsqSum1+rlzybJkSum1;
				long rlzybYe1=rlzybYs1-rlzybSum1;
				if(rlzybYe1>500)
				{
					rlzybtb1="lv1.png";
				}else if(rlzybSum1>rlzybYs1)
				{
					rlzybtb1="hong1.png";
				}else if(rlzybYe1<=500)
				{
					rlzybtb1="huang1.png";
				}
				
				session.setAttribute("rlzybSum1", rlzybSum1);
				session.setAttribute("rlzybYs1",rlzybYs1);
				session.setAttribute("rlzybYe1",rlzybYe1);
				session.setAttribute("rlzybtb1",rlzybtb1);
				
				//生产部
                long shcbClbxSum1=adminYuSuanService.SelectYearDeClbxSum("生产部");
                long shcbRcbxSum1=adminYuSuanService.SelectYearDeRcbxSum("生产部");
                long shcbCcsqSum1=adminYuSuanService.SelectYearDeCcsqSum("生产部");
				long shcbJkSum1=adminYuSuanService.SelectYearDeJkSum("生产部");
				long shcbSum1=shcbClbxSum1+shcbRcbxSum1+shcbCcsqSum1+shcbJkSum1;
				long shcbYe1=shcbYs1-shcbSum1;
				if(shcbYe1>500)
				{
					shcbtb1="lv1.png";
				}else if(shcbSum1>shcbYs1)
				{
					shcbtb1="hong1.png";
				}else if(shcbYe1<=500)
				{
					shcbtb1="huang1.png";
				}
				
				session.setAttribute("shcbSum1", shcbSum1);
				session.setAttribute("shcbYs1",shcbYs1);
				session.setAttribute("shcbYe1",shcbYe1);
				session.setAttribute("shcbtb1",shcbtb1);
				
				//研发部
                long yfbClbxSum1=adminYuSuanService.SelectYearDeClbxSum("研发部");
                long yfbRcbxSum1=adminYuSuanService.SelectYearDeRcbxSum("研发部");
                long yfbCcsqSum1=adminYuSuanService.SelectYearDeCcsqSum("研发部");
				long yfbJkSum1=adminYuSuanService.SelectYearDeJkSum("研发部");
				long yfbSum1=yfbClbxSum1+yfbRcbxSum1+yfbCcsqSum1+yfbJkSum1;
				long yfbYe1=yfbYs1-yfbSum1;
				if(yfbYe1>500)
				{
					yfbtb1="lv1.png";
				}else if(yfbSum1>yfbYs1)
				{
					yfbtb1="hong1.png";
				}else if(yfbYe1<=500)
				{
					yfbtb1="huang1.png";
				}
				
				session.setAttribute("yfbSum1", yfbSum1);
				session.setAttribute("yfbYs1",yfbYs1);
				session.setAttribute("yfbYe1",yfbYe1);
				session.setAttribute("yfbtb1",yfbtb1);
				
				//采购部
                long cgbClbxSum1=adminYuSuanService.SelectYearDeClbxSum("采购部");
                long cgbRcbxSum1=adminYuSuanService.SelectYearDeRcbxSum("采购部");
                long cgbCcsqSum1=adminYuSuanService.SelectYearDeCcsqSum("采购部");
				long cgbJkSum1=adminYuSuanService.SelectYearDeJkSum("采购部");
				long cgbSum1=cgbClbxSum1+cgbRcbxSum1+cgbCcsqSum1+cgbJkSum1;
				long cgbYe1=cgbYs1-cgbSum1;
				if(cgbYe1>500)
				{
					cgbtb1="lv1.png";
				}else if(cgbSum1>cgbYs1)
				{
					cgbtb1="hong1.png";
				}else if(cgbYe1<=500)
				{
					cgbtb1="huang1.png";
				}
				
				session.setAttribute("cgbSum1", cgbSum1);
				session.setAttribute("cgbYs1",cgbYs1);
				session.setAttribute("cgbYe1",cgbYe1);
				session.setAttribute("cgbtb1",cgbtb1);
				
//--部门季度------------------------------------------------		
				long xsbYs=0;
				long scbYs=0;
				long cwbYs=0;
				long rlzybYs=0;
				long shcbYs=0;
				long yfbYs=0;
				long cgbYs=0;
				
				String xsbtb=null;
				String scbtb=null;
				String cwbtb=null;
				String rlzybtb=null;
				String shcbtb=null;
				String yfbtb=null;
				String cgbtb=null;
				
				
				Department xsbBudget=adminYuSuanService.selectDepartmentType("销售部");
				Department scbBudget=adminYuSuanService.selectDepartmentType("市场部");
				Department cwbBudget=adminYuSuanService.selectDepartmentType("财务部");
				Department rlzybBudget=adminYuSuanService.selectDepartmentType("人力资源部");
				Department shcbBudget=adminYuSuanService.selectDepartmentType("生产部");
				Department yfbBudget=adminYuSuanService.selectDepartmentType("研发部");
				Department cgbBudget=adminYuSuanService.selectDepartmentType("采购部");
				
				Calendar cal1 = Calendar.getInstance();
	            int m1 = cal1.get(Calendar.MONTH) + 1;
                System.out.println("当前月份为"+m); 
                if (m1 >= 1 && m1 == 3) 
                {
                	xsbYs=xsbBudget.getDepartment_budget_one();
    			    scbYs=scbBudget.getDepartment_budget_one();
    				cwbYs=cwbBudget.getDepartment_budget_one();
    				rlzybYs=rlzybBudget.getDepartment_budget_one();
    				shcbYs=shcbBudget.getDepartment_budget_one();
    				yfbYs=yfbBudget.getDepartment_budget_one();
    				cgbYs=cgbBudget.getDepartment_budget_one();
                }else if(m1 >= 4 && m1 <= 6)
                {
                	xsbYs=xsbBudget.getDepartment_budget_two();
                	scbYs=scbBudget.getDepartment_budget_two();
    				cwbYs=cwbBudget.getDepartment_budget_two();
    				rlzybYs=rlzybBudget.getDepartment_budget_two();
    				shcbYs=shcbBudget.getDepartment_budget_two();
    				yfbYs=yfbBudget.getDepartment_budget_two();
    				cgbYs=cgbBudget.getDepartment_budget_two();
                }else if(m1 >= 7 && m1<= 9)
                {
                	xsbYs=xsbBudget.getDepartment_budget_three();
                	scbYs=scbBudget.getDepartment_budget_three();
    				cwbYs=cwbBudget.getDepartment_budget_three();
    				rlzybYs=rlzybBudget.getDepartment_budget_three();
    				shcbYs=shcbBudget.getDepartment_budget_three();
    				yfbYs=yfbBudget.getDepartment_budget_three();
    				cgbYs=cgbBudget.getDepartment_budget_three();
                }else if(m1 >= 10 && m1 <= 12)
                {  
                	xsbYs=xsbBudget.getDepartment_budget_four();
                	scbYs=scbBudget.getDepartment_budget_four();
    				cwbYs=cwbBudget.getDepartment_budget_four();
    				rlzybYs=rlzybBudget.getDepartment_budget_four();
    				shcbYs=shcbBudget.getDepartment_budget_four();
    				yfbYs=yfbBudget.getDepartment_budget_four();
    				cgbYs=cgbBudget.getDepartment_budget_four();
                }
                
                //销售部
                long xsbClbxSum=adminYuSuanService.SelectQuarterDeClbxSum("销售部");
                long xsbRcbxSum=adminYuSuanService.SelectQuarterDeRcbxSum("销售部");
                long xsbCcsqSum=adminYuSuanService.SelectQuarterDeCcsqSum("销售部");
				long xsbJkSum=adminYuSuanService.SelectQuarterDeJkSum("销售部");
				long xsbSum=xsbClbxSum+xsbRcbxSum+xsbCcsqSum+xsbJkSum;
				long xsbYe=xsbYs-xsbSum;
				if(xsbYe>500)
				{
					xsbtb="lv1.png";
				}else if(xsbSum>xsbYs)
				{
					xsbtb="hong1.png";
				}else if(xsbYe<=500)
				{
					xsbtb="huang1.png";
				}
				
				session.setAttribute("xsbSum", xsbSum);
				session.setAttribute("xsbYs",xsbYs);
				session.setAttribute("xsbYe",xsbYe);
				session.setAttribute("xsbtb",xsbtb);
				
				//市场部
                long scbClbxSum=adminYuSuanService.SelectQuarterDeClbxSum("市场部");
                long scbRcbxSum=adminYuSuanService.SelectQuarterDeRcbxSum("市场部");
                long scbCcsqSum=adminYuSuanService.SelectQuarterDeCcsqSum("市场部");
				long scbJkSum=adminYuSuanService.SelectQuarterDeJkSum("市场部");
				long scbSum=scbClbxSum+scbRcbxSum+scbCcsqSum+scbJkSum;
				long scbYe=scbYs-scbSum;
				if(scbYe>500)
				{
					scbtb="lv1.png";
				}else if(scbSum>scbYs)
				{
					scbtb="hong1.png";
				}else if(scbYe<=500)
				{
					scbtb="huang1.png";
				}
				
				session.setAttribute("scbSum", scbSum);
				session.setAttribute("scbYs",scbYs);
				session.setAttribute("scbYe",scbYe);
				session.setAttribute("scbtb",scbtb);
				
				//财务部
                long cwbClbxSum=adminYuSuanService.SelectQuarterDeClbxSum("财务部");
                long cwbRcbxSum=adminYuSuanService.SelectQuarterDeRcbxSum("财务部");
                long cwbCcsqSum=adminYuSuanService.SelectQuarterDeCcsqSum("财务部");
				long cwbJkSum=adminYuSuanService.SelectQuarterDeJkSum("财务部");
				long cwbSum=cwbClbxSum+cwbRcbxSum+cwbCcsqSum+cwbJkSum;
				long cwbYe=cwbYs-cwbSum;
				if(cwbYe>500)
				{
					cwbtb="lv1.png";
				}else if(cwbSum>cwbYs)
				{
					cwbtb="hong1.png";
				}else if(cwbYe<=500)
				{
					cwbtb="huang1.png";
				}
				
				session.setAttribute("cwbSum", cwbSum);
				session.setAttribute("cwbYs",cwbYs);
				session.setAttribute("cwbYe",cwbYe);
				session.setAttribute("cwbtb",cwbtb);
				
				//人力资源部
                long rlzybClbxSum=adminYuSuanService.SelectQuarterDeClbxSum("人力资源部");
                long rlzybRcbxSum=adminYuSuanService.SelectQuarterDeRcbxSum("人力资源部");
                long rlzybCcsqSum=adminYuSuanService.SelectQuarterDeCcsqSum("人力资源部");
				long rlzybJkSum=adminYuSuanService.SelectQuarterDeJkSum("人力资源部");
				long rlzybSum=rlzybClbxSum+rlzybRcbxSum+rlzybCcsqSum+rlzybJkSum;
				long rlzybYe=rlzybYs-rlzybSum;
				if(rlzybYe>500)
				{
					rlzybtb="lv1.png";
				}else if(rlzybSum>rlzybYs)
				{
					rlzybtb="hong1.png";
				}else if(rlzybYe<=500)
				{
					rlzybtb="huang1.png";
				}
				
				session.setAttribute("rlzybSum", rlzybSum);
				session.setAttribute("rlzybYs",rlzybYs);
				session.setAttribute("rlzybYe",rlzybYe);
				session.setAttribute("rlzybtb",rlzybtb);
				
				//生产部
                long shcbClbxSum=adminYuSuanService.SelectQuarterDeClbxSum("生产部");
                long shcbRcbxSum=adminYuSuanService.SelectQuarterDeRcbxSum("生产部");
                long shcbCcsqSum=adminYuSuanService.SelectQuarterDeCcsqSum("生产部");
				long shcbJkSum=adminYuSuanService.SelectQuarterDeJkSum("生产部");
				long shcbSum=shcbClbxSum+shcbRcbxSum+shcbCcsqSum+shcbJkSum;
				long shcbYe=shcbYs-shcbSum;
				if(shcbYe>500)
				{
					shcbtb="lv1.png";
				}else if(shcbSum>shcbYs)
				{
					shcbtb="hong1.png";
				}else if(shcbYe<=500)
				{
					shcbtb="huang1.png";
				}
				
				session.setAttribute("shcbSum", shcbSum);
				session.setAttribute("shcbYs",shcbYs);
				session.setAttribute("shcbYe",shcbYe);
				session.setAttribute("shcbtb",shcbtb);
				
				//研发部
                long yfbClbxSum=adminYuSuanService.SelectQuarterDeClbxSum("研发部");
                long yfbRcbxSum=adminYuSuanService.SelectQuarterDeRcbxSum("研发部");
                long yfbCcsqSum=adminYuSuanService.SelectQuarterDeCcsqSum("研发部");
				long yfbJkSum=adminYuSuanService.SelectQuarterDeJkSum("研发部");
				long yfbSum=yfbClbxSum+yfbRcbxSum+yfbCcsqSum+yfbJkSum;
				long yfbYe=yfbYs-yfbSum;
				if(yfbYe>500)
				{
					yfbtb="lv1.png";
				}else if(yfbSum>yfbYs)
				{
					yfbtb="hong1.png";
				}else if(yfbYe<=500)
				{
					yfbtb="huang1.png";
				}
				
				session.setAttribute("yfbSum", yfbSum);
				session.setAttribute("yfbYs",yfbYs);
				session.setAttribute("yfbYe",yfbYe);
				session.setAttribute("yfbtb",yfbtb);
				
				//采购部
                long cgbClbxSum=adminYuSuanService.SelectQuarterDeClbxSum("采购部");
                long cgbRcbxSum=adminYuSuanService.SelectQuarterDeRcbxSum("采购部");
                long cgbCcsqSum=adminYuSuanService.SelectQuarterDeCcsqSum("采购部");
				long cgbJkSum=adminYuSuanService.SelectQuarterDeJkSum("采购部");
				long cgbSum=cgbClbxSum+cgbRcbxSum+cgbCcsqSum+cgbJkSum;
				long cgbYe=cgbYs-cgbSum;
				if(cgbYe>500)
				{
					cgbtb="lv1.png";
				}else if(cgbSum>cgbYs)
				{
					cgbtb="hong1.png";
				}else if(cgbYe<=500)
				{
					cgbtb="huang1.png";
				}
				
				session.setAttribute("cgbSum", cgbSum);
				session.setAttribute("cgbYs",cgbYs);
				session.setAttribute("cgbYe",cgbYe);
				session.setAttribute("cgbtb",cgbtb);				
				
				
				mv.setViewName("admin_bulletin_board");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mv;
		}
	

}
