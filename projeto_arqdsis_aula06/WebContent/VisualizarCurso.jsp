<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="to.CursoTO" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Let's Study - Visualizar Curso</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>
            <%CursoTO to=( CursoTO)request.getAttribute("curso"); %>            
                <!-- Modal -->
                <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="modalLabel">Excluir Aluno</h4>
                            </div>
                            <div class="modal-body">
                                Deseja realmente excluir este Aluno?
                            </div>
                            <div class="modal-footer">
                                <form action="ManterCurso.do" method="post">
                                    <input type="hidden" name="id" value="<%=to.getId()%>" />
                                    <button type="submit" class="btn btn-primary" name="acao" value="Excluir">Sim</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal -->
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
                    <h3 class="page-header">Visualizar Curso #<%=to.getId() %></h3>
                    <div class="row">
                        <div class="col-md-12">
                            <p><strong>Nome</strong>
                            </p>
                            <p>
                                <%=to.getNome()%>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p><strong>Data Início</strong>
                            </p>
                            <p>
                                <%=to.getDataInicio() %>
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p><strong>Data Término</strong>
                            </p>
                            <p>
                                <%=to.getDataTermino() %>
                            </p>
                        </div>
                     </div>
                     <div class="row">
                     <div class="col-md-6">
                            <p><strong>Hora</strong>
                            </p>
                            <p>
                                <%=to.getHora() %>
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p><strong>Vagas</strong>
                            </p>
                            <p>
                                <%=to.getVagas() %>
                            </p>
                        </div>
                        </div>
                        <div class="row">     
                        <div class="col-md-3">
                        </div>                
                     	<div class="col-md-6">
                            <p><strong>Valor</strong>
                            </p>
                            <p>
                                <%=to.getValor() %>
                            </p>
                        </div>                        
                    </div>
                    <hr />
                    <div id="actions" class="row">
                        <div class="col-md-12">
                            <a href="ManterCurso.do?acao=Editar&id=<%=to.getId()%>" class="btn btn-primary">Editar</a>
                            <a href="#" class="btn btn-danger" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                            <a href="listar_cursos.html" class="btn btn-default">Voltar</a>
                        </div>
                    </div>
                </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>