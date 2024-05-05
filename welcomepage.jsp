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
                <td class='tdtheme'><a href="welcomepage.jsp">Home</a></td>
                <td class='tdtheme'><a href="services.jsp">Services</a></td>
                <td class='tdtheme'><a href="contact.jsp">Contact</a></td> 
                <td class='tdtheme'><a href="Aboutpage.jsp">About</a></td>
                <td class='tdtheme'><a href="usersignup.jsp">Signin/Signup</a></td>
            </tr>
        </table>
        <marquee scrollamount="10" style="color:aliceblue;font-weight: bold; font-family: arial">
            save your time with ease of parking. The parking charges are upto 50% off for new users!
        </marquee>
        <div class='divtheme'>
            <h1>Make your day more</h1>
             <br>
             <h1> convinient by park ease!</h1>
          <!--  <img src='image/logo2.png' class='shad'>-->
          <img src="image/steps.png" class="shad" height="500" width="900">
        </div>
    </body>
</html>