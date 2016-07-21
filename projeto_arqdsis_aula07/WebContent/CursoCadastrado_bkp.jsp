<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>    
<%@ page import="to.CursoTO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Curso Cadastrado</title>
</head>
<body>
<%
		CursoTO to= (CursoTO)request.getAttribute("cursoTO");
	%>
	<h3>Curso Cadastrado</h3>
	<p>
	id: <%=to.getId() %><br>
	Nome: <%=to.getNome() %><br>
	Data Início: <%=to.getDataInicio() %><br>
	Data Termino: <%=to.getDataTermino() %><br>
	Hora: <%=to.getHora() %><br>
	Vagas: <%=to.getVagas() %><br>
	Valor: <%=to.getValor() %><br>

</body>
</html>