package com.dogdog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogdog.command.Service;
import com.dogdog.model.UserDAO;
import com.dogdog.model.UserVO;

public class LoginService implements Service{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		UserVO resultVO = null;
		
		String user_id = (String)request.getParameter("user_id");
		String user_pw = (String)request.getParameter("user_pw");
		
		UserVO vo = new UserVO(user_id, user_pw);
		UserDAO dao = new UserDAO();
		
		resultVO = dao.selectUser(vo);
		
		if(resultVO != null) {
			System.out.println("로그인 성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("resultVO", resultVO);
		} else {
			System.out.println("로그인 실패");
		}
		
		
		
		return "Main.jsp";
	}
	
}
