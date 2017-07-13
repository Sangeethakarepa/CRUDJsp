<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.sangeetha.bean.UserBean"%>
<%@ page import="com.sangeetha.dao.UserDao"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All User</title>
</head>
<body>
<%
//UserBean user = new UserBean();
UserDao dao = new UserDao();
List<UserBean> userList = dao.getAllUsers();
//Iterator<UserBean> itr = userList.iterator();
%>
<table border="1">
<tr>
<th>Id</th>
<th>First Name</th>
<th>Last Name</th>
</tr>
<tr>
<%
/*while(itr.hasNext())
{
System.out.println(user.getId());*/
for (UserBean user : userList) {
%>
<td><%=user.getId()%></td>
<td><%=user.getfName()%></td>
<td><%=user.getlName()%></td>
<td><a
href="UserHandler?action=editform&userId=<%=user.getId()%>">Update</a></td>
<td><a
href="UserHandler?action=delete&userId=<%=user.getId()%>">Delete</a></td>

</tr>
<%
}
//}
%>
</table>
<p><a href="UserHandler?action=insert">Add User</a></p>
</body>
</html>

web.xml

<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://java.sun.com/xml/ns/javaee" xmlns:web="http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd" xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd" id="WebApp_ID" version="2.5">
<display-name>jspServletJdbcExample</display-name>
<welcome-file-list>
<welcome-file>user.jsp</welcome-file>
</welcome-file-list>
<servlet>
<description></description>
<servlet-name>UserHandler</servlet-name>
<servlet-class>net.roseindia.handler.UserHandler</servlet-class>
</servlet>
<servlet-mapping>
<servlet-name>UserHandler</servlet-name>
<url-pattern>/UserHandler</url-pattern>
</servlet-mapping>
</web-app>