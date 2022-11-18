package Clases;
import java.time.LocalDateTime;
import java.sql.*;

public class DatosMedicos {
    
    private String Curp, Cedula;
    private int Id_datos, PresionSistolica, PresionDiastolica, Glucosa;

    public String getCurp() {
        return Curp;
    }

    public void setCurp(String Curp) {
        this.Curp = Curp;
    }

    public String getCedula() {
        return Cedula;
    }

    public void setCedula(String Cedula) {
        this.Cedula = Cedula;
    }

    public int getId_datos() {
        return Id_datos;
    }

    public void setId_datos(int Id_datos) {
        this.Id_datos = Id_datos;
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

    public int getGlucosa() {
        return Glucosa;
    }

    public void setGlucosa(int Glucosa) {
        this.Glucosa = Glucosa;
    }
    
    public boolean RegistrarDatosMedicosPaciente(DatosMedicos dat, String Curp){
        Connection con;
        Conexion a = new Conexion(); 
       try{
        con =a.Conectar();
       Statement st = con.createStatement();
       
       String [] fh = String.valueOf(LocalDateTime.now()).split("T");
           System.out.println(fh[0]);
           System.out.println(fh[1]);
       st.executeUpdate("INSERT INTO datosmedicos VALUES('default','"+dat.getGlucosa()+"','"+dat.getPresionSistolica()+"','"+dat.getPresionDiastolica()+"','"+fh[0]+"','"+fh[1]+"','"+Curp+"')");
       ResultSet rs = st.executeQuery("SELECT * FROM doctor");
       return true;
       }catch(Exception e){
           System.out.println("Error: " + e);
           return false;
       }   
    }
}