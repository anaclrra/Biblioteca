package resources;
import java.sql.*;

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

    /*public ResultSet livros() throws SQLException {
        if(stmt == null){
            throw new SQLException("Statement is null");
        }
        String query = "SELECT * FROM livros";
        return stmt.executeQuery(query);
    }*/

    public String getUsuario(String userName) throws SQLException{
        String nome = "";
        rs = stmt.executeQuery("SELECT * FROM usuario WHERE userName = '" + userName + "'");
        while(rs.next()){
            nome = rs.getString("name");
        }
        return nome;
    }

    public boolean getLogin(String userName, String password) throws SQLException{
        String dbPassword = "";
        rs = stmt.executeQuery("SELECT password FROM usuario WHERE userName = '" + userName + "'");
        while(rs.next()){
            dbPassword = rs.getString("password");
        }
        return dbPassword.equals(password);
    }
}