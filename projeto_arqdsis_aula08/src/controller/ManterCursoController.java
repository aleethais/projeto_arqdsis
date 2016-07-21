package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Curso;
import to.CursoTO;

/**
 * Servlet implementation class ManterCursoController
 */
@WebServlet("/ManterCurso.do")
public class ManterCursoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pAcao = request.getParameter("acao");
		String pNome = request.getParameter("nome");
		String pDataInicio = request.getParameter("dataInicio");
		String pDataTermino = request.getParameter("dataTermino");
		String pHora = request.getParameter("hora");
		String pVagas = request.getParameter("vagas");		
		String pValor = request.getParameter("valor");
		String pId = request.getParameter("id");

		int id = -1;
		try {
			id = Integer.parseInt(pId);
		} catch (NumberFormatException e) {

		}
		int vagas = -1;
		try {
			vagas = Integer.parseInt(pVagas);
		} catch (NumberFormatException e) {

		}
		Double valor = -1.0;
		  String str = "";

		  if (pVagas == null)
		     {str = valor.toString();}else{str = pValor;}
		try {
			valor = Double.parseDouble(str);
		} catch (NumberFormatException e) { 
			e.printStackTrace();
		}

		Curso curso = new Curso (id, pNome, pDataInicio,pDataTermino,pHora,vagas,valor);
		HttpSession session = request.getSession();
		RequestDispatcher view = null;	
		
		if (pAcao.equals("Criar")) {
			curso.criar();
			ArrayList<CursoTO> lista = new ArrayList<>();
			lista.add(curso.getTO());
			session.setAttribute("lista", lista);
			view = request.getRequestDispatcher("ListarCursos.jsp");
		}
		else if(pAcao.equals("Excluir")){				
			curso.excluir();
			view = request.getRequestDispatcher("listar_cursos.do?acao=buscar");
		}

		else if (pAcao.equals("Alterar")) {
			curso.atualizar();
			session.setAttribute("curso", curso.getTO());
			view = request.getRequestDispatcher("VisualizarCurso.jsp");
		}

		else if (pAcao.equals("Visualizar")) {
			curso.carregar();
			session.setAttribute("curso", curso.getTO());
			view = request.getRequestDispatcher("VisualizarCurso.jsp");		
		}

		else if (pAcao.equals("Editar")) {
			curso.carregar();
			session.setAttribute("curso", curso.getTO());
			view = request.getRequestDispatcher("AlterarCurso.jsp");		
		}

		if(pAcao.equals("Inserir")){
			curso.criar();
			curso.carregar();
		}else if(pAcao.equals("Atualizar")){
			curso.atualizar();
			curso.carregar();
		}else if (pAcao.equals("Carregar")){
			curso.carregar();
		}

		view.forward(request, response);
	}

}
