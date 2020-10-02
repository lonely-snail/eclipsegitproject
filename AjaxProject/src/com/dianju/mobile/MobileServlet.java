package com.dianju.mobile;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MobileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MobileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		//没有办法返回   使用输入输出流
		
		
		String    mobile = request.getParameter("mobile");
		PrintWriter  write = response.getWriter();//输出流
		//if(mobile.equals("13753529449")) {
		if("13753529449".equals(mobile)) {
			//return   "true";
			//write.print("true");
			//write.print("号码已存在");
			//返回j'son
			write.write(" { \"msg\":\"true\"  }");//"  \"msg\":\"true\"  "
		}else {
			//return   "false";
			//write.print("false");
			//write.print("注册成功");]
			write.write(" { \"msg\":\"false\" } ");
		}
		write.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
