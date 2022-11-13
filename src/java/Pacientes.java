package Clases;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.Statement;
public class Pacientes {
    private String Curp,Email,Pass,Nombre,Apellidos,Sexo,Telefono;
    private int Edad,TipoDiabetes;

    public String getCurp() {
        return Curp;
    }

    public void setCurp(String Curp) {
        this.Curp = Curp;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }

    public int getTipoDiabetes() {
        return TipoDiabetes;
    }

    public void setTipoDiabetes(int TipoDiabetes) {
        this.TipoDiabetes = TipoDiabetes;
    }


    public void registrarPacientes(Pacientes pa){
        Connection con;
        Conexion a = new Conexion(); 
       try{
        con =a.Conectar();
       Statement st = con.createStatement();
       st.executeUpdate("INSERT INTO paciente VALUES('"+pa.getCurp()+"','"+pa.getEmail()+"','"+pa.getPass()+"','"+pa.getNombre()+"','"
       +pa.getApellidos()+"','"+pa.getSexo()+"','"+pa.getEdad()+"','"+pa.getTipoDiabetes()+"','"+pa.getTelefono()+"')");
       ResultSet rs = st.executeQuery("SELECT * FROM paciente");
       }catch(Exception e){
           System.out.println("Error: " + e);
       }
    }
}
