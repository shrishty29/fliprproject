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
      
    </style>
    <body>
        <%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.ResultSet,java.util.ArrayList" %>
       <% Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "7877shris");
        PreparedStatement st=
        c.prepareStatement("select * from query");
        ResultSet rs=st.executeQuery();
        ArrayList list1=new ArrayList();
        ArrayList list2=new ArrayList();
        ArrayList list3=new ArrayList();
        ArrayList list4=new ArrayList();
        ArrayList list5=new ArrayList();
        
        while(rs.next()){
            list1.add(rs.getString(1));
            list2.add(rs.getString(2));
            list3.add(rs.getString(3));
            list4.add(rs.getString(4));
            list5.add(rs.getString(5));
           
            
        }
        %>
        <h1 style="color: white; font-family: arial" align="center">Query and Question</h1>
        <table width='100%'  class='tabtheme'  style="border: black">
            <tr>
                <td class='tdtheme'>user id </td>
                <td class='tdtheme'>Query</td>
                <td class='tdtheme'>Date</td> 
                <td class='tdtheme'>Solution</td>
                <td class='tdtheme'>Date of solution</td>
               
            </tr>
            
            <%for(int i=0;i<list1.size();i++){%>
            <tr align="center">
                <td class="tdtheme"><%=list1.get(i)%></td>
                <td class="tdtheme"><%=list2.get(i)%></td>
                <td class="tdtheme"><%=list3.get(i)%></td>
                <td class="tdtheme"><%=list4.get(i)%></td>
                <td class="tdtheme"><%=list5.get(i)%></td>
              
            </tr>
            
            <% }%>
        </table>
       
    </body>
</html>