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
		UserVO login_vo = (UserVO) session.getAttribute("result_vo");
		
		String moveURL = "";
		String id = login_vo.getUser_id();
		String nick = request.getParameter("user_nick");
		// 이 부분이 예약자 이름을 써야 되는 부분인데 DB에 존재하지 않아서...
		String tel = request.getParameter("user_phone");
		
		UserVO vo = new UserVO(id, nick, tel);
		
		UserDAO dao = new UserDAO();
		int cnt = dao.updateUser(vo);
		
		if (cnt > 0) {
			System.out.println("수정성공!");
			session = request.getSession();
			session.setAttribute("result_vo", vo);
			moveURL = "Main.jsp";
		} else {
			System.out.println("수정실패...");
			moveURL = "MyPage.jsp";
		}
		
		return moveURL;
	}

}
