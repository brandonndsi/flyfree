package datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class BaseData {

    private static Connection con = null;
    private static String usuario = "root";
    private static String pass = "";

    public static Connection getConexion() {

        // genera conexxion con el driver
        try {
            Class.forName("com.mysql.jdbc.Driver");// de la libreria MySQL JDBC
        } catch (ClassNotFoundException ex) {
            JOptionPane.showMessageDialog(null, "Error de conexcion" + ex);
        }

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbflyfree", usuario, pass);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error de conexcion" + e);
        }
        return con;
    }
}
