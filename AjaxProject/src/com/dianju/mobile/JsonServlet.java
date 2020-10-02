package com.dianju.mobile;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class JsonServlet
 */
public class JsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JsonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8"); 
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		//没有办法返回   使用输入输出流
		
		
		String    mobile = request.getParameter("name");
		System.out.println("mobile为"+ mobile);
		String    age = request.getParameter("age");
		System.out.println("age为"+ age);
		PrintWriter  write = response.getWriter();//输出流
		Student  stu = new  Student();
		stu.setAge(23);
		stu.setName("test");
		
		Student  stu1 = new  Student();
		stu1.setAge(23);
		stu1.setName("test");
		
		Student  stu2= new  Student();
		stu2.setAge(23);
		
		stu2.setName("tes1t");
		//write.write(" { \"msg\":\"true\"  }");//"  \"msg\":\"true\"  "  这个拼接太麻烦了
		
		JSONObject    jsonObject = new  JSONObject();
		jsonObject.put("stu", stu);
		jsonObject.put("stu1", stu1);
		jsonObject.put("stu2", stu2);

		write.print(jsonObject);
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
