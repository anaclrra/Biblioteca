package data;
import java.sql.*;
import java.util.ArrayList;

import model.Livro;

public class Banco {
    private Statement stmt;
    private ResultSet rs;
    private Connection con;

    public Banco() {
        String url = "jdbc:mysql://localhost:3306/biblioteca";
        String user = "root";
        String password = "";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
            stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
        }catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public String getUsuario(String userName) throws SQLException{
        String nome = "";
        rs = stmt.executeQuery("SELECT * FROM usuario WHERE userName = '" + userName + "'");
        while(rs.next()){
            nome = rs.getString("name");
        }
        return nome;
    }

    public String getLogin(String userName) throws SQLException{
        String dbPassword = "";
        rs = stmt.executeQuery("SELECT * FROM usuario WHERE userName = '" + userName + "'");
        while(rs.next()){
            dbPassword = rs.getString("password");
        }

        return dbPassword;
    }

    public ArrayList<Livro> getLivrosByTitulo(String titulo) throws SQLException{
        ArrayList<Livro> livros = new ArrayList<Livro>();
        rs = stmt.executeQuery("SELECT * FROM livros WHERE titulo LIKE '%" + titulo + "%'");
        while(rs.next()){
            Livro livro = new Livro();
            livro.setTitulo(rs.getString("titulo"));
            livro.setAutor(rs.getString("autor"));
            livro.setExemplares(rs.getInt("exemplares"));

            livros.add(livro);
        }
        return livros;
    }

    public void deletarLivro(String titulo) throws SQLException{
        stmt.executeUpdate("DELETE FROM livros WHERE titulo = '" + titulo + "'");
    }

    public void cadastrarLivro(int id, String titulo, String autor,
                                int edicao, String editora, int ano,
                                String codigo, int exemplares) throws SQLException{
        stmt.executeUpdate("INSERT INTO livros VALUES(" +
                            "'"+id+"'," +
                            "'"+titulo+"'," +
                            " '"+autor+"'," +
                            "'"+edicao+"', " +
                            "'"+editora+"', " +
                            "'"+ano+"', " +
                            "'"+codigo+"', " +
                            "'"+exemplares+"')");
    }

    public void atualizarLivro(String tituloOld, String newTitulo, String autor,
                               int edicao, String editora, int ano,
                               String codigo, int exemplares) throws SQLException{
        stmt.executeUpdate("UPDATE livros SET \n"+
                        "titulo = '"+newTitulo+"',\n"+
                        "autor = '"+autor+"',\n"+
                        "edicao = '"+edicao+"',\n"+
                        "editora = '"+editora+"',\n"+
                        "ano = '"+ano+"',\n"+
                        "codigo = '"+codigo+"',\n"+
                        "exemplares = '"+exemplares+"' " +
                "       WHERE titulo = '"+tituloOld+"'");
    }
}
