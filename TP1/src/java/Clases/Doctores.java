package Clases;
import java.sql.*;
public class Doctores {
    private String Cedula, Email, Pass, Nombre, Apellidos, Sexo, Calle, Localidad, Telefono;
    private int CodigoPostal, Edad, NumeroCons;

    public String getCedula() {
        return Cedula;
    }

    public void setCedula(String Cedula) {
        this.Cedula = Cedula;
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

    public String getCalle() {
        return Calle;
    }

    public void setCalle(String Calle) {
        this.Calle = Calle;
    }

    public String getLocalidad() {
        return Localidad;
    }

    public void setLocalidad(String Localidad) {
        this.Localidad = Localidad;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public int getCodigoPostal() {
        return CodigoPostal;
    }

    public void setCodigoPostal(int CodigoPostal) {
        this.CodigoPostal = CodigoPostal;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }

    public int getNumeroCons() {
        return NumeroCons;
    }

    public void setNumeroCons(int NumeroCons) {
        this.NumeroCons = NumeroCons;
    }

    public boolean registrarDoctores(Doctores doc){
        Connection con;
        Conexion a = new Conexion(); 
       try{
        con =a.Conectar();
       Statement st = con.createStatement();
       st.executeUpdate("INSERT INTO doctor VALUES('"+doc.getCedula()+"','"+doc.getEmail()+"','"+doc.getPass()+"','"+doc.getNombre()+"','"
       +doc.getApellidos()+"','"+doc.getSexo()+"','"+doc.getCalle()+"','"+doc.getNumeroCons()+"','"+doc.getLocalidad()+"','"+doc.getCodigoPostal()+
               "','"+doc.getEdad()+"','"+doc.getTelefono()+"')");
       ResultSet rs = st.executeQuery("SELECT * FROM doctor");
       return true;
       }catch(Exception e){
           System.out.println("Error: " + e);
           return false;
       }
    }
    public String LoginDoctores(String Cedula,String Pass ){
        Connection con;
        Conexion a = new Conexion(); 
        try{
            con =a.Conectar();
            Statement st = con.createStatement();
            st=con.createStatement();
            ResultSet rs =st.executeQuery("SELECT * FROM doctor WHERE Cedula = '"+Cedula+"'");
            if(rs.next()==true){
                String pas = rs.getString("Pass");
                if(pas.equals(Pass)){
                    return "Excelente";
                }
                else{
                    return "PassIn";
                }
            }
            else{
            return "NoRegi";
            }
        }catch(Exception e){
            System.out.println("Error" + e);
            return null;
        }
    }
    public ResultSet pacientesSoli(){
       Connection con;
       Conexion a = new Conexion(); 
       ResultSet rs=null;
        try{
            con =a.Conectar();
            Statement st = con.createStatement();
            st=con.createStatement();
            rs =st.executeQuery("SELECT * FROM paciente_doctor WHERE Conectado = 'espera'");
            return rs;
        }catch(Exception e){
            System.out.println("Error" + e);
            return rs;
        }
    }
    public Doctores obtenerD(String Cedula){
        Connection con;
        Conexion a = new Conexion();
        Doctores doc = new Doctores();
        try{
            con =a.Conectar();
            Statement st = con.createStatement();
            st=con.createStatement();
            ResultSet rs =st.executeQuery("SELECT * FROM doctor WHERE Cedula = '"+Cedula+"'");
            if(rs.next()==true){
                doc.setNombre(rs.getString("Nombre"));
                doc.setApellidos(rs.getString("Apellidos"));
                doc.setEmail(rs.getString("Email"));
                doc.setEdad(rs.getInt("Edad"));
                doc.setTelefono(rs.getString("Telefono"));
                doc.setCedula(rs.getString("Cedula"));
                doc.setCalle(rs.getString("Calle"));
                doc.setNumeroCons(rs.getInt("NumeroCons"));
                doc.setCodigoPostal(rs.getInt("CodigoPostal"));
                doc.setLocalidad(rs.getString("Localidad"));
                doc.setSexo(rs.getString("Sexo"));
                return doc;
            }
        }catch(Exception e){
            System.out.println("Error" + e);
            return doc;
        }
        return doc;
    }
    public void conexionAceptada(String Curp){
        Connection con;
        Conexion a = new Conexion();
        ResultSet rs=null;
        try{
            con =a.Conectar();
            Statement st = con.createStatement();
            st=con.createStatement();
            st.executeUpdate("UPDATE paciente_doctor SET Conectado = 'aceptada' WHERE Curp = '"+Curp+"'");
        }catch(Exception e){
            System.out.println("Error" + e);
        }
    }
    public void conexionDenegada(String Curp){
        Connection con;
        Conexion a = new Conexion();
        ResultSet rs=null;
        try{
            con =a.Conectar();
            Statement st = con.createStatement();
            st=con.createStatement();
            st.execute("UPDATE paciente_doctor SET Conectado = 'denegada' WHERE Curp = '"+Curp+"'");
        }catch(Exception e){
            System.out.println("Error" + e);
        }
    }
}
