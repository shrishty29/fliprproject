<%@include file="security.jsp" %>
<html>
<head>
    <style>
        body {
            background-image: url('image/carparking.jpg');
            background-repeat: no-repeat;
            background-size: 100%;
        }

        .tdtheme {
            color: black;
            font-size: 20px;
            text-transform: uppercase;
            font-family: berlin sans fb;
            text-align: left;
        }

        .tabtheme {
            background-color: rgba(255, 255, 255, 0.5);
            height: 70px;
            color: black;
        }

        .tdtheme:hover {
            background-color: orange;
        }

        .wrapper {
            position: relative;
            width: 90%;
            margin: 50px auto;
        }

        .divtheme {
            background-color: rgba(0, 0, 0, 0.5);
            width: 100%;
            height: 550px;
            text-align: center;
            padding-top: 100px;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 2;
        }

        .dv {
            width: 100%;
            height: 650px;
            text-align: center;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 1;
        }

        .dv img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            object-position: center;
        }

        h1 {
            text-align: right;
            font-family:arial;
            font-weight: bold;
            color: orange;
            font-size: 60px;
            margin-top: -65px;
            margin-right: 10px;
        }

        p {
            font-family: arial;
            text-transform: uppercase;
        }
       
    </style>
</head>

<body>
    <table width='50%' class='tabtheme'>
        <tr>
            <td class="tdtheme"><a href="viewmap.jsp">View map</a></td>
            <td class="tdtheme"><a href="userpass.jsp">setting</a></td>
            <td class="tdtheme"><a href="destroysession.jsp">Logout</a></td>
        </tr>
    </table>
    <h1>park ease</h1>
    <div class="wrapper">
        
   <div class="divtheme">
       <img src="image/wh.png" height="200px" width="1000px" style="border-color: white; border-radius: 50px;">
    
            <a href="bookpark.jsp"><img src="image/iconp.png" width="90px" height="90px" style="margin-right: 700px; margin-top:-160px" ></a>
            <a href="bookpark.jsp">  <p style="font-size: 20px; font-weight: bold;margin-top:-50px;margin-right: 690px;">Book parking</p></a>

            <a href="payment.jsp"><img src="image/money.png" width="90px" height="80px" style="margin-right: 100px; margin-top: -160px;"></a>
            <a href="payment.jsp"><p style="font-size: 20px; font-weight: bold;margin-top:-45px;margin-right: 100px;">Payments</p></a>

            
            <a href="queryandquest.jsp"><img src="image/question.png" width="90px" height="80px" style="margin-right: -550px; margin-top:-150px;"></a>
            <a href="queryandquest.jsp"><p style="font-size: 20px; font-weight: bold;margin-top:-45px;margin-right: -550px;">Query | Questions</p></a>

           <!--<img src="image/find-parking.png" height="100px" width="230px" style="margin-right: 500px;margin-top: 40px">-->
            
        </div>
        
    </div>
    
</body>

</html>
