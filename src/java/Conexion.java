package Clases;
import java.sql.*;
public class Conexion {
    public Connection Conectar(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Glucky","root","n0m3l0");
        }catch  (Exception e){
            System.out.println("Error " + e);
        }
        return con;
    }
}
