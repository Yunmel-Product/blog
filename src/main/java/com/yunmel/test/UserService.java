package com.yunmel.test;

import com.yunmel.tools.annotation.Autowired;
import com.yunmel.tools.annotation.Service;

@Service
public class UserService {
	@Autowired
	public UserDao userDao;

	public void run() {
		userDao.run();
	}

}