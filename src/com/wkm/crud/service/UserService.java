package com.wkm.crud.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wkm.crud.dao.UserRepository;
import com.wkm.crud.model.User;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	
	/**
	 * 修改用户
	 * @param user
	 */
	public void updateUser(User user){
		userRepository.saveAndFlush(user);
	}
	
	/**
	 * 新增用户
	 * @param user
	 */
	public void insertUser(User user){
		user.setCreatetime(new Date());
		userRepository.saveAndFlush(user);
	}
	
	
	/**
	 * 根据ID查找用户
	 * @param id
	 * @return
	 */
	public User findUser(Integer id){
		return userRepository.findOne(id);
	}
	
	/**
	 * 删除用户
	 * @param id
	 */
	public void delUser(Integer id){
		userRepository.delete(id);
	}
	
	/**
	 * 获取用户列表信息
	 */
	public List<User> getUsers(){
		return userRepository.findAll();
	}
}
