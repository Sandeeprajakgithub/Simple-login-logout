package controllers;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.*;
import models.*;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        try{
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }catch(ServletException e){
            e.printStackTrace();
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        // System.out.println("#####");
        User user = new User(email,password);
        if(user.loginUser(user)){
            session.setAttribute("logins",user);
            response.sendRedirect("welcome.jsp");
        }else{
            response.sendRedirect("index.jsp");
        }
    }
}