package controllers;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import javax.servlet.annotation.WebServlet;
import models.User;
@WebServlet("/create.do")
public class CreateNewAccount extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        String name = request.getParameter("name");
        String date = request.getParameter("date");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        // System.out.println(name);
        // System.out.println(date);
        // System.out.println(gender);
        // System.out.println(address);
        // System.out.println(city);
        // System.out.println(state);
        // System.out.println(email);
        // System.out.println(password);  
        User user = new User(name,date,gender,address, city, state,email,password);     
        boolean flag = user.addUser(user);
        if(flag){
            response.sendRedirect("login.do");
        }
    }
}