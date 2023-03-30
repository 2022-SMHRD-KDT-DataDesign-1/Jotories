package com.dogdog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogdog.command.Service;
import com.dogdog.model.StoreBoardDAO;
import com.dogdog.model.StoreBoardVO;

public class AddStoreBoardService implements Service{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		
		HttpSession session = request.getSession();
		
		int store_id = Integer.parseInt(request.getParameter("store_id"));
		String store_title = (String)request.getParameter("store_title");
		String store_content = (String)request.getParameter("store_content");
		
		StoreBoardVO vo = new StoreBoardVO(store_id, store_title, store_content);
		StoreBoardDAO dao = new StoreBoardDAO();
		
		int cnt = dao.insertBoard(vo);
		
		if(cnt > 0) {
			System.out.println("등록 성공");
		} else {
			System.out.println("등록 실패");
		}
		
		return moveURL;
	}
	
}
