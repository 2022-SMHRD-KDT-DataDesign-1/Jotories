package com.dogdog.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogdog.command.Service;
import com.dogdog.model.StoreBoardDAO;
import com.dogdog.model.StoreMemberDAO;
import com.dogdog.model.StoreMemberVO;

public class ReservationService implements Service{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		
		HttpSession session = request.getSession();
		
		int store_id = Integer.parseInt(request.getParameter("store_id"));
		String user_id = (String)session.getAttribute("user_id");
		int dog_no = Integer.parseInt(request.getParameter("dog_no"));
		// 예약 시작일
		String member_from = request.getParameter("member_from");
		String member_to = request.getParameter("member_from");
		String member_enroll = LocalDate.now().toString();
		/* String member_note = request.getParameter("member_note"); */
		String member_name = request.getParameter("member_name");
		String user_phone = request.getParameter("user_phone");
		
		StoreMemberVO vo = new StoreMemberVO(store_id, user_id, member_from, member_to, member_enroll, member_name, user_phone);
		StoreMemberDAO dao = new StoreMemberDAO();
		
		int cnt = dao.insertMember(vo);
		
		if(cnt > 0) {
			System.out.println("등록 성공");
			moveURL = "";
		} else {
			System.out.println("등록 실패");
			moveURL = "";
		}
		
		
		
		return moveURL;
	}
	
}
