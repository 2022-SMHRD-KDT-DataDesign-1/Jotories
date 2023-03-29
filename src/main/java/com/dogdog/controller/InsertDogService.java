package com.dogdog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogdog.command.Service;
import com.dogdog.model.DogDAO;
import com.dogdog.model.DogVO;

public class InsertDogService implements Service{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		String moveURL = "";
		
		DogVO resultVO = null;
		
		String dog_name = (String)request.getParameter("dog_name");
		String dog_gen = (String)request.getParameter("dog_gen");
		String dog_neutcheck = (String)request.getParameter("dog_neutcheck");
		int dog_age = Integer.parseInt(request.getParameter("dog_age"));
		String dog_birth = (String)request.getParameter("dog_birth");
		String dog_enroll = (String)request.getParameter("dog_enroll");
		String dog_weight = (String)request.getParameter("dog_weight");
		String dog_memo = (String)request.getParameter("dog_memo");
		String user_id = (String)session.getAttribute("user_id");
		
		DogVO vo = new DogVO(dog_name, dog_gen, dog_neutcheck, dog_age, dog_birth, dog_enroll, dog_weight, dog_memo, user_id);
		DogDAO dao = new DogDAO();
		
		int cnt = dao.insertDog(vo);
		
		if(cnt > 0) {
			System.out.println("등록 성공");
		} else {
			System.out.println("등록 실패");
		}
		
		moveURL = "#";
		return moveURL;
	}
	
}
