<%@page import="java.sql.Connection,java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
    String button1 = request.getParameter("btn");
    if (button1 != null && button1.equals("DELETE")) {
        String usid = request.getParameter("id");
        String password = request.getParameter("pass");

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "7877shris");
        PreparedStatement st = c.prepareStatement("delete from usertable where userid=? and password=?");
        st.setString(1, usid);
        st.setString(2, password);
        st.executeUpdate();
        c.close();
        response.sendRedirect("welcomepage.jsp");
    }
    else{
    System.out.println("invalid data provided");
    }
%>

<html>
<head>   
    <style>
        body {
            background-image: url('image/carparking.jpg');
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
       p{
           color:white;
       }
       
    </style>
</head>
<body>
        
    <div class="divtheme">
        <h1>Account Deletion</h1>
        <form action="" method="post" >
        <table align="center" cellspacing="20px" >
            <tr align="center" bgcolor="black">
                <td colspan="4">Delete account</td>
            </tr>
            <tr>
                <td>ID</td>
                <td><input type="text"  name="id" placeholder="Enter ID" class="texttheme"></td>
            </tr>
            <tr>
                <td>password</td>
                <td><input type="password"  name="pass" placeholder="Enter  password" class="texttheme"></td>
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