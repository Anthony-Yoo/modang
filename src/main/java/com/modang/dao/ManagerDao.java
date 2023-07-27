package com.modang.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.modang.vo.ManagerVo;

@Repository
public class ManagerDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	/*회원가입*/
	public void insertManager(ManagerVo managerVo){
		System.out.println("ManagerDao.insertManager.managerVo");
		sqlSession.insert("manager.insertManager",managerVo);
	}
	
	/*회원가입 id 중복체크*/
	public ManagerVo selectManager(String id) {
		System.out.println("ManagerDao.selectManager"+id);
		ManagerVo managerVo = sqlSession.selectOne("manager.selectManagerById",id);
		return managerVo;
	}
	
	/*로그인*/
	public ManagerVo selectManager(ManagerVo managerVo){
		System.out.println("ManagerDao.selectManager");
		ManagerVo loginManager = sqlSession.selectOne("manager.selectManager",managerVo);
		System.out.println(loginManager);
		return loginManager;
	}

}