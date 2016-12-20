/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Practicas.Controlador;

import Practicas.DAO.perfilDAO;
import Practicas.DTO.perfilDTO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Administrador
 */
public class perfilControlador {

    public int id_perfil_maximo() {
        perfilDAO dao= new perfilDAO();
        return dao.id_maximo_perfil();
    }
    
    public String RegistrarPerfil(perfilDTO p) {
       perfilDAO dao = new perfilDAO();
       return dao.registrarPerfil(p);
    }
    
    public List<perfilDTO> listarPerfiles(){
        perfilDAO dao = new perfilDAO();
        return dao.listarPerfiles();
    }

    public perfilDTO buscarPerfil(int id) {
       perfilDAO dao = new perfilDAO();
       return dao.buscarPerfil(id);
    }
      public String eliminarPerfil(int id) throws SQLException{
        perfilDAO ent= new perfilDAO();
        return ent.eliminar_Perfil(id);
    }
}
