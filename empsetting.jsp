 <%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.ResultSet" %>

<%
        String userId=request.getParameter("id");
    String password=request.getParameter("opass");
    String npassword=request.getParameter("npass");
    String cnpassword=request.getParameter("rnpass");
Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "7877shris");
        PreparedStatement st=
c.prepareStatement("select *  from  employee where  emp_id=? and password=?");       
        st.setString(1,userId);
        st.setString(2,password);
        ResultSet rs=st.executeQuery();
        if(rs.next())
        {
            if(npassword.equals(cnpassword))
            {
PreparedStatement st1=
                c.prepareStatement("update employee set password=? where emp_id=?");       
                st1.setString(1,npassword);
                st1.setString(2,userId);
                st1.executeUpdate();
                response.sendRedirect("empdash.jsp");
            }
            else
            {
                out.println("new password and confirm new password are not same");
            }
        }
        else
        {
        out.println("invalid id/password");
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
        <table width="100%" class="tabtheme">
             <tr>
                 <td class='tbtheme'><a href="viewallpark.jsp">view parkings</a></td>
                <td class='tbtheme'><a href="viewfeed.jsp">view feedback</a></td>
                <td class='tbtheme'><a href="viewComplain.jsp">view complain</a></td> 
                <td class='tbtheme'><a href="viewallusers.jsp">view all users</a></td>
                <td class='tbtheme'><a href="empsetting.jsp" >setting</a></td>
            </tr>
        </table>
    <div class="divtheme">
        <h1>Update password</h1>
        <form action="" method="post" >
        <table align="center" cellspacing="20px" >
            <tr align="center" bgcolor="black">
                <td colspan="4">Update your password</td>
            </tr>
            <tr>
                <td>ID</td>
                <td><input type="text"  name="id" placeholder="Enter ID" class="texttheme"></td>
            </tr>
            <tr>
                <td>old password</td>
                <td><input type="password"  name="opass" placeholder="Enter old password" class="texttheme"></td>
            </tr>
            <tr>
                <td>new password</td>
                <td><input type="password" name="npass" placeholder="Enter new password" class="texttheme"></td>     
            </tr>
          <tr align="center">
                <td> password</td>
                <td><input type="password" name="rnpass" placeholder="Enter new password again" class="texttheme"></td>
            </tr>
           
             
            <tr align="center">
                <td colspan="4"><input type="submit" value="CHANGE" name="btn" class="buttontheme">             
                </td>
            </tr>
        </table>
            <p><a href="empAccDel.jsp">do you want to delete your account?</a></p>
        </form>
    </div>
</body>
</html>