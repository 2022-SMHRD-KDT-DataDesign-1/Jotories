package com.dogdog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogdog.command.Service;
import com.dogdog.model.UserDAO;
import com.dogdog.model.UserVO;

public class DeleteService implements Service {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		UserVO login_vo = (UserVO) session.getAttribute("result_vo");
		
		String id = login_vo.getUser_id();
		
		UserDAO dao = new UserDAO();
		int cnt = dao.deleteUser(id);
		
		if (cnt > 0) {
			System.out.println("삭제성공");
		} else {
			System.out.println("삭제실패...");
		}
		
		return "Main.jsp";
	}

}
