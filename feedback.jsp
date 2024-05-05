<%@page import="java.sql.Connection,java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.DateFormat" %>

<%
    String button1=request.getParameter("btn");
    if(button1!=null && button1.equals("SUBMIT")){
    String userId = request.getParameter("uID");
    String feedback = request.getParameter("feed");
     Date date=new Date();
     DateFormat df=DateFormat.getDateInstance(DateFormat.MEDIUM);
 
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "7877shris");
        PreparedStatement st = c.prepareStatement("insert into feedback(date,userid,content) values(?,?,?)");
        st.setString(1," "+df.format(date));
        st.setString(2, userId); 
        st.setString(3, feedback); 
        st.executeUpdate();
        c.close();
        response.sendRedirect("userdashboard.jsp");
    }
    else{
    System.out.println("abc");
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
        <h1>park ease.</h1>
        <form action="" method="post">
        <table align="center" cellspacing="20px" >
            <tr align="center" bgcolor="black">
                <td colspan="4">Feedback</td>
            </tr>
            <tr>
                
                <td>user id</td>
                <td><input type="text"  name="uID" placeholder="Enter user id" class="texttheme"></td>
            </tr>
            <tr>
                
                <td> Feedback</td>
                <td><input type="textarea" name="feed" rows="5" cols="10"  placeholder="Enter Feedback here" class="texttheme"></td>
            </tr>
            <tr align="center">
                <td colspan="4"><input type="submit" value="SUBMIT" name="btn" class="buttontheme">             
                </td>
            </tr>
            <tr align="center">
                <td colspan="4"  style="color: lightblue;"><a href="userdashboard.jsp">Go back to home</a></td>
            </tr>
        </table>
        </form>
    </div>
   
</body>
</html>