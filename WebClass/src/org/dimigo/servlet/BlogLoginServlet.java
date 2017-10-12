package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet( "/bloglogin" )
public class BlogLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //jsp포워딩
        RequestDispatcher rd = request.getRequestDispatcher("myblog/login.jsp");
        rd.forward(request,response);


    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        String pwd = request.getParameter("pwd");
        System.out.printf("id : %s, pwd: %s\n",id,pwd);

        //id, pwd 정합성 체크

        if(id.equals("test@naver.com")) {
            //세션에 사용자 정보를 생성해서 담기
            HttpSession session =	request.getSession();
            UserVO user= new UserVO();
            user.setId(id);
            user.setName("이승규");
            user.setNickname("seung");
            session.setAttribute("user",user);
            RequestDispatcher rd = request.getRequestDispatcher("myblog/index.jsp");
            rd.forward(request, response);

        } else {
            request.setAttribute("msg","error");
            RequestDispatcher rd = request.getRequestDispatcher("myblog/login.jsp");
            rd.forward(request, response);
        }
    }
    protected void doPost2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        String pwd = request.getParameter("pwd");
        System.out.printf("id : %s, pwd: %s\n",id,pwd);

        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();

		/*
		 * {
		 * "id" : "testid"
		 *
		 *
		 */
		/*out.println("{");
		out.println("\"id\":"+"\""+id+"\"");
		out.println("}");*/

        //Json simple Library
		/*
		JSONObject json = new JSONObject();
		json.put("id", id);
		out.write(json.toJSONString());*/

        //GSO


    }


}
