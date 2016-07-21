package projeto;

public class AlunoTO {
	private int id;
	private String nome;
	private String endereco;
	private String telefone;
	private String email;
	private String rG;
	private String cPF;
	
	
	public int getId(){
		return id;
	}
	
	public void setId(int id){
		this.id = id;
	}
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRG() {
		return rG;
	}

	public void setRG(String rG) {
		this.rG = rG;
	}

	public String getCPF() {
		return cPF;
	}

	public void setCPF(String cPF) {
		this.cPF = cPF;
	}

}
