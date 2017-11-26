package com.wkm.crud.controller;

import java.util.Map;

import org.hibernate.sql.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wkm.crud.model.User;
import com.wkm.crud.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	
	@ModelAttribute
	public void getEmployee(@RequestParam(value="id",required=false)Integer id,Map<String,Object> map){
		if(id != null){
			User user = userService.findUser(id);
			map.put("user", user);
		}
	}
	
	/**
	 * 修改用户
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/user/edit",method=RequestMethod.PUT)
	public String update(User user){
		userService.updateUser(user);
		return "redirect:/user/index";
	}
	
	/**
	 * 新增用户
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/user/edit",method=RequestMethod.POST)
	public String insert(User user){
		if(user != null){
			userService.insertUser(user);
		}
		return "redirect:/user/index";
	}
	
	
	/**
	 * 删除用户
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/user/del/{id}")
	public String del(@PathVariable(value="id")Integer id){
		if(id != null){
			userService.delUser(id);
		}
		return "redirect:/user/index";
	}
	
	/**
	 * 修改与新增页面
	 * @param id
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/user/edit" ,method=RequestMethod.GET)
	public String edit(@RequestParam(value="id",required=false)Integer id,Map<String, Object> map){
		User user = new User();
		if(id != null){
			user = userService.findUser(id);
		}
		map.put("user", user);
		return "/user/edit";
	}
	
	/**
	 * 用户列表
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/user/index")
	public String index(Map<String,Object> map){
		map.put("userlist", userService.getUsers());
		return "/user/index";
	}
}
