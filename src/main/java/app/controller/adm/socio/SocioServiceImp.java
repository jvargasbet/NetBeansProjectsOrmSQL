/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package app.controller.adm.socio;

import app.dao.PersonaDAO;
import app.dao.SocioDAO;
import app.dao.UsuarioDAO;
import app.dao.UsuarioRolDAO;
import app.model.Persona;
import app.model.Socio;
import app.model.Usuario;
import app.model.UsuarioRol;
import app.zelper.EstadoEnum;
import app.zelper.RolesEnum;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

@Service
public class SocioServiceImp implements SocioService {

    @Autowired
    PersonaDAO personaDAO;
    @Autowired
    SocioDAO socioDAO;
    @Autowired
    UsuarioDAO usuarioDAO;
    @Autowired
    UsuarioRolDAO usuarioRolDAO;

    @Override
    public List<Persona> list() {
        return personaDAO.listSocio();
    }

    @Override
    public Persona get(Persona t) {
        return personaDAO.get(t);
    }

    @Override
    public void save(Persona t) {
        personaDAO.save(t);

        Usuario user = new Usuario();
        user.setPersona(t);
        user.setUsuario(t.getEmail());
        user.setPassword(DigestUtils.md5DigestAsHex(t.getEmail().getBytes()));
        user.setEstado(EstadoEnum.ACTIVO.getValue());
        usuarioDAO.save(user);

        UsuarioRol rol = new UsuarioRol();
        rol.setUsuario(user);
        rol.setAuthority(RolesEnum.SOCIO.getValue());
        usuarioRolDAO.save(rol);
        
        Socio socio = new Socio();
        socio.setPersona(t);
        socioDAO.save(socio);

    }

    @Override
    public void update(Persona t) {
        personaDAO.update(t);
    }

    @Override
    public void delete(Persona t) {
        
        
        
                
        personaDAO.delete(t);
        
        
        
        
    }
}
