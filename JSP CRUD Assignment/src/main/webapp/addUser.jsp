<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="com.test.dao.UserDAO"%>
<jsp:useBean id="u" class="com.test.bean.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDAO.save(u);
if(i>0){
response.sendRedirect("AddUserSuccess.jsp");
}else{
response.sendRedirect("errorPage.jsp");
}
%>

</body>
</html>