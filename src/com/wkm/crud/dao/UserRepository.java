package com.wkm.crud.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wkm.crud.model.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	
}
