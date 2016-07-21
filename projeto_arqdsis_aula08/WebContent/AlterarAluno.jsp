<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                <!-- Barra superior com os menus de navegação -->
                <c:import url="Menu.jsp"></c:import>
                <!-- Container Principal -->
                <div id="home-padding" class="container">
                    <h3 class="page-header">Alterar Aluno #${aluno.id}</h3>
                    <!-- Formulario para alteração de clientes -->
                    <form action="ManterAluno.do" method="post">
                        <!-- area de campos do form -->
                        <input type="hidden" name="id" value="${aluno.id}" />
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="nome">Nome</label>
                                <input type="text" class="form-control" name="nome" id="nome" required maxlength="100" placeholder="nome completo" value="${aluno.nome}">
                            </div>
                        </div>
                        <div class="row">
                <div class="form-group col-md-12">
                    <label for="endereco">Endereço</label>
                    <input type="text" class="form-control" name="endereco" id="endereco" required maxlength="100" placeholder="Endereço" value="${aluno.endereco}">
                </div>
             </div>
                        <div class="row">
                <div class="form-group col-md-6">
                    <label for="telefone">Telefone</label>
                    <input type="tel" class="form-control" name="telefone" id="telefone" required maxlength="15" pattern="(?:\(\d{2}\)|\d{2})[- ]?\d{5}[- ]?\d{4}" placeholder="Telefone" value="${aluno.telefone}">
                </div>
                <div class="form-group col-md-6">
                    <label for="email">E-Mail</label> <input type="email" class="form-control"
						name="email" id="email" required maxlength="60"
						placeholder="E-mail" value="${aluno.email}">
				</div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="rg">RG</label>
                    <input type="text" class="form-control" name="rg" id="rg" required maxlength="9" placeholder="RG" value="${aluno.RG}">
                </div>
                <div class="form-group col-md-6">
                    <label for="cpf">CPF</label>
                    <input type="text" class="form-control" name="cpf" id="cpf" required maxlength="11" placeholder="CPF" value="${aluno.CPF}">
                </div>
            </div>
                        <hr />
                        <div id="actions" class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="acao" value="Alterar">Salvar</button>
                                <a href="listar_alunos.do?acao=buscar" class="btn btn-default">Cancelar</a>
                            </div>
                        </div>
                    </form>
                </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>