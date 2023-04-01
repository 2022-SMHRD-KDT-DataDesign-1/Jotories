package com.dogdog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogdog.command.Service;
import com.dogdog.model.StoreDAO;
import com.dogdog.model.StoreVO;

public class InsertStoreService implements Service{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		
		HttpSession session = request.getSession();
		
		String store_name = request.getParameter("store_name");
		String store_addr = request.getParameter("store_addr");
		String store_tel = request.getParameter("store_tel");
		String store_owner = request.getParameter("store_owner");
		String user_id = (String)session.getAttribute("user_id");
		String store_type = request.getParameter("store_type");
		
		StoreVO vo = new StoreVO(store_name, store_addr, store_tel, store_owner, user_id, store_type);
		StoreDAO dao = new StoreDAO();
		
		int cnt = dao.insertStore(vo);
		
		if(cnt > 0) {
			System.out.println("등록 성공");
		} else {
			System.out.println("등록 실패");
		}
		
		return moveURL;
	}

	
}
