<%@ page import="javax.naming.Context" %>
<%@ page import="com.lvov.beans.IEmployee" %>
<%@ page import="javax.naming.InitialContext" %><%--
  Created by IntelliJ IDEA.
  User: serg
  Date: 3/3/2020
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h5>Bean</h5>
  <%
    IEmployee emp = null;
  %>
  <%
    Context context = null;
    try {
      context = new InitialContext();
      emp = (IEmployee) context.lookup("java:comp/env/Employee");
      System.out.println(emp.getName());
    }
    catch(Exception e) {
      e.printStackTrace();
    }
  %>
  Name:<%=emp.getName()%>


  </body>
</html>
