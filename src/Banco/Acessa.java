package Banco;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author BLA
 */
public class Acessa {
//Declaração dos objetos

    public ResultSet RS;
    public java.sql.Statement stmt;
    Connection con;
    //Fim da declaração dos objetos

    //Criando o método que vai conectar o banco
    public void entBanco() {

        try {
            Class.forName("net.sourceforge.jtds.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            JOptionPane.showMessageDialog(null, "Driver não correto!");
        }

        try {
            con = DriverManager.getConnection("jdbc:jtds:sqlserver://127.0.0.1:1433/mestrado", "sa", "123");
            stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            //JOptionPane.showMessageDialog(null, "Conectado!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex);
        }
    }
    //Fim do método que vai conectar o banco
    

    
}
