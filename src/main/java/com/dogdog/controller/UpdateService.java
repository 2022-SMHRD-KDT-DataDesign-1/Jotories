package com.dogdog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogdog.command.Service;
import com.dogdog.model.UserDAO;
import com.dogdog.model.UserVO;

public class UpdateService implements Service {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		UserVO resultVO = (UserVO) session.getAttribute("resultVO");
		
		String moveURL = "";
		String user_id = resultVO.getUser_id();
		String user_nick = request.getParameter("user_nick") != null ? request.getParameter("user_nick") : resultVO.getUser_nick();
		String user_email = request.getParameter("user_email") != null ? request.getParameter("user_email") : resultVO.getUser_email();
		String user_phone = request.getParameter("user_phone") != null ? request.getParameter("user_phone") : resultVO.getUser_phone();
		
		UserVO vo = new UserVO(user_id, user_nick, user_email, user_phone);
		
		UserDAO dao = new UserDAO();
		int cnt = dao.updateUser(vo);
		
		if (cnt > 0) {
			System.out.println("수정성공!");
			session = request.getSession();
			session.setAttribute("result_vo", vo);
			moveURL = "editcontent.jsp";
		} else {
			System.out.println("수정실패...");
			moveURL = "editcontent.jsp";
		}
		
		return moveURL;
	}

}
