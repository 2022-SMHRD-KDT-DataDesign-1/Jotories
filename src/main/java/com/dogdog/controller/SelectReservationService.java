package com.dogdog.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogdog.command.Service;
import com.dogdog.model.StoreMemberDAO;
import com.dogdog.model.StoreMemberVO;

public class SelectReservationService implements Service{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String user_id = request.getParameter("user_id");
		
		return "MyPage.jsp?user="+user_id;
	}
	
}
