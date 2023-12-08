package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex01")

public class lesson04Ex01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 응답값 plain 
		response.setContentType("text/plain");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB 인서트
		String insertQuery = "insert into `used_goods`"
				+ "(`sellerId`,`title`,`description`,`price`)"
				+ "values"
				+ "(1, '강아지 간식 팝니다', '까다로워서 잘 언먹어요ㅜ', 2000)";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// DB 셀렉트 & 출력
		PrintWriter out = response.getWriter();
		String query = "select * from `used_goods`";
		try {
			ResultSet res = ms.select(query);
			while (res.next()) { // 결과 행이 있는 동안 수행
				out.println(res.getInt("id"));
				out.println(res.getString("title"));
				out.println(res.getInt("price"));
				out.println(res.getString("description"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
	}
}
