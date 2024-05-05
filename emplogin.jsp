<%@page import="java.sql.Connection,java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
    String button1 = request.getParameter("btn");
    if (button1 != null && button1.equals("LOGIN")) {
        String empid = request.getParameter("eid");
        String password = request.getParameter("pass");

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "7877shris");
        PreparedStatement st = c.prepareStatement("select * from employee where emp_id=? and password=?");
        st.setString(1, empid);
        st.setString(2, password);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            response.sendRedirect("empdash.jsp");
        } else {
            out.println("invalid id/password");
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
        
    <div class="divtheme">
        <h1>Employee.</h1>
        <form action="" method="post">
               <table align="center" cellspacing="20px" >
            <tr align="center" bgcolor="black">
                <td colspan="4">Login</td>
            </tr>
            <tr>
                
                <td>employee id</td>
                <td><input type="text"  name="eid" placeholder="Enter user name" class="texttheme"></td>
            </tr>
            <tr>
                
          <tr align="center">
                <td> password</td>
                <td><input type="password" name="pass" placeholder="Enter password here" class="texttheme"></td>
            </tr>
            <tr align="center">
                <td colspan="4"><input type="submit" value="LOGIN" name="btn" class="buttontheme">             
                </td>
            </tr>
        </table>
        </form>
    </div>
   
</body>
</html>