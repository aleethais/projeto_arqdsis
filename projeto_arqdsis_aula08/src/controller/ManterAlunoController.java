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

import model.Aluno;
import to.AlunoTO;

/**
 * Servlet implementation class ManterAlunoController
 */
@WebServlet("/ManterAluno.do")
public class ManterAlunoController extends HttpServlet {
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
		String pEndereco = request.getParameter("endereco");
		String pTelefone = request.getParameter("telefone");
		String pEmail = request.getParameter("email");
		String pRg = request.getParameter("rg");
		String pCpf = request.getParameter("cpf");
		String pId = request.getParameter("id");
		
		int id = -1;
		try {
			id = Integer.parseInt(pId);
		} catch (NumberFormatException e) {

		}

		Aluno aluno = new Aluno (id, pNome, pEndereco,pTelefone,pEmail,pRg,pCpf);
		HttpSession session = request.getSession();
		RequestDispatcher view = null;
		
		if (pAcao.equals("Criar")) {
			aluno.criar();
			ArrayList<AlunoTO> lista = new ArrayList<>();
			lista.add(aluno.getTO());
			session.setAttribute("lista", lista);
			view = request.getRequestDispatcher("ListarAlunos.jsp");
		}
		
		else if(pAcao.equals("Excluir")){				
			aluno.excluir();	
			view = request.getRequestDispatcher("listar_alunos.do?acao=buscar");
		}
		
		else if (pAcao.equals("Alterar")) {
			aluno.atualizar();
			session.setAttribute("aluno", aluno.getTO());
			view = request.getRequestDispatcher("VisualizarAluno.jsp");
		}
		
		else if (pAcao.equals("Visualizar")) {
			aluno.carregar();
			session.setAttribute("aluno", aluno.getTO());
			view = request.getRequestDispatcher("VisualizarAluno.jsp");		
		} 
		
		else if (pAcao.equals("Editar")) {
			aluno.carregar();
			session.setAttribute("aluno", aluno.getTO());
			view = request.getRequestDispatcher("AlterarAluno.jsp");		
		}
		
		else if(pAcao.equals("Inserir")){
			aluno.criar();
			aluno.carregar();
		}
		
		else if(pAcao.equals("Atualizar")){
			aluno.atualizar();
			aluno.carregar();
		}
		
		else if (pAcao.equals("Carregar")){
			aluno.carregar();
		}

		view.forward(request, response);
	}

}
