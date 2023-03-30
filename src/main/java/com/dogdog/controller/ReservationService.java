package com.dogdog.controller;

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
		String member_from = (String)request.getParameter("member_from");
		// 예약 종료일
		String member_to = (String)request.getParameter("member_to");
		// 특이사항 노트
		String member_note = (String)request.getParameter("member_note");
		// 예약 등록일
		
		StoreMemberVO vo = new StoreMemberVO(store_id, user_id, dog_no, member_from, member_to, member_note);
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
