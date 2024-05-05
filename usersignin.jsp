<%@page import="java.sql.Connection,java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
    int RESULT=0;
    String button2 = request.getParameter("btn");
    if (button2!= null && button2.equals("SIGNIN")) {

    String userN = request.getParameter("uNM");
        String email = request.getParameter("mail");
        String password = request.getParameter("pass");

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "7877shris");
        PreparedStatement st = c.prepareStatement("select * from usertable where userid=? and password=?");
        st.setString(1, userN);
        st.setString(2, password);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
           
            session.setAttribute("121",userN);
            Cookie ck=new Cookie("parkease_1",userN);
            ck.setMaxAge(100000);
            response.addCookie(ck);
            response.sendRedirect("userdashboard.jsp");
        } else {
            RESULT=1;
        }
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
        <table width="100%" class="tabtheme">
            <tr>
                <td class="tbtheme"><a href="welcomepage.jsp">Home</a></td>
                <td class="tbtheme"><a href="services.jsp">Services</a></td>
                <td class="tbtheme"><a href="contact.jsp">Contact</a></td>
                <td class="tbtheme"><a href="Aboutpage.jsp">About</a></td>
                <td class="tbtheme"><a href="usersignup.jsp">Signin/Signup</a></td>
            </tr>
        </table>
    <div class="divtheme">
        <h1>park ease.</h1>
        <form action=""  method="post">
        <table align="center" cellspacing="20px" >
            <tr align="center" bgcolor="black">
                <td colspan="4">Login/Signin</td>
            </tr>
            <tr>
                
                <td>user id</td>
                <td><input type="text"  name="uNM" placeholder="Enter user id" class="texttheme" required></td>
            </tr>
            <tr>
                <td>email</td>
                <td><input type="mail"name="mail" placeholder="Enter email here" class="texttheme" required></td>     
            </tr>
          <tr align="center">
                <td> password</td>
                <td><input type="password" name="pass" placeholder="Enter password here" class="texttheme"></td>
            </tr>
            <tr align="center">
                <td colspan="4"><input type="submit" value="SIGNIN" name="btn" class="buttontheme">             
                </td>
            </tr>
            <p align="center">
                    <% if(RESULT==1){%>
                    <font color="red">INVALID ID/PASSWORD</font>
                    <%}%>
        </p>
            <tr align="center">
                <td colspan="4"  style="color: lightblue;"><a href="usersignup.jsp">don't have account :(- SIGN UP</a></td>
            </tr>
        </table>
        </form>
        <marquee scrollamount="10" style="color:antiquewhite;font-weight: bold;">
            save your time with ease of parking. The parking charges are upto 50% off for new users!
        </marquee>
    </div>
   
</body>
</html>