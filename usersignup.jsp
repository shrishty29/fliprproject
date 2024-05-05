<%@page import="java.sql.Connection,java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
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
        <form action="" method="post">
        <table align="center" cellspacing="20px" >
            <tr align="center" bgcolor="black">
                <td colspan="4">new user create account </td>
            </tr>
            <tr>
                <td>userid</td>
                <td><input type="text"  name="uId" placeholder="Enter id here" class="texttheme"></td>
                <td>user name</td>
                <td><input type="text" name="name" placeholder="Enter user name" class="texttheme"></td>
            </tr>
            <tr>
                <td>email</td>
                <td><input type="text" name="email" placeholder="Enter email here" class="texttheme"></td>
                <td>aadhar card number</td>
                <td><input type="number" name="aadhar" placeholder="Enter aadharno. here" class="texttheme"></td>
            </tr>
            <tr>
                <td>License number</td>
                <td><input type="number"name="lic" placeholder="Enter licenseno. here" class="texttheme"></td>
                <td>address</td>
                <td><input type="text"name="add" placeholder="Enter address here" class="texttheme"></td>
            </tr>
            <tr align="center">
                <td>create password</td>
                <td><input type="password"name="pass" placeholder="create a strong password" class="texttheme"></td>
            </tr>
            <tr align="center">
                <td colspan="4"><input type="submit" value="SIGNUP" name="btn1" class="buttontheme">
                </td>

            </tr>
            <tr align="center">
                <td colspan="4"  style="color: lightblue;"><a href="usersignin.jsp">already a user- SIGN IN</a></td>
           
            </tr>
        </table>
        </form>
        <marquee scrollamount="10" style="color:antiquewhite;
                 font-weight: bold;">
            save your time with ease of parking. The parking charges are upto 50% off for new users!
        </marquee>
    </div>
   
</body>
</html>