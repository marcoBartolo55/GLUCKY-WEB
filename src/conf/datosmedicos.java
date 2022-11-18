
package Clases;
import java.sql.Time;
import java.sql.Date;
public class datosmedicos {
    
    private Date Fecha_registro;
    private Time Hora_registro;
    private int Id_datos, Glucosa, PresionSistolica, PresionDiastolica;

    public Date getFecha_registro() {
        return Fecha_registro;
    }

    public void setFecha_registro(Date Fecha_registro) {
        this.Fecha_registro = Fecha_registro;
    }

    public Time getHora_registro() {
        return Hora_registro;
    }

    public void setHora_registro(Time Hora_registro) {
        this.Hora_registro = Hora_registro;
    }

    public int getId_datos() {
        return Id_datos;
    }

    public void setId_datos(int Id_datos) {
        this.Id_datos = Id_datos;
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
    
    
    
}
