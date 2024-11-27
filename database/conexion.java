import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class conexion{
    Connection conectar=null;
    public Connection conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conectar=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/control","root","12345678");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, "Error de coneccion"+ e.getMessage());
        }
        return conectar;
    }
}