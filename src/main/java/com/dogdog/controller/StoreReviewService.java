package com.dogdog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogdog.command.Service;
import com.dogdog.model.StoreReviewDAO;
import com.dogdog.model.StoreReviewVO;

public class StoreReviewService implements Service{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		
		HttpSession session = request.getSession();
		
		String user_id = request.getParameter("user_id");		
		int store_id = 1;
		String review_content = request.getParameter("review_content");
		String review_date = request.getParameter("review_date");
		double review_rate = Double.parseDouble(request.getParameter("review_rate"));
		
		StoreReviewVO vo = new StoreReviewVO(user_id, store_id, review_content, review_date, review_rate);
		StoreReviewDAO dao = new StoreReviewDAO();
		
		int cnt = dao.insertReview(vo);
		
		if(cnt > 0) {
			System.out.println("등록 완료");
		} else {
			System.out.println("등록 실패");
		}
		
		moveURL = "#";
		
		return moveURL;
	}
	
}
