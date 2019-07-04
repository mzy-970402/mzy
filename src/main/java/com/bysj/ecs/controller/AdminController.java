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

import com.bysj.ecs.pojo.BudgetType;
import com.bysj.ecs.pojo.Department;
import com.bysj.ecs.pojo.LeaveDay;
import com.bysj.ecs.pojo.Position;
import com.bysj.ecs.pojo.User;
import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.pojo.UserRcbx;
import com.bysj.ecs.pojo.UserType;
import com.bysj.ecs.service.AdminService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class AdminController {

	 private AdminService adminService;
		
		@Resource(name="adminService")
		public void setAdminService(AdminService adminService) {
			this.adminService = adminService;
		}
		
		
		//查询所有用户
		@RequestMapping("selectUser")
		public ModelAndView selectUser(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
			PageHelper.startPage(page, 5);
			ModelAndView mv = null;
			try
			{
				mv = new ModelAndView("admin_staff_manage");
				ArrayList<User> user = adminService.selectUser();
				ArrayList<Department> department=adminService.selectDepartment();
				ArrayList<Position> position=adminService.selectPosition();
				
				PageInfo<Department> p1=new PageInfo<Department>(department);
				PageInfo<Position> p2=new PageInfo<Position>(position);
				PageInfo<User> p=new PageInfo<User>(user);  
		        
				
				model.addAttribute("page1", p1);
				model.addAttribute("page2", p2);
				model.addAttribute("page", p);  
		        model.addAttribute("user",user); 
		        model.addAttribute("department", department);
		        model.addAttribute("position", position);
		        
		        
				mv.addObject("data_user", user);
				mv.setViewName("admin_staff_manage");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mv;
		}
		
		
		//查询部门、职位
		@RequestMapping("selectPoAndDe")
		@ResponseBody
		
     public ModelAndView selectPoAndDe(HttpSession session,Model model) {
			String msg="1";
			try {
				ArrayList<Department> department=adminService.selectDepartment();
				ArrayList<Position> position=adminService.selectPosition();
				model.addAttribute("department",department);
				model.addAttribute("position",position);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			ModelAndView mv=new ModelAndView("admin_insert_staff");
			return mv;
		}
		
	
		
		
		//修改个人信息
		@RequestMapping("AdminUpdateUserMessage")
		@ResponseBody
		public String AdminUpdateUserMessage(User user,HttpSession session) {
			String msg="1";
			try {
				
				adminService.updateUserMessage(user);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
		
		//删除用户 
		@RequestMapping("deleteUser")
		@ResponseBody
		public String deleteUser(int user_id) {
			String msg="1";
			try {
				adminService.deleteUser(user_id);
				msg="0";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;
		}
		
		//添加用户
		@RequestMapping("insertUser")
		@ResponseBody
		public ModelAndView insertUser(User user)
		{ 
			String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			user.setUser_time(Timestamp.valueOf(nowTime));
			adminService.insertUser(user);
		    ModelAndView mv=new ModelAndView("redirect:/selectUser.action");
			return mv;
	   }
		
		
		//查询某位用户
		@RequestMapping("editOneUser")
		@ResponseBody
		public User editOneUser(Integer user_id,Model model,HttpSession session) {
			User user=adminService.selectOneUser(user_id);
			session.setAttribute("user_department", user.getUser_department());
			session.setAttribute("user_position", user.getUser_position());
			ArrayList<Department> department=adminService.selectDepartment();
			ArrayList<Position> position=adminService.selectPosition();
			model.addAttribute("department",department);
			model.addAttribute("position",position);
			return user;
		}
		
		
		//删除部门 
		@RequestMapping("deleteDepartment")
		@ResponseBody
		public String deleteDepartment(int department_id) {
			String msg="1";
					try {
						adminService.deleteDepartment(department_id);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
		
		//删除职位
				@RequestMapping("deletePosition")
				@ResponseBody
				public String deletePosition(int position_id) {
					String msg="1";
							try {
								adminService.deletePosition(position_id);
								msg="0";
							} catch (Exception e) {
								e.printStackTrace();
							}
							return msg;
						}
				
				
				//添加部门
				@RequestMapping("insertDepartment")
				@ResponseBody
				public ModelAndView insertDepartment(Department department)
				{ 
					adminService.insertDepartment(department);
				    ModelAndView mv=new ModelAndView("redirect:/selectUser.action");
					return mv;
			   }
				
				//添加职位
				@RequestMapping("insertPosition")
				@ResponseBody
				public ModelAndView insertPosition(Position position)
				{ 
					adminService.insertPosition(position);
				    ModelAndView mv=new ModelAndView("redirect:/selectUser.action");
					return mv;
			   }
				
				//修改个人角色
				@RequestMapping("UpdateUserType")
				@ResponseBody
				public String UpdateUserType(User user,HttpSession session) {
					String msg="1";
					try {
						System.out.println("我是UpdateUserType1");
						adminService.updateUserType(user);
						System.out.println("我是UpdateUserType2");
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				
				//查询某位用户--角色
				@RequestMapping("editUserType")
				@ResponseBody
				public User  editUserType(Integer user_id,Model model,HttpSession session) {
					
					User user=adminService.selectOneUser(user_id);
					System.out.println(user.getUser_id()+"我是user_id");
					System.out.println(user.getUser_type_id()+"我是user_type_id");
				   return user;
					
				}
				
				//查询费用类别的预算,部门
				@RequestMapping("selectBudgetType")
				@ResponseBody
				public ModelAndView selectBudgetType(HttpSession session,Model model) {
					String msg="1";
					try {
						ArrayList<BudgetType> budgetType=adminService.selectBudgetType();
						ArrayList<Department> departmentBudget=adminService.selectDepartment();
						model.addAttribute("budgetType",budgetType);
						model.addAttribute("departmentBudget",departmentBudget);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					ModelAndView mv=new ModelAndView("admin_budget_type");
					return mv;
				}
				
				//查询某位费用类别预算
				@RequestMapping("selectOneBudgetType")
				@ResponseBody
				public BudgetType selectOneBudgetType(Integer budget_type_id,Model model,HttpSession session) {
					BudgetType budgetType=adminService.selectOneBudgetType(budget_type_id);
					model.addAttribute("budgetType",budgetType);
					return budgetType;
				}
				
				//修改费用类别预算-季度
				@RequestMapping("updateBudgetTypeQuarter")
				@ResponseBody
				public String updateBudgetTypeQuarter(BudgetType budgetType,HttpSession session) {
					String msg="1";
					try {
						adminService.updateBudgetTypeQuarter(budgetType);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				//修改费用类别预算-年度
				@RequestMapping("updateBudgetTypeYear")
				@ResponseBody
				public String updateBudgetTypeYear(BudgetType budgetType,HttpSession session) {
					String msg="1";
					try {
						adminService.updateBudgetTypeYear(budgetType);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				
				
				//查询某位部门类别预算
				@RequestMapping("selectOneDepartmentBudget")
				@ResponseBody
				public Department selectOneDepartmentBudget(Integer department_id,Model model,HttpSession session) {
					Department department=adminService.selectOneDepartmentBudget(department_id);
					model.addAttribute("department",department);
					return department;
				}
				
				//修改部门类别预算-季度
				@RequestMapping("updateBudgetDepartmentQuarter")
				@ResponseBody
				public String updateBudgetDepartmentQuarter(Department department,HttpSession session) {
					String msg="1";
					try {
						adminService.updateBudgetDepartmentQuarter(department);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				//修改费用类别预算-年度
				@RequestMapping("updateBudgetDepartmentYear")
				@ResponseBody
				public String updateBudgetDepartmentYear(Department department,HttpSession session) {
					String msg="1";
					try {
						adminService.updateBudgetDepartmentYear(department);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				
				
				//查询请假天数
				@RequestMapping("selectLeaveDay")
				@ResponseBody
		     public ModelAndView selectLeaveDay(HttpSession session,Model model) {
					String msg="1";
					try {
						ArrayList<LeaveDay> leaveDay=adminService.selectLeaveDay();
						model.addAttribute("leaveDay",leaveDay);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					ModelAndView mv=new ModelAndView("admin_leave_day");
					return mv;
				}
				
				//查询请假天数
				@RequestMapping("editLeaveDay")
				@ResponseBody
				public LeaveDay editLeaveDay(Integer leave_day_id,Model model,HttpSession session) {
					LeaveDay leaveDay=adminService.selectOneLeaveDay(leave_day_id);
					model.addAttribute("leaveDay",leaveDay);
					return leaveDay;
				}
				
				//修改请假天数
				@RequestMapping("updateLeaveDay")
				@ResponseBody
				public String updateLeaveDay(LeaveDay leaveDay,HttpSession session) {
					String msg="1";
					try {
						adminService.updateLeaveDay(leaveDay);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				
				//查询用户数据-差旅报销、日常报销
				@RequestMapping("AdminSelectClbxAndRcbx")
				public ModelAndView selectClbxAndRcbx(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
					PageHelper.startPage(page, 5);
					ModelAndView mv = null;
					try
					{
						mv = new ModelAndView("admin_staff_clbxAndrcbx");
						
						ArrayList<UserClbx> userClbx=adminService.selectUserClbx();
						ArrayList<UserRcbx> userRcbx=adminService.selectUserRcbx();
						PageInfo<UserClbx> p1=new PageInfo<UserClbx>(userClbx);
						PageInfo<UserRcbx> p2=new PageInfo<UserRcbx>(userRcbx);
						model.addAttribute("page1", p1);
						model.addAttribute("userClbx", userClbx);
						model.addAttribute("page2", p2);
						model.addAttribute("userRcbx", userRcbx);
				       
						mv.setViewName("admin_staff_clbxAndrcbx");
						
					} catch (Exception e) {
						e.printStackTrace();
					}
					return mv;
				}
				
				//查询用户数据-借款、还款
				@RequestMapping("AdminSelectJkAndHk")
				public ModelAndView AdminSelectJkAndHk(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
					PageHelper.startPage(page, 5);
					ModelAndView mv = null;
					try
					{
						mv = new ModelAndView("admin_staff_jkAndhk");
						ArrayList<UserJk> userJk=adminService.selectUserJk();
						ArrayList<UserHk> userHk=adminService.selectUserHk();
						
						PageInfo<UserJk> p4=new PageInfo<UserJk>(userJk);
						PageInfo<UserHk> p5=new PageInfo<UserHk>(userHk);
						
						model.addAttribute("page4", p4);
						model.addAttribute("userJk", userJk);
						
						model.addAttribute("page5", p5);
						model.addAttribute("userHk", userHk);
				       
						mv.setViewName("admin_staff_jkAndhk");
						
					} catch (Exception e) {
						e.printStackTrace();
					}
					return mv;
				}
				
				//查询用户数据-出差申请
				@RequestMapping("AdminSelectCcsq")
				public ModelAndView AdminSelectCcsq(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
					PageHelper.startPage(page, 5);
					ModelAndView mv = null;
					try
					{
						mv = new ModelAndView("admin_staff_ccsq");
						ArrayList<UserCcsq> userCcsq=adminService.selectUserCcsq();
						PageInfo<UserCcsq> p3=new PageInfo<UserCcsq>(userCcsq);
						model.addAttribute("page3", p3);
						model.addAttribute("userCcsq", userCcsq);
				       
						mv.setViewName("admin_staff_ccsq");
						
					} catch (Exception e) {
						e.printStackTrace();
					}
					return mv;
				}
				
				//查询用户数据-请假
				@RequestMapping("AdminSelectQj")
				public ModelAndView AdminSelectQj(@RequestParam(required=true,defaultValue="1")Integer page,HttpSession session,Model model){
					PageHelper.startPage(page, 5);
					ModelAndView mv = null;
					try
					{
						mv = new ModelAndView("admin_staff_qj");
						ArrayList<UserQj> userQj=adminService.selectUserQj();
						
						PageInfo<UserQj> p6=new PageInfo<UserQj>(userQj);
				       
						model.addAttribute("page6", p6);
						model.addAttribute("userQj", userQj);
				        
				       
						mv.setViewName("admin_staff_qj");
						
					} catch (Exception e) {
						e.printStackTrace();
					}
					return mv;
				}
				
				//添加差旅报销
				@RequestMapping("AdminAddClbx")
				@ResponseBody
				public ModelAndView AdminAddClbx(@RequestParam(value="file")MultipartFile file, UserClbx userClbx, ModelMap map,HttpSession session)
				{   
					String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
					userClbx.setClbx_tjtime(Timestamp.valueOf(nowTime));
					userClbx.setClbx_delete("未删");
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
							adminService.AdminAddClbx(userClbx);
							msg="0";
						} catch (Exception e) {
							e.printStackTrace();
						}
						ModelAndView mv=new ModelAndView("redirect:/AdminSelectClbxAndRcbx.action");
						return mv;
			   }
				
				
				//查询某条差旅报销
				@RequestMapping("AdminSelectOneClbx")
				@ResponseBody
				public UserClbx AdminSelectOneClbx(Integer clbx_id) {
					UserClbx userClbx=adminService.AdminSelectOneClbx(clbx_id);
					return userClbx;
				}
				
				//删除本条差旅报销
				@RequestMapping("AdminDeleteOneClbx")
				@ResponseBody
				public String AdminDeleteOneClbx(int clbx_id) {
					String msg="1";
					try {
						adminService.AdminDeleteOneClbx(clbx_id);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				
				//添加差旅报销
				@RequestMapping("AdminAddRcbx")
				@ResponseBody
				public ModelAndView AdminAddRcbx(@RequestParam(value="file")MultipartFile file, UserRcbx userRcbx, ModelMap map,HttpSession session)
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
							adminService.AdminAddRcbx(userRcbx);
							msg="0";
						} catch (Exception e) {
							e.printStackTrace();
						}
						ModelAndView mv=new ModelAndView("redirect:/AdminSelectClbxAndRcbx.action");
						return mv;
			   }
				
				
				
				//查询某条日常报销
				@RequestMapping("AdminSelectOneRcbx")
				@ResponseBody
				public UserRcbx AdminSelectOneRcbx(Integer rcbx_id) {
					UserRcbx userRcbx=adminService.AdminSelectOneRcbx(rcbx_id);
					return userRcbx;
				}
				
				//删除本条日常报销
				@RequestMapping("AdminDeleteOneRcbx")
				@ResponseBody
				public String AdminDeleteOneRcbx(int rcbx_id) {
					String msg="1";
					try {
						adminService.AdminDeleteOneRcbx(rcbx_id);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				//添加借款
				@RequestMapping("AdminAddJk")
				@ResponseBody
				public ModelAndView AdminAddJk(UserJk userJk,HttpSession session)
				{ 
					userJk.setJk_state("未审批");
					userJk.setJk_delete("未删");
					String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
					userJk.setJk_tjtime(Timestamp.valueOf(nowTime));
					adminService.AdminAddJk(userJk);
				    ModelAndView mv=new ModelAndView("redirect:/AdminSelectJkAndHk.action");
					return mv;
			   }
				
				
				//删除本条借款-真正删除
				@RequestMapping("AdminDeleteOneJk")
				@ResponseBody
				public String AdminDeleteOneJk(int jk_id) {
					String msg="1";
					try {
						adminService.AdminDeleteOneJk(jk_id);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				//某条出差申请
				@RequestMapping("AdminSelectOneJk")
				@ResponseBody
				public UserJk AdminSelectOneJk(Integer jk_id) {
					UserJk userJk=adminService.AdminSelectOneJk(jk_id);
					return userJk;
				}
				
				
				//添加还款
				@RequestMapping("AdminAddHk")
				@ResponseBody
				public ModelAndView AdminAddHk(@RequestParam(value="file")MultipartFile file, UserHk userHk, ModelMap map,HttpSession session)
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
							adminService.AdminAddHk(userHk);
						
						} catch (Exception e) {
							e.printStackTrace();
						}
						ModelAndView mv=new ModelAndView("redirect:/AdminSelectJkAndHk.action");
						return mv;
			   }
				
				//删除本条还款 -真正删除
				@RequestMapping("AdminDeleteOneHk")
				@ResponseBody
				public String AdminDeleteOneHk(int hk_id) {
					String msg="1";
					try {
						adminService.AdminDeleteOneHk(hk_id);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				//查询某条还款
				@RequestMapping("AdminSelectOneHk")
				@ResponseBody
				public UserHk AdminSelectOneHk(Integer hk_id) {
					UserHk userHk=adminService.AdminSelectOneHk(hk_id);
					return userHk;
				}
			

				//添加出差申请
				@RequestMapping("AdminAddCcsq")
				@ResponseBody
				public ModelAndView AdminAddCcsq(UserCcsq userCcsq,HttpSession session)
				{ 
					String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
					userCcsq.setCcsq_tjtime(Timestamp.valueOf(nowTime));
					userCcsq.setCcsq_delete("未删");
					adminService.AdminAddCcsq(userCcsq);
				    ModelAndView mv=new ModelAndView("redirect:/AdminSelectCcsq.action");
					return mv;
			   }
				
				//删除本条差旅报销-真正删除
				@RequestMapping("AdminDeleteOneCcsq")
				@ResponseBody
				public String AdminDeleteOneCcsq(int ccsq_id) {
					String msg="1";
					System.out.println("hahaha");
					try {
						adminService.AdminDeleteOneCcsq(ccsq_id);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				//修改某条出差申请
				@RequestMapping("AdminSelectOneCcsq")
				@ResponseBody
				public UserCcsq AdminSelectOneCcsq(Integer ccsq_id) {
					UserCcsq userCcsq=adminService.AdminSelectOneCcsq(ccsq_id);
					return userCcsq;
				}
				
				//添加差旅报销
				@RequestMapping("AdminAddQj")
				@ResponseBody
				public ModelAndView AdminAddQj(@RequestParam(value="file")MultipartFile file, UserQj userQj, ModelMap map,HttpSession session)
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
							adminService.AdminAddQj(userQj);
							msg="0";
						} catch (Exception e) {
							e.printStackTrace();
						}
						ModelAndView mv=new ModelAndView("redirect:/AdminSelectQj.action");
						return mv;
			   }
				
				//删除本条差旅报销-真正删除
				@RequestMapping("AdminDeleteOneQj")
				@ResponseBody
				public String AdminDeleteOneQj(int qj_id) {
					String msg="1";
					System.out.println("hahaha");
					try {
						adminService.AdminDeleteOneQj(qj_id);
						msg="0";
					} catch (Exception e) {
						e.printStackTrace();
					}
					return msg;
				}
				
				//查询某条差旅报销
				@RequestMapping("AdminSelectOneQj")
				@ResponseBody
				public UserQj AdminSelectOneQj(Integer qj_id) {
					System.out.println("我是请假！");
					UserQj userQj=adminService.AdminSelectOneQj(qj_id);
					
					return userQj;
				}
				
				
				//查询总额
				@RequestMapping("AdminShowPieChart")
				public ModelAndView AdminShowPieChart(HttpSession session,Model model){
					ModelAndView mv = null;
					try
					{
						mv = new ModelAndView("Admin_show_piechart");
						int clbx_sum=adminService.AdminSelectClbxSum();
						int rcbx_sum=adminService.AdminSelectRcbxSum();
						int ccsq_sum=adminService.AdminSelectCcsqSum();
						int jk_sum=adminService.AdminSelectJkSum();
						int hk_sum=adminService.AdminSelectHkSum();
						
						session.setAttribute("clbx_sum",clbx_sum);
						session.setAttribute("rcbx_sum",rcbx_sum);
						session.setAttribute("ccsq_sum",ccsq_sum);
						session.setAttribute("jk_sum",jk_sum);
						session.setAttribute("hk_sum",hk_sum);
						
						mv.setViewName("admin_show_piechart");
						
					} catch (Exception e) {
						e.printStackTrace();
					}
					return mv;
				}
				
}
