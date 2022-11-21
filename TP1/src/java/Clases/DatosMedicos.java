package Clases;
import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
public class DatosMedicos {
    
    private int Glucosa, PresionSistolica, PresionDiastolica;
    private String Comida;

    public String getComida() {
        return Comida;
    }

    public void setComida(String Comida) {
        this.Comida = Comida;
    }
    
    
    public int getGlucosa() {
        return Glucosa;
    }

    public void setGlucosa(int Glucosa) {
        this.Glucosa = Glucosa;
    }

    public int getPresionSistolica() {
        return PresionSistolica;
    }

    public void setPresionSistolica(int PresionSistolica) {
        this.PresionSistolica = PresionSistolica;
    }

    public int getPresionDiastolica() {
        return PresionDiastolica;
    }

    public void setPresionDiastolica(int PresionDiastolica) {
        this.PresionDiastolica = PresionDiastolica;
    }
    public boolean RegistrarNive(DatosMedicos nive,String Curp){
        Connection con;
        Conexion a = new Conexion(); 
       try{
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        con =a.Conectar();
       Statement st = con.createStatement();
       st.executeUpdate("INSERT INTO paciente VALUES('default','"+nive.getGlucosa()+"','"+nive.getPresionSistolica()+"','"+nive.getPresionDiastolica()+"','"
       +nive.getComida()+"','"+dtf.format(LocalDateTime.now())+"','"+Curp+"')");
       ResultSet rs = st.executeQuery("SELECT * FROM paciente");
       return true;
       }catch(Exception e){
           System.out.println("Error: " + e);
           return false;
       }
    }
}
    
