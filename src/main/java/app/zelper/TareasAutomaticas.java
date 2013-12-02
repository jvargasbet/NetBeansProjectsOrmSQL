
package app.zelper;

import app.dao.ServicioDAO;
import app.model.Servicio;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;

public class TareasAutomaticas {
    
    @Autowired
    ServicioDAO servicioDAO;
            
    @Scheduled(cron = "0 0/1 * * * * ")
    
    public void listServicio() {
        System.out.println("Listando Servicio");
        List<Servicio> Servicios = servicioDAO.list();
        for (Servicio servicio : Servicios) {
            System.out.println(servicio.getDescripcion());
        }
    }
    
    @Async
    public static void enviarMensaje() {
        try {
            Thread.sleep(5000l);    
            System.out.println("ENVIANDO MENSAJE");
        } catch (InterruptedException ex) {
            System.out.println(ex.getLocalizedMessage());
        }
    }
}
