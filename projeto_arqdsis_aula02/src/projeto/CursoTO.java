package projeto;

public class CursoTO {
	private int id;
	   private String nome;
	   private String dataInicio;
	   private String dataTermino;
	   private String hora;
	   private int vagas;
	   private double valor;
	
	//set's
	   public void setId     (int idC)         {this.id = idC;}
	   public void setNome        (String nome)     {this.nome = nome;}
	   public void setDataInicio  (String dInicio)  {this.dataInicio = dInicio;}
	   public void setDataTermino (String dTermino) {this.dataTermino = dTermino;}
	   public void setHora        (String h)        {this.hora = h;}
	   public void setVagas       (int vagas)       {this.vagas = vagas;}
	   public void setValor       (double valor)    {this.valor = valor;}
	   
	   //get's
	   public int     getId     (){
	      return id;}
	   public String  getNome        (){
	      return nome;}
	   public String  getDataInicio  (){
	      return dataInicio;}
	   public String  getDataTermino (){
	      return dataTermino;}
	   public String  getHora        (){
	      return hora;}
	   public int     getVagas       (){
	      return vagas;}
	   public double  getValor       (){
	      return valor;}
}
