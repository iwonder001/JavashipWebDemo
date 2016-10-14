<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*, java.sql.*, javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
				String url = "XXXXXXX"; 
				// Declare database login info & query that you want to perform
				String userName = "XXXXXXXXX";
				String password = "XXXXXXXX";
				String query = "select * from roster";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url, userName, password);
		
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(query);
		
		while(rs.next()){
		
		String name = rs.getString("name");
		String course = rs.getString("class");
		String studentId = rs.getString("studentid"); 
	%>	
		<!-- System.out.println(name + "\t\t" + course + "\t\t" + studentId); -->
		<h2><%=name%></h2>
		<h3><%=course %></h3>
		
	<% 	
		}
		
		st.close();
		con.close();
    %>
    
</body>
</html>