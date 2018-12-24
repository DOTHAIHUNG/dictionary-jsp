<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.lang.String" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: GodBJ
  Date: 2018-12-24
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map <String, String> dic = new HashMap <String, String>();

%>

<%
    PrintWriter writer = response.getWriter();
    dic.put("hello", "Xin chao");
    dic.put("how", "The nao");
    dic.put("book", "Quyen sach");
    dic.put("computer", "May tinh");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result != null) {
        writer.println("Word: " + search);
        writer.println("Result: " + result);
    } else {
        writer.println("Not found");
    }
%>

</body>
</html>
