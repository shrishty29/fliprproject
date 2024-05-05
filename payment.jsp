<%@page import="java.sql.Connection,java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
    String button1 = request.getParameter("btn");
    if (button1 != null && button1.equals("BOOK")) {
        String price = request.getParameter("pri");
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "7877shris");
        PreparedStatement st = c.prepareStatement("insert into parkingspottable (total_price) values(?)");
        st.setString(1, price);
       
        st.executeUpdate();
        c.close();
        response.sendRedirect("done.jsp");
    }
    else{
    System.out.println("invalid");
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
       
    </style>
</head>
<body>
      
    <div class="divtheme">
        <h2 style="color:white;">parking is available proceed for payment</h2>
        <form action="" method="post">
        <table align="center" cellspacing="20px" >
            <tr align="center" bgcolor="black">
                <td colspan="4">payment</td>
            </tr>
            <tr align="center" >
                <td colspan="4"><img src="image/qr.jpg" height="200px" width="200px" ></td>
            </tr>
            <tr>
                <td>Enter total price</td>
                <td><input type="textarea" name="pri" placeholder="Enter total amount" class="texttheme"></td>     
            </tr>
         
            <tr align="center">
                <td colspan="4"><input type="submit" value="BOOK" name="btn" class="buttontheme">             
                </td>
            </tr>
        </table>
        </form>
    </div>
   
</body>
</html>