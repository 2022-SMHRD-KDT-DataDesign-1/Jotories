package com.dogdog.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogdog.command.Service;
import com.dogdog.controller.DetailPageService;
import com.dogdog.controller.JoinService;
import com.dogdog.controller.LoginService;
import com.dogdog.controller.LogoutService;
import com.dogdog.controller.StoreListService;
import com.dogdog.controller.UpdateService;


/**
 * Servlet implementation class Frontcontroller
 */
@WebServlet({ "/Frontcontroller", "*.do" })
public class Frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String moveURL = "";
		Service service = null;
		
		System.out.println("[Frontcontroller]");
		
		// post 방식 인코딩
		request.setCharacterEncoding("utf-8");
		
		// 어떤 요청이 들어왔는지 구분
		String reqURI = request.getRequestURI();
		System.out.println("요청 주소 : " + reqURI);
		
		// ContextRoot출력
		String contextPath = request.getContextPath();
		System.out.println(contextPath);
		
		// 요청한 값만 출력하기(substring 메소드 사용)
		// substring(start) : start 부터 끝까지 문자열 자르기
		// substring(start, end) : start to end -1 까지 문자열 자르기
		String result = reqURI.substring(contextPath.length() + 1);
		System.out.println(result);
		System.out.println(result);
		
		
		if(result.equals("LoginService.do")) {
			// 로그인 기능
			service = new LoginService();
			
		} else if(result.equals("JoinService.do")) {
			// 회원가입 기능
			service = new JoinService();
			
		} else if(result.equals("LogoutService.do")) {
			// 로그아웃 기능
			service = new LogoutService();
			
		} else if(result.equals("StoreListService.do")) {
			// 로그아웃 기능
		    service = new StoreListService();
		
		} else if(result.equals("DetailPageService.do")) {
			// 게시판 조회
			service = new DetailPageService();
		
		} else if(result.equals("UpdateService.do")) {
			service = new UpdateService();
		//		} else if(result.equals("DeleteBoardService.do")) {
		//			// 게시물 삭제
		//			service = new DeleteBoardService();
		//			
		// else if(result.equals("DeleteService.do")) {
			// 회원 삭제
//			service = new DeleteService();
		//			
		//			
		//		} else if(result.equals("MessageService.do")) {
		//			service = new MessageService();
		//		}
		//		else {
		//			moveURL = "Main.jsp";
		}
			
		moveURL = service.execute(request, response);
		response.sendRedirect(moveURL);

	}
}
