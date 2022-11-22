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
       st.executeUpdate("INSERT INTO datosmedicos VALUES(default ,'"+nive.getGlucosa()+"','"+nive.getPresionSistolica()+"','"+nive.getPresionDiastolica()+"','"
       +nive.getComida()+"','"+dtf.format(LocalDateTime.now())+"','"+Curp+"')");
       ResultSet rs = st.executeQuery("SELECT * FROM datosmedicos");
       return true;
       }catch(Exception e){
           System.out.println("Error: " + e);
           return false;
       }
    }
    public void RegistraDoc(String Cedula,String Curp){
        Connection con,con2,con3;
        Conexion a = new Conexion(); 
        String b="";
       try{
           con =a.Conectar();
           Statement st1 = con.createStatement();
           ResultSet rs1 =st1.executeQuery("SELECT * FROM datosmedicos WHERE Curp = '"+Curp+"'");    
           while(rs1.next()==true){
           b="";
           con2 =a.Conectar();
           Statement st2 = con2.createStatement();
           ResultSet rs2 =st2.executeQuery("SELECT * FROM paciente_docotor_datosmedicos Where Cedula ='"+Cedula+"'");
           while(rs2.next()==true){
               if(rs1.getInt("Id_datos")==rs2.getInt("Id_datos")){
                   b="yaestoy";
                   break;
               }
           }
           if(!b.equals("yaestoy")){
           con3 =a.Conectar();
       Statement st = con3.createStatement();
       st.executeUpdate("INSERT INTO paciente_docotor_datosmedicos VALUES('"+Curp+"','"+Cedula+"','"+rs1.getInt("Id_datos")+"')");
           }
            }
        }catch(Exception e){
           System.out.println("Error: " + e);
       }
    }
    public int[] PromedioGlupa(String Curp){
        Connection con;
        Conexion a = new Conexion(); 
        int glucosa =0;
        int presionSis = 0;
        int presionDia = 0;
        int vez=0;
       try{
           con =a.Conectar();
           Statement st1 = con.createStatement();
           ResultSet rs1 =st1.executeQuery("SELECT * FROM datosmedicos WHERE Curp = '"+Curp+"'");    
           while(rs1.next()==true){
               glucosa = glucosa + rs1.getInt("Glucosa");
               presionSis = presionSis + rs1.getInt("PresionSistolica");
               presionDia = presionDia + rs1.getInt("PresionDiastolica");
               vez = vez+ 1;
            }
           glucosa = (int)(glucosa/vez);
           presionSis = (int)(presionSis/vez);
           presionDia = (int)(presionDia/vez);
           int regresa[] ={glucosa,presionSis,presionDia};
           System.out.println("/"+regresa[0]+"/"+regresa[1]+"/"+regresa[2]);
            return regresa;
             }catch(Exception e){
                System.out.println("Error: " + e);
             return null;
        }     
    }
    public int[] PromedioGluDoc(String Cedula){
        Connection con;
        Conexion a = new Conexion(); 
        int glucosa =0;
        int presionSis = 0;
        int presionDia = 0;
        int vez=0;
       try{
           con =a.Conectar();
           Statement st1 = con.createStatement();
           ResultSet rs1 =st1.executeQuery("SELECT * FROM paciente_docotor_datosmedicos WHERE Cedula = '"+Cedula+"'");    
           while(rs1.next()==true){
               con =a.Conectar();
                Statement st2 = con.createStatement();
                ResultSet rs2 =st2.executeQuery("SELECT * FROM datosmedicos WHERE Id_datos = '"+rs1.getInt("Id_datos")+"'");
                if(rs2.next()==true){
               glucosa = glucosa + rs2.getInt("Glucosa");
               presionSis = presionSis + rs2.getInt("PresionSistolica");
               presionDia = presionDia + rs2.getInt("PresionDiastolica");
               vez = vez+ 1;
                }
            }
           glucosa = (int)(glucosa/vez);
           presionSis = (int)(presionSis/vez);
           presionDia = (int)(presionDia/vez);
           int regresa[] ={glucosa,presionSis,presionDia};
           System.out.println("/"+regresa[0]+"/"+regresa[1]+"/"+regresa[2]);
            return regresa;
             }catch(Exception e){
                System.out.println("Error: " + e);
             return null;
        }
    }
}
