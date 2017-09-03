package noname.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import noname.user.dao.UserDAO;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource(name="userDAO")
	private UserDAO userDAO;
}
