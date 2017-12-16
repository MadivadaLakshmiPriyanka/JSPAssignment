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
String pcode=request.getParameter("pc");
String description=request.getParameter("desc");
int quantity=Integer.parseInt(request.getParameter("quantity"));
float uprice=Integer.parseInt(request.getParameter("price"));
float ordervalue=uprice;
float nv=discount(ordervalue);

%>
<%! 
public float discount(float ordervalue)
{
	float nv;
	if(ordervalue>50000)
	{
		nv=(ordervalue*10)/100;
	}
	else if((ordervalue>=25001)&&(ordervalue<=50000))
	{
		nv=(ordervalue*5)/100;
	}
	else
	{
		nv=ordervalue;
	}
	return nv;
}
%>
<h1>Product Details are:</h1><br>
<h1 >Product Code is<%=pcode %></h1><br>
<h1 >Description is<%=description %></h1><br>
<h1 >Quantity is<%=quantity %></h1><br>
<h1 >Unit Price is<%=uprice %></h1><br>
<h1 >Total Amount is<%=nv %></h1>

</body>
</html>