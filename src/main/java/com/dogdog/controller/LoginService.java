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
		
		System.out.println("들어오니1");
		
		UserVO vo = new UserVO(user_id, user_pw);
		UserDAO dao = new UserDAO();
		System.out.println("들어오니2");
		resultVO = dao.selectUser(vo);
		System.out.println("들어오니3");
		System.out.println(resultVO);
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
