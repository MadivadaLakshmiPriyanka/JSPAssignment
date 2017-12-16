<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
int pamt=Integer.parseInt(request.getParameter("pa"));
int year=Integer.parseInt(request.getParameter("years"));
int rate=Integer.parseInt(request.getParameter("interest"));
float si=cal(pamt,year,rate);

%>

<%! 
public float cal( int pamt,int year,int rate)
{
float si=(pamt*year*rate)/100;
return  si;
}
%>
<h1 >SIMPLE INTEREST IS<%=si %></h1>

</body>
</html>