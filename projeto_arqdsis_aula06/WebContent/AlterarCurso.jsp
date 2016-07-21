<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="to.CursoTO" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Let's Study - Alterar Curso</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>
            <%CursoTO to=( CursoTO)request.getAttribute( "curso"); %>
                <!-- Barra superior com os menus de navegação -->
                <nav class="navbar-default navbar-fixed-top">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="index_sis.html"><img
					src="css/images/logo_sis.png" alt="Let's Study?"></a>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                    <li><a href="listar_cursos.html" >Cursos</a>
                    </li>
                    <li><a href="listar_alunos.html" >Alunos</a>
                    </li>
                    <li><a href="index.html" >Logout</a>
                    </li>
                </ul>
                        </div>
                    </div>
                </nav>
                <!-- Container Principal -->
                <div id="home-padding" class="container">
                    <h3 class="page-header">Alterar Curso #<%=to.getId() %></h3>
                    <!-- Formulario para alteração de clientes -->
                    <form action="ManterCurso.do" method="post">
                        <!-- area de campos do form -->
                        <input type="hidden" name="id" value="<%=to.getId() %>" />
                        <div class="row">
                            <div class="form-group col-md-12">
                    <label for="nome">Nome</label>
                    <input type="text" class="form-control" name="nome" id="nome" required maxlength="100" placeholder="nome do curso" value="<%=to.getNome()%>">
                </div>
            </div>
            
            
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="dataInicio">Data Início</label>
                    <input type="text" class="form-control" name="dataInicio" id="dataInicio" required maxlength="100" placeholder="data de início" value="<%=to.getDataInicio()%>">
                </div>
                <div class="form-group col-md-6">
                    <label for="dataTermino">Data Termino</label>
                    <input type="tel" class="form-control" name="dataTermino" id="dataTermino" required maxlength="15" placeholder="data de término" value="<%=to.getDataTermino()%>">
                </div>
             </div>
			<div class="row">
                <div class="form-group col-md-6">
                    <label for="hora">Hora</label> <input type="text"class="form-control"
						name="hora" id="hora" required maxlength="60"
						placeholder="hora" value="<%=to.getHora()%>">
				</div>
				<div class="form-group col-md-6">
                    <label for="vagas">Vagas</label>
                    <input type="text" class="form-control" name="vagas" id="vagas" required maxlength="9" placeholder="vagas" value="<%=to.getVagas()%>">
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-3">
                </div>
                <div class="form-group col-md-6">
                    <label for="valor">Valor</label>
                    <input type="text" class="form-control" name="valor" id="valor" required maxlength="11" placeholder="valor" value="<%=to.getValor()%>">
                </div>
            </div>
                        <hr />
                        <div id="actions" class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="acao" value="Alterar">Salvar</button>
                                <a href="listar_alunos.html" class="btn btn-default">Cancelar</a>
                            </div>
                        </div>
                    </form>
                </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>