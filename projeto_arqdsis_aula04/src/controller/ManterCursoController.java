package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Curso;

/**
 * Servlet implementation class ManterCursoController
 */
@WebServlet("/manter_curso.do")
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
		String pAcao = request.getParameter("acao");
		String pNome = request.getParameter("nome");
		String pDataInicio = request.getParameter("dataInicio");
		String pDataTermino = request.getParameter("dataTermino");
		String pHora = request.getParameter("hora");
		int pVagas = 0;
		if((request.getParameter("vagas")) != ""){pVagas = Integer.parseInt(request.getParameter("vagas"));}
		double pValor = 0.0;
		if((request.getParameter("valor")) != ""){pValor = Double.parseDouble(request.getParameter("valor"));}
		int pId = Integer.parseInt(request.getParameter("id"));

		Curso curso = new Curso (pId, pNome, pDataInicio,pDataTermino,pHora,pVagas,pValor);
		if(pAcao.equals("Inserir")){
			curso.criar();
			curso.carregar();
		}else if(pAcao.equals("Atualizar")){
			curso.atualizar();
			curso.carregar();
		}else if (pAcao.equals("Carregar")){
			curso.carregar();
		}else if(pAcao.equals("Excluir")){				
			curso.excluir();
		}

		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Curso Cadastrado");
		out.println("</title></head><body>");
		out.println("id: " + curso.getId() + "<br>");
		out.println("Nome: " + curso.getNome() + "<br>");
		out.println("Data Início: " + curso.getDataInicio() + "<br>");
		out.println("Data Término: " + curso.getDataTermino() + "<br>");
		out.println("Hora: " + curso.getHora() + "<br>");
		out.println("Vagas: " + curso.getVagas() + "<br>");
		out.println("Valor: " + curso.getValor() + "<br>");
		out.println("</body></html>");
	}

}
