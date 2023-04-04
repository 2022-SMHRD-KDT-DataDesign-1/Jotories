package com.dogdog.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogdog.command.Service;
import com.dogdog.model.DogDAO;
import com.dogdog.model.DogVO;
import com.dogdog.model.StoreMemberVO;

public class InsertDogService implements Service{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		String moveURL = "";
		
		String dog_name = (String)request.getParameter("dog_name");
		System.out.println(dog_name);
		String dog_gen = (String)request.getParameter("dog_gen");
		String dog_neutcheck = ((String)request.getParameter("dog_neutcheck")).equals("spayed") ? "N" : "Y";
		int dog_age = Integer.parseInt(request.getParameter("dog_age"));
		String dog_birth = (String)request.getParameter("dog_birth");
		String dog_enroll = (String)request.getParameter("dog_enroll");
		String dog_weight = (String)request.getParameter("dog_weight");
		String dog_memo = (String)request.getParameter("dog_memo");
		String user_id = (String)session.getAttribute("user_id");
		
		String member_name = (String)request.getParameter("member_name");
		System.out.println(member_name);
		String user_phone = (String)request.getParameter("user_phone");
		String store_ids = request.getParameter("store_id");
		int store_id = Integer.parseInt(store_ids);
		System.out.println(store_ids);
		String store_name = (String)request.getParameter("store_name");
		String store_type = (String)request.getParameter("store_type");
		String member_from = (String)request.getParameter("member_from");
		String member_to = (String)request.getParameter("member_to");
		String member_enroll = LocalDate.now().toString();
		
		DogVO vo = new DogVO(dog_name, dog_gen, dog_neutcheck, dog_age, dog_birth, dog_enroll, dog_weight, user_id);
		DogDAO dao = new DogDAO();
		
		
		int cnt = dao.insertDog(vo);
		int dog_no = 0;
		
		if(cnt > 0) {
			System.out.println("등록 성공");
			dog_no = dao.selectDog(vo).getDog_no();
		} else {
			System.out.println("등록 실패");
		}
		
		if(dog_no != 0) {
			System.out.println("강아지 데려오기 성공");
			StoreMemberVO smVO = new StoreMemberVO(store_id, user_id, dog_no, member_from, member_to, member_enroll, member_name, user_phone);
			session.setAttribute("smVO", smVO);
			moveURL = "reservePage.jsp";
		} else {
			System.out.println("강아지 데려오기 실패");
			moveURL = "#";
		}
		return moveURL;
	}
	
}
