<html >
<head>
    <style>
        body {
            background-image: url('image/login parking.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            height:150%;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        .tdtheme {
            color: black;
            font-size: 20px;
            text-transform: uppercase;
            font-family: berlin sans fb;
            text-align: center;
        }
        .tabtheme {
            background-color: rgba(255, 255, 255, 0.5);
            height: 70px;
            color: black;
        }
        .tdtheme:hover {
            background-color: gray;
        }
        .divtheme {
            background-color: rgba(0, 0, 0, 0.5);
            margin-left:10px;
            margin-top: 10px;
            width: 50%;
            height: 300px;
            text-align: center;
            padding-top: 100px; 
            color: antiquewhite;
        }
         .divtheme1{
            background-color: rgba(0, 0, 0, 0.5);
            margin-left: 750px;
            margin-top:-400px;
            width: 50%;
            height: 300px;
            text-align: center;
            padding-top: 100px; 
            color: antiquewhite;
        }
        .divtheme2{
            background-color: rgba(0, 0, 0, 0.5);
            width: 100px;
            height: 300px;
            text-align: center;
            padding-top: 100px; 
            color: antiquewhite;
        }
        h2 {
            font-size: 36px;
            margin-top: -30px;
        }
        p {
            font-size: 20px;
            margin-bottom: -10px;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            font-size: 20px;
            margin-bottom: 10px;
        }
        a {
            color: antiquewhite;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <table width='100%' class='tabtheme'>
        <tr>
            <td class='tdtheme'><a href="welcomepage.jsp">Home</a></td>
            <td class='tdtheme'><a href="services.jsp">Services</a></td>
            <td class='tdtheme'><a href="contact.jsp">Contact</a></td> 
            <td class='tdtheme'><a href="Aboutpage.jsp">About</a></td>
            <td class='tdtheme'><a href="usersignup.jsp">Signin/Signup</a></td>
        </tr>
    </table>
    <div class="divtheme" >
        <h2 >Contact Us</h2>
        <p>For inquiries or assistance, please contact us:</p>
        <ul>
            <li>Phone: <a href="tel:1234567890">77460-00677</a></li>
            <li>WhatsApp: <a href="https://wa.me/7746000677">7746000677</a></li>
            <li>Email: <a href="mailto:"shrishtihardiya8@gmail.com">shrishtihardiya8@gmail.com</a></li>
        </ul>
    </div>
    <div class="divtheme1">
        <h1 style="margin-top: -50px">Send us a message</h1>
        <table align="center" cellspacing="20px">
            
            <td style="color:white">user name</td>
                <td><input type="text"  name="uNM" placeholder="Enter user name" class="texttheme"></td>
            </tr>
            <tr>
                <td style="color:white">contact</td>
                <td><input type="mail"name="mail" placeholder="Enter contact no. here" class="texttheme"></td>     
            </tr>
          <tr align="center">
                <td style="color:white"> email</td>
                <td><input type="text" name="pass" placeholder="Enter mailid here" class="texttheme"></td>
            </tr>
            <tr align="center">
                <td style="color:white"> Reason</td>
                <td><input type="textarea" name="pass" placeholder="Enter reason here" class="texttheme"></td>
            </tr>
            
            <tr align="center">
                <td colspan="4"><input type="submit" value="SUBMIT" name="btn" class="buttontheme">             
                </td>
            </tr>
            
        </table>
    </div>
    <div >
        <h2 style="color:wheat; margin-left: 650px; margin-top:30px;">Visit us!</h2>
    <iframe width="100%" height="600" frameborder="0" scrolling="no" marginheight="0" 
    marginwidth="0" id="gmap_canvas" src="https://maps.google.com/maps?width=520&amp;height=400&amp;hl=en&amp;q=377A%20%20shyam%20nagar%20nx%20A%20near%20anand%20milan%20garden%20Indore+(Park%20Ease)&amp;t=k&amp;z=12&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe> 
    </div>
</body>
</html>