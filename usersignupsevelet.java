import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class usersignupsevelet extends HttpServlet{
    @Override
            protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
            {
                processing(request,response);
            }
            
     @Override
             protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
            {
                processing(request,response);
            }
            
    void processing(HttpServletRequest request, HttpServletResponse response){
        try{
            String button1=request.getParameter("btn1");
    if(button1!=null && button1.equals("SIGNUP")){
    String userId = request.getParameter("uId");
    String uname = request.getParameter("name");
    String mail = request.getParameter("email");
    int aa = Integer.parseInt(request.getParameter("aadhar"));
    String license = request.getParameter("lic");
    String address = request.getParameter("add");
    String password = request.getParameter("pass");
    
 
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "7877shris");
        PreparedStatement st = c.prepareStatement("insert into usertable values(?,?,?,?,?,?,?)");
        st.setString(1,userId);
        st.setString(2, uname); 
        st.setString(3, mail); 
        st.setInt(4, aa);
        st.setString(5, license); 
        st.setString(6, address); 
        st.setString(7, password); 
        st.executeUpdate();
        c.close();
        response.sendRedirect("usersignin.jsp");
    }
    else{
    System.out.println("abc");
    }
        }
        catch(Exception ex){
            
        }
    }
    
}
