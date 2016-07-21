<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
									data-toggle="collapse" data-target="#navbar"
									aria-expanded="false" aria-controls="navbar">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
                <a class="navbar-brand" href="home.jsp"><img
					src="css/images/logo_sis.png" alt="Let's Study?"></a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="listar_cursos.do?acao=reiniciar" >Cursos</a>
                    </li>
                    <li><a href="listar_alunos.do?acao=reiniciar" >Alunos</a>
                    </li>
                    <li><a href="index.html" >Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>