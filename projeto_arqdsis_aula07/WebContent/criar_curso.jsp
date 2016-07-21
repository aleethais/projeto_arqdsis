<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Let's Study - Criar Curso</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Barra superior com os menus de navegaÃ§Ã£o -->
    <c:import url="Menu.jsp"></c:import>
    <!-- Container Principal -->
    <div id="home-padding" class="container">
        <h3 class="page-header">Incluir Curso</h3>
        <!-- Formulario para inclusao de Alunos -->
        <form action="ManterCurso.do" method="post">
            <!-- area de campos do form -->
            <div class="row">               
                
                <div class="form-group col-md-12">
                    <label for="nome">Nome</label>
                    <input type="text" class="form-control" name="nome" id="nome" required maxlength="100" placeholder="nome do curso">
                </div>
            </div>
            
            
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="endereco">Data Início</label>
                    <input type="text" class="form-control" name="dataInicio" id="dataInicio" required maxlength="100" placeholder="data de inÃ­cio">
                </div>
                <div class="form-group col-md-6">
                    <label for="telefone">Data Término</label>
                    <input type="tel" class="form-control" name="dataTermino" id="dataTermino" required maxlength="15" placeholder="data de tÃ©rmino">
                </div>
             </div>
			<div class="row">
                <div class="form-group col-md-6">
                    <label for="email">Hora</label> <input type="text"class="form-control"
						name="hora" id="hora" required maxlength="60"
						placeholder="hora">
				</div>
				<div class="form-group col-md-6">
                    <label for="rg">Vagas</label>
                    <input type="text" class="form-control" name="vagas" id="vagas" required maxlength="9" placeholder="vagas">
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-3">
                </div>
                <div class="form-group col-md-6">
                    <label for="cpf">Valor</label>
                    <input type="text" class="form-control" name="valor" id="valor" required maxlength="11" placeholder="valor">
                </div>
            </div>
            <hr />
            <div id="actions" class="row">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary" name="acao" value="Criar">Salvar</button>
                    <a href="listar_cursos.jsp" class="btn btn-default">Cancelar</a>
                </div>
            </div>
        </form>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>