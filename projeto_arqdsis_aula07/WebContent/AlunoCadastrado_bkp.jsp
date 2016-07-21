<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    
<%@ page import="to.AlunoTO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Aluno Cadastrado</title>
</head>
<body>
<%
		AlunoTO to= (AlunoTO)request.getAttribute("alunoTO");
	%>
	<h3>Aluno Cadastrado</h3>
	<p>
	id: <%=to.getId() %><br>
	Nome: <%=to.getNome() %><br>
	Endereço: <%=to.getEndereco() %><br>
	Telefone: <%=to.getTelefone() %><br>
	E-mail: <%=to.getEmail() %><br>
	RG: <%=to.getRG() %><br>
	CPF: <%=to.getCPF() %><br>

</body>
</html>