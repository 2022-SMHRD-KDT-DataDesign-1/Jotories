package com.dogdog.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogdog.command.Service;
import com.dogdog.model.StoreBoardDAO;
import com.dogdog.model.StoreBoardVO;

public class DetailPageService implements Service{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String store_ids = request.getParameter("store");
		int store_id = Integer.parseInt(store_ids);
		String sel_date = request.getParameter("sel_date");
		String sel_date2 = request.getParameter("sel_date2");
		System.out.println(store_id);
		
		StoreBoardDAO sbDAO = new StoreBoardDAO();
		StoreBoardVO resultVO = sbDAO.selectBoard(store_id);
		
//		HttpSession session = request.getSession();
//		session.setAttribute("storeBoardVO", resultVO);
		
		String moveURL = "detailPage.jsp?store=" + store_id + "&sel_date="+sel_date + "&sel_date2="+sel_date2;
		
		return moveURL;
	}
	
}
