package com.modang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modang.dao.UserDao;
import com.modang.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	/*회원가입*/
	public int join(UserVo userVo) {
		System.out.println("UserService.join()");
		System.out.println(userVo);
		int count=userDao.insertUser(userVo);
		
		return count;
		
	}
	/*로그인*/
	public void login() {
		System.out.println("UserService.login()");
		System.out.println();
		
		userDao.selectUser();
	}
	/*id check
	public void idCheck(String id) {
		System.out.println("UserService.idCheck()");
		
		userDao.selectUser(id);
	}
*/
}
