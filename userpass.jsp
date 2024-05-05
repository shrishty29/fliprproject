<%@page import="java.sql.Connection,java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
    String userId = (String)session.getAttribute("121");    
    String button1 = request.getParameter("btn");
    if (button1 != null && button1.equals("CHANGE")) {
     userId = request.getParameter("uid");
    String password = request.getParameter("pass");
    String npassword = request.getParameter("npass");
    String cnpassword = request.getParameter("apass");
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "7877shris");
    PreparedStatement st = c.prepareStatement("select * from usertable where userid=? and password=?");
    st.setString(1, userId);
    st.setString(2, password);
    ResultSet rs = st.executeQuery();

    if (rs.next()) {
        if (npassword.equals(cnpassword)) {
            PreparedStatement st1 = c.prepareStatement("update usertable set password=? where userid=?");
            st1.setString(1, npassword);
            st1.setString(2, userId);
            st1.executeUpdate();
            response.sendRedirect("userdashboard.jsp");
    }
        
    }
        else {
            out.println("New password and confirm new password are not the same");
        }
    }
     else {
        out.println("Invalid id/password");
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
        .texttheme {
            width: 300px;
            height: 30px;
            color: black;
        }
        .buttontheme {
            width: 100px;
            height: 40px;
            color: white;
            background-color: black;
            font-family: arial;
            font-size: 13px;
        }
        h1 {
            font-size: 70px;
            color: white;
            font-weight: bold;
            margin: 0;
        }
        td {
            color: white;
        }
    </style>
</head>
<body>
    <div class="divtheme">
        <h1>Park ease</h1>
        <form action="" method="post">
            <table align="center" cellspacing="20px">
                <tr align="center" bgcolor="black">
                    <td colspan="4">Update Password</td>
                </tr>
                <tr>
                    <td>User ID</td>
                    <td><input type="text" name="uid" placeholder="Enter user id" class="texttheme" value="<%=userId%>"></td>
                </tr>
                <tr>
                    <td>Old Password</td>
                    <td><input type="password" name="pass" placeholder="Enter old password here" class="texttheme"></td>
                </tr>
                <tr align="center">
                    <td>New Password</td>
                    <td><input type="password" name="npass" placeholder="Enter new password here" class="texttheme"></td>
                </tr>
                <tr align="center">
                    <td>Password*</td>
                    <td><input type="password" name="apass" placeholder="Enter new password again" class="texttheme"></td>
                
                <tr align="center">
                    <td colspan="4"><input type="submit" value="CHANGE" name="btn" class="buttontheme"></td>
                </tr>
                <tr align="center">
                    <td colspan="4" bgcolor="white"><a href="useraccDel.jsp">do you want to delete your account?</a></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
