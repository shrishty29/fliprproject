<html>
    <style>
        body{
            background-image:url('image/login parking.jpg');
            background-repeat:no-repeat;
            background-size: 100%;
        }
        .tdtheme{
            color:black;
            font-size:20px;
            text-transform: uppercase;
            font-family: berlin sans fb;
            text-align: center;
        }
        .tabtheme{
            background-color:rgba(255,255,255,0.5);
            height:70px;
            color:black;
        }
        .tdtheme:hover{
            background-color: gray;
        }
        .divtheme{
              background-color: rgba(0, 0, 0, 0.5);
            width: 90%;
            height: 650px;
            margin: 50px auto;
            text-align: center;
            padding-top: 100px; 
        }
        h1{
            color:antiquewhite;
            font-size: 40px;
            margin-right:50px;
            margin-top: -55px;
        }
        .shad{
            box-shadow: 10px 10px 10px black;
        }
        h4{
            color:antiquewhite;
            font-family: sans-serif;
            font-weight: bold;
        }
        h2{
            color:antiquewhite;
            font-family: sans-serif;
        }
    </style>
    <body>
        <table width='100%'  class='tabtheme'>
            <tr>
                <td class='tdtheme'><a href="AdmincreateAcc.jsp">create account</a></td>
                <td class='tdtheme'><a href="viewComplain.jsp">view public complains</a></td>
                <td class='tdtheme'><a href="deladmin.jsp">delete account</a></td>
                <td class='tdtheme'><a href="viewallusers.jsp">view all users</a></td>
                <td class='tdtheme'><a href="viewallEmp.jsp">view all employee</a></td>
                <td class='tdtheme'><a href="admin_setting.jsp">settings</a></td>
            </tr>
        </table>
       
    </body>
</html>