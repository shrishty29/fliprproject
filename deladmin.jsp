<%@page import="java.sql.Connection,java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
    String button1 = request.getParameter("btn");
    if (button1 != null && button1.equals("DELETE")) {
        String userN = request.getParameter("uNM");
        String email = request.getParameter("mail");
        String password = request.getParameter("pass");

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "7877shris");
        PreparedStatement st = c.prepareStatement("delete from admin where adminid=? and password=?");
        st.setString(1, userN);
        st.setString(2, password);
        st.executeUpdate();
        response.sendRedirect("admindashb.jsp");
    }
%>

<html>
<head>   
    <style>
        body {
            background-image: url('image/login parking.jpg');
            background-repeat: no-repeat;
            background-size: 100%;
            
            font-family: arial;
        }
        .divtheme {
            background-color: rgba(0, 0, 0, 0.5);
            width: 900px;
            height: 500px;
            margin: 50px auto;
            text-align: center;
         
            
        }
        .tbtheme{
           color:black;
           font-size: 20px;
           text-transform:uppercase;
           font-family: berlin sans fb;
           text-align: center;
           
       }
        .tbtheme:hover{
            background-color:gray;
        }
        .texttheme {
            width: 300px;
            height: 30px;
            color:black;
        }
        .buttontheme {
            width: 100px;
            height: 40px;
            color: white;
            background-color: black;
            font-family: arial;
            font-size: 13px;
        }
        a {
            color: white;
        }
        h1 {
            font-size: 70px;
            color: white;
            font-weight: bold;
            margin: 0;
        }
        td{
            color: white;
        }
        .tabtheme{
           background-color: rgba(255,255,255,0.5);
           height: 70px;
           color:black;
       }
       
    </style>
</head>
<body>
          <table width='100%'  class='tabtheme'>
            <tr>
                <td class='tbtheme'><a href="AdmincreateAcc.jsp">create account</a></td>
                <td class='tbtheme'><a href="viewComplain.jsp">view public complains</a></td>
                <td class='tbtheme'><a href="deladmin.jsp">delete account</a></td>
                <td class='tbtheme'><a href="viewallusers.jsp">view all users</a></td>
                <td class='tbtheme'><a href="viewallEmp.jsp">view all employee</a></td>
                <td class='tbtheme'><a href="admin_setting.jsp">settings</a></td>
            </tr>
        </table>
    <div class="divtheme">
        <h1>park ease.</h1>
        <form action=""  method="post">
        <table align="center" cellspacing="20px" >
            <tr align="center" bgcolor="black">
                <td colspan="4">Delete account</td>
            </tr>
            <tr>
                
                <td>user id</td>
                <td><input type="text"  name="uNM" placeholder="Enter user id" class="texttheme"></td>
            </tr>
           
          <tr align="center">
                <td> password</td>
                <td><input type="password" name="pass" placeholder="Enter password here" class="texttheme"></td>
            </tr>
            <tr align="center">
                <td colspan="4"><input type="submit" value="DELETE" name="btn" class="buttontheme">             
                </td>
            </tr>
          
        </table>
        </form>
    </div>
   
</body>
</html>