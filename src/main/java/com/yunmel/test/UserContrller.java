package com.yunmel.test;

import com.yunmel.tools.annotation.Autowired;
import com.yunmel.tools.annotation.Controller;

@Controller
public class UserContrller {
	@Autowired
	public UserService userService;

	public void login() {
		userService.run();
	}
}