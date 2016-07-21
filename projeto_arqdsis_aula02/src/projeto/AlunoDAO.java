package projeto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import projeto.ConnectionFactory;
//import java.util.ArrayList;
import projeto.AlunoTO;

public class AlunoDAO {
	
	public void incluir(AlunoTO to) {
		String sqlInsert = "INSERT INTO aluno(id, nome,endereco,telefone,email,rg,cpf) VALUES (?,?,?,?,?,?,?)";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
			PreparedStatement st = conn.prepareStatement(sqlInsert);){
			 st.setInt(1,to.getId());
	         st.setString(2,to.getNome());
	         st.setString(3,to.getEndereco());
	         st.setString(4,to.getTelefone());
	         st.setString(5,to.getEmail());
	         st.setString(6,to.getRG());
	         st.setString(7,to.getCPF());
	         st.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void atualizar(AlunoTO to) {
		String sqlUpdate = "UPDATE aluno SET nome = ?, endereco = ?, telefone = ?, email = ?, rg = ?, cpf = ? WHERE id = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
			PreparedStatement st = conn.prepareStatement(sqlUpdate);){
	         st.setString(1,to.getNome());
	         st.setString(2,to.getEndereco());
	         st.setString(3,to.getTelefone());
	         st.setString(4,to.getEmail());
	         st.setString(5,to.getRG());
	         st.setString(6,to.getCPF());
	         st.setInt(7,to.getId());	         
	         st.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void excluir(AlunoTO to) {
		String sqlDelete = "DELETE FROM aluno WHERE id = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
			PreparedStatement st = conn.prepareStatement(sqlDelete);) {
			st.setInt(1, to.getId());
			st.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public AlunoTO carregar(int id) {
		AlunoTO to = new AlunoTO();
		String sqlSelect = "SELECT id, nome, endereco, telefone, email, rg, cpf FROM aluno WHERE aluno.id = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement st = conn.prepareStatement(sqlSelect);) {
			st.setInt(1, id);
			try (ResultSet rs = st.executeQuery();) {
				if (rs.next()) {
					to.setId(rs.getInt("id"));
					to.setNome(rs.getString("nome"));
					to.setEndereco(rs.getString("endereco"));
					to.setTelefone(rs.getString("telefone"));
					to.setEmail(rs.getString("email"));
					to.setRG(rs.getString("rG"));
		            to.setCPF(rs.getString("cPF"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return to;
	}
	
	
}
