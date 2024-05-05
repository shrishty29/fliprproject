<%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement" %>
<%String button1 = request.getParameter("btn");
    if (button1 != null && button1.equals("CREATE")) {
    String id = request.getParameter("id");
    String fNM = request.getParameter("fNM");
    String email = request.getParameter("mail");
    String contact = request.getParameter("cont");
    String password = request.getParameter("pass");
    String post = request.getParameter("post");
    String role = ""; 
    if ("Admin".equals(post)) {
       role = "Admin"; 
    } else {
      role = "Employee";
    }
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "7877shris");
    
    if ("Admin".equals(post)) {
        PreparedStatement st = c.prepareStatement("insert into admin values(?,?,?,?,?)");
        st.setString(1, id);
        st.setString(2, fNM);
        st.setString(3, email);
        st.setString(4, contact);
        st.setString(5, password);
        st.executeUpdate();
        c.close();
        response.sendRedirect("admindashb.jsp");
    } else {
        PreparedStatement st = c.prepareStatement("insert into employee values(?,?,?,?,?,?)");
        st.setString(1, id);
        st.setString(2, fNM);
        st.setString(3, role); 
        st.setString(4, contact);
        st.setString(5, email);
        st.setString(6, password);
        st.executeUpdate();
        c.close();
        response.sendRedirect("admindashb.jsp");
    }}
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
        <table width="100%" class="tabtheme">
            <tr>
                 <td class='tbtheme'><a href="AdmincreateAcc.jsp">create account</td>
                  <td class='tbtheme'><a href="viewComplain.jsp">view public complains</a></td>
                  <td class='tbtheme'><a href="deladmin.jsp">delete account</a></td> 
                  <td class='tbtheme'><a href="viewallusers.jsp">view all users</a></td>
                <td class='tbtheme'><a href="viewallEmp.jsp">view all employee</a></td>
                <td class='tbtheme'><a href="admin_setting.jsp">settings</a></td>
            </tr>
        </table>
    <div class="divtheme">
        <h1>create account</h1>
        <form action="" method="post">
        <table align="center" cellspacing="20px" >
            <tr align="center" bgcolor="black">
                <td colspan="4">Create account</td>
            </tr>
            <tr>
                <td>ID</td>
                <td><input type="text"  name="id" placeholder="Enter ID" class="texttheme"></td>
            </tr>
            <tr>
                <td>Full name</td>
                <td><input type="text"  name="fNM" placeholder="Enter your name" class="texttheme"></td>
            </tr>
            <tr>
                <td>email</td>
                <td><input type="mail"name="mail" placeholder="Enter email here" class="texttheme"></td>     
            </tr>
          <tr align="center">
                <td> contact</td>
                <td><input type="number" name="cont" placeholder="Enter contact here" class="texttheme"></td>
            </tr>
            <tr align="center">
                <td> password</td>
                <td><input type="password" name="pass" placeholder="Enter password here" class="texttheme"></td>
            </tr>
             <tr align="center">
                <td> role</td>
                <td><select name="role"><option>ROLE</option>
                        <option>Employee</option>
                        <option>Admin</option>
                    </select></td>
            </tr>
            <tr align="center">
                <td colspan="4"><input type="submit" value="CREATE" name="btn" class="buttontheme">             
                </td>
            </tr>
        </table>
    </div>
</body>
</html>