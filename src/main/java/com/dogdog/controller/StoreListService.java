package com.dogdog.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogdog.command.Service;
import com.dogdog.model.StoreDAO;
import com.dogdog.model.StoreVO;

public class StoreListService implements Service{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String[] store_type_list = request.getQueryString().split("=");
		String store_type = store_type_list[1];
		System.out.println(store_type);
		
		if(store_type.equals("school")) {
			store_type = "유치원";
		} else if(store_type.equals("hotel")) {
			store_type = "호텔";
		} else if(store_type.equals("hospital")) {
			store_type = "병원";
		} else if(store_type.equals("salon")) {
			store_type = "미용";
		}
		
		StoreDAO dao = new StoreDAO();
		ArrayList<StoreVO> resultStoreList = dao.selectAllList(store_type);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("resultStoreList", resultStoreList);
		
		return "listPage.jsp";
	}
	
}
