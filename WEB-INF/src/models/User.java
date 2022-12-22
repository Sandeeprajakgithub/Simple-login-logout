package models;
import java.sql.*;
import java.util.*;
import java.io.*;

public class User{
    private String userId;
    private String name;
    private String date;
    private String gender;
    private String address;
    private String city;
    private String state;
    private String email;
    private String password;
    public User() {
    	
    }
    public User(String email) {
    	this.email = email;
    }
    public User(String name, String date,String gender,String address,String city,String state,String email,String password){
        this.name = name;
        this.date = date;
        this.gender = gender;
        this.address = address;
        this.city = city;
        this.state = state;
        this.email = email;
        this.password = password;
    }
    public User(String email,String password){
        this.password = password;
        this.email = email;
    }
    public static boolean forPassword(String email) {
    	boolean flag = false;
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ocl?user=root&password=1234");
    		String query = "select * name from users where email=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                flag=true;
            }
    	}catch(SQLException|ClassNotFoundException e) {
    		e.printStackTrace();
    	}
    	return flag;
    }
    public static ArrayList getAllRec(){
        ArrayList list = new ArrayList();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ocl?user=root&password=1234");
            String query = "select * from users";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new User(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9)));
            }
            con.close();
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return list;
    }
    public boolean loginUser(User user){
        boolean flag = false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ocl?user=root&password=1234");
            String query = "select * from users where email=? and password=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,user.email);
            ps.setString(2,user.password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                flag = true;
            }
            con.close();
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return flag;
    }
    public boolean addUser(User user){
        boolean flag = false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ocl?user=root&password=1234");
            String query = "insert into users (name,date,gender,address,city,state,email,password) value (?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,user.name);
            ps.setString(2,user.date);
            ps.setString(3,user.gender);
            ps.setString(4,user.address);
            ps.setString(5,user.city);
            ps.setString(6,user.state);
            ps.setString(7,user.email);
            ps.setString(8,user.password);
            int i = ps.executeUpdate();
            if(i == 1){
                flag = true;
            }
            con.close();
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return flag;
    }
    public String getState(){
        return state;
    }
    public String getCity(){
        return city;
    }
    public String getAddress(){
        return address;
    }
    public String getGender(){
        return gender;
    }
    public String getDate(){
        return date;
    }
    public String getName(){
        return name;
    }
    public String getUserId(){
        return userId;
    }
    public String getEmail(){
        return email;
    }
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
}