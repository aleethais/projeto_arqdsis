package projeto;

public class CursoTeste {

	public static void main(String[] args) {
		Curso curso = new Curso(1, "Sistemas de Informação", "2016-02-09", "2016-03-10", "02:54", 4, 6);
		
		curso.criar();
		curso.carregar();
		System.out.println(curso);
		curso.setHora("12:00");
		curso.atualizar();
		curso.carregar();
		System.out.println(curso);
		curso.excluir();
		curso.carregar();
		System.out.println(curso);		
	}

}
