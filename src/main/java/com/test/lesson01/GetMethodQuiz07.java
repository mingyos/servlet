package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")

public class GetMethodQuiz07 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title></title></head><body>");
		
		if(address.startsWith("서울시") == false) {
			out.print("배달불가");
		} else if (card.equals("신한카드")) {
			out.print("결제불가");
		} else {
			out.print(address + "<b>배달 준비중</b><br>");
			out.print("결제금액: " + price + "원");	
		}
		out.print("</body></html>");
		
	}
}
