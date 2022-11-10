
import java.sql.*;

public class BaseDatos {
    Connection con;
    public void Conectar(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Glucky","root","n0m3l0");
        }catch  (Exception e){
            System.out.println("Error " + e);
        }
    }
    public void registrarPacientes(String Curp,String Email,String Pass,String Nombre
    ,String Apellidos,String Sexo,int edad,int Tipodia,String Telefono){
        Sta
    }
}
