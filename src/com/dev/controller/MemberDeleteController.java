package com.dev.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.service.MemberService;
import com.dev.vo.MemberVO;

public class MemberDeleteController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");

		MemberVO member = new MemberVO();
		member.setId(id);
		
		// 서비스로직 호출
		MemberService service = MemberService.getInstance();
		service.memberDelete(id);
		
		request.setAttribute("member", member);
		RequestDispatcher rd = request.getRequestDispatcher("result/memberDeleteOutput.jsp");
		rd.forward(request, response);

	}

}
