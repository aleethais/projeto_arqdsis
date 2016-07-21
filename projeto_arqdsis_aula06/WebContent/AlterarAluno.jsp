<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="to.AlunoTO" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Let's Study - Alterar Aluno</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>
            <%AlunoTO to=( AlunoTO)request.getAttribute( "aluno"); %>
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
                    <h3 class="page-header">Alterar Aluno #<%=to.getId() %></h3>
                    <!-- Formulario para alteração de clientes -->
                    <form action="ManterAluno.do" method="post">
                        <!-- area de campos do form -->
                        <input type="hidden" name="id" value="<%=to.getId() %>" />
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="nome">Nome</label>
                                <input type="text" class="form-control" name="nome" id="nome" required maxlength="100" placeholder="nome completo" value="<%=to.getNome()%>">
                            </div>
                        </div>
                        <div class="row">
                <div class="form-group col-md-12">
                    <label for="endereco">Endereço</label>
                    <input type="text" class="form-control" name="endereco" id="endereco" required maxlength="100" placeholder="Endereço" value="<%=to.getEndereco()%>">
                </div>
             </div>
                        <div class="row">
                <div class="form-group col-md-6">
                    <label for="telefone">Telefone</label>
                    <input type="tel" class="form-control" name="telefone" id="telefone" required maxlength="15" pattern="(?:\(\d{2}\)|\d{2})[- ]?\d{5}[- ]?\d{4}" placeholder="Telefone" value="<%=to.getTelefone()%>">
                </div>
                <div class="form-group col-md-6">
                    <label for="email">E-Mail</label> <input type="email" class="form-control"
						name="email" id="email" required maxlength="60"
						placeholder="E-mail" value="<%=to.getEmail()%>">
				</div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="rg">RG</label>
                    <input type="text" class="form-control" name="rg" id="rg" required maxlength="9" placeholder="RG" value="<%=to.getRG()%>">
                </div>
                <div class="form-group col-md-6">
                    <label for="cpf">CPF</label>
                    <input type="text" class="form-control" name="cpf" id="cpf" required maxlength="11" placeholder="CPF" value="<%=to.getCPF()%>">
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