package com.wkm.crud.test;


import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class TestWEB {

	private ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
	
	@Test
	public void test() {
		DataSource dataSource = ac.getBean(DataSource.class);
		try {
			System.out.println(dataSource.getConnection());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
