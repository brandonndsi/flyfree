package datos;

import static datos.BaseData.getConexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DestinosData extends BaseData{

    // variables globales
    private PreparedStatement statement;
    private Connection con;
}
