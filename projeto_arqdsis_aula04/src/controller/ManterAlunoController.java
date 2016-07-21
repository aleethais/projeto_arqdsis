package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Aluno;

/**
 * Servlet implementation class ManterAlunoController
 */
@WebServlet("/manter_aluno.do")
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
		String pAcao = request.getParameter("acao");
		String pNome = request.getParameter("nome");
		String pEndereco = request.getParameter("endereco");
		String pTelefone = request.getParameter("telefone");
		String pEmail = request.getParameter("email");
		String pRg = request.getParameter("rg");
		String pCpf = request.getParameter("cpf");
		int pId = Integer.parseInt(request.getParameter("id"));

		Aluno aluno = new Aluno (pId, pNome, pEndereco,pTelefone,pEmail,pRg,pCpf);
		if(pAcao.equals("Inserir")){
			aluno.criar();
			aluno.carregar();
		}else if(pAcao.equals("Atualizar")){
			aluno.atualizar();
			aluno.carregar();
		}else if (pAcao.equals("Carregar")){
			aluno.carregar();
		}else if(pAcao.equals("Excluir")){				
			aluno.excluir();
		}

		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Aluno Cadastrado");
		out.println("</title></head><body>");
		out.println("id: " + aluno.getId() + "<br>");
		out.println("Nome: " + aluno.getNome() + "<br>");
		out.println("Endereço: " + aluno.getEndereco() + "<br>");
		out.println("Telefone: " + aluno.getTelefone() + "<br>");
		out.println("E-mail: " + aluno.getEmail() + "<br>");
		out.println("RG: " + aluno.getRG() + "<br>");
		out.println("CPF: " + aluno.getCPF() + "<br>");
		out.println("</body></html>");
	}

}
