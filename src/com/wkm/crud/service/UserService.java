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
	 * �޸��û�
	 * @param user
	 */
	public void updateUser(User user){
		userRepository.saveAndFlush(user);
	}
	
	/**
	 * �����û�
	 * @param user
	 */
	public void insertUser(User user){
		user.setCreatetime(new Date());
		userRepository.saveAndFlush(user);
	}
	
	
	/**
	 * ����ID�����û�
	 * @param id
	 * @return
	 */
	public User findUser(Integer id){
		return userRepository.findOne(id);
	}
	
	/**
	 * ɾ���û�
	 * @param id
	 */
	public void delUser(Integer id){
		userRepository.delete(id);
	}
	
	/**
	 * ��ȡ�û��б���Ϣ
	 */
	public List<User> getUsers(){
		return userRepository.findAll();
	}
}
