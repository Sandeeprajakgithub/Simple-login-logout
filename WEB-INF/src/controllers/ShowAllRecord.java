package controllers;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.*;
import models.User;
import com.google.gson.Gson;
import java.util.*;
@WebServlet("/showallrec")
public class ShowAllRecord extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        HttpSession session = request.getSession();
        
            ArrayList list = User.getAllRec();
            session.setAttribute("LIST",list);
            
            Gson gson = new Gson();
            String records = gson.toJson(list);
            System.out.println(records);
            System.out.println("got the request showproductServlet.java");
            response.getWriter().write(records);
    }
}