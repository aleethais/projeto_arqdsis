package projeto;

public class AlunoTeste {

	public static void main(String[] args) {
		Aluno aluno = new Aluno(1, "Bela Lugosi", "Rua Oito", "12345456", "prof.bonato@gmail.com", "8382838", "34567833359");
		
		aluno.criar();
		aluno.carregar();
		System.out.println(aluno);
		aluno.setTelefone("123123333");
		aluno.atualizar();
		aluno.carregar();
		System.out.println(aluno);
		aluno.excluir();
		aluno.carregar();
		System.out.println(aluno);		
	}

	}

