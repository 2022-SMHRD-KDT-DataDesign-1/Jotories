package com.dogdog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogdog.command.Service;
import com.dogdog.model.UserDAO;
import com.dogdog.model.UserVO;

public class JoinService implements Service{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_nick = request.getParameter("user_nick");
		String user_ownercheck = request.getParameter("user_ownercheck");
		String user_phone = request.getParameter("user_phone");
		String user_email = request.getParameter("user_email");
		String user_addr = request.getParameter("user_addr");
		
		System.out.println(user_id + user_pw);
		
		UserVO vo = new UserVO(user_id, user_pw, user_nick
							 , user_ownercheck, user_phone, user_email, user_addr);
		UserDAO dao = new UserDAO();
		
		int cnt = dao.insertUser(vo);
		
		if(cnt > 0) {
			System.out.println("회원가입 성공");
		} else {
			System.out.println("회원가입 실패");
		}
		
		
		return moveURL;
	}
	
	

}
