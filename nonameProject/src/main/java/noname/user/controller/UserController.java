package noname.user.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import noname.user.service.UserService;

@Controller
public class UserController {
	
	@Resource(name="userService")
	private UserService userService;

}
