package mx.uv.c80640;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// import com.mysql.jdbc.PreparedStatement;
// import com.mysql.jdbc.Statement;
import java.sql.*;

// Data Access Object
public class DAO {
    // en el dao se establece la conexion a la BD
    private static Conexion c = new Conexion();

    // este metodo regresa un conjunto de munumentos que cumpla un criterio
    public static List<Monumento> listaMonumentos() {
        Statement stm = null;
        ResultSet rs = null;
        Connection conn = null;
        List<Monumento> resultado = new ArrayList<>();

        conn = Conexion.getConnection();

        try {
            String sql = "SELECT * from monumentos";
            stm = (Statement) conn.createStatement();
            rs = stm.executeQuery(sql);
            while (rs.next()) {
                Monumento u = new Monumento(rs.getInt("id"), rs.getString("paisMonumento"), rs.getString("nombreMonumento"),rs.getString("anioConstruccion"),rs.getString("anioInaguracion"),rs.getInt("altura"),rs.getInt("largo"),rs.getString("materiales"));
                resultado.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            if (rs != null)
                try {
                    rs.close();
                } catch (SQLException e) {
                    System.out.println(e);
                }
            rs = null;
            if (stm != null) {
                try {
                    stm.close();
                } catch (Exception e) {
                    System.out.println(e);
                }
                stm = null;
            }
            try {
                conn.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }

        return resultado;
    }
}

//     public static String crearMonumento(Monumento u) {
//         PreparedStatement stm = null;
//         Connection conn = null;
//         String msj = "";

//         conn = c.getConnection();
//         try {
//             String sql = "INSERT INTO usuarios (id, nombre, password) values (?,?,?)";
//             stm = (PreparedStatement) conn.prepareStatement(sql);
//             stm.setString(1, u.getId());
//             stm.setString(2, u.getNombre());
//             stm.setString(3, u.getPassword());
//             if (stm.executeUpdate() > 0)
//                 msj = "Monumento agregado";
//             else
//                 msj = "Monumento no agregado";

//         } catch (Exception e) {
//             System.out.println(e);
//         } finally {
//             if (stm != null) {
//                 try {
//                     stm.close();
//                 } catch (Exception e) {
//                     System.out.println(e);
//                 }
//                 stm = null;
//             }
//             try {
//                 conn.close();
//             } catch (Exception e) {
//                 System.out.println(e);
//             }
//         }
//         return msj;
//     }
// }