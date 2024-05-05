<%
    response.addHeader("Pragma","no-Cache");
    response.addHeader("Cache-Control","no-Store");
    String value=(String)session.getAttribute("121");
    if(value==null){
    response.sendRedirect("welcomepage.jsp");
    }
    if(session==null){
     response.sendRedirect("welcomepage.jsp");
    }
    %>