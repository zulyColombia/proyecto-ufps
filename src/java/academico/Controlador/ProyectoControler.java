/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package academico.Controlador;

import academico.DAO.ProyectoDAO;
import academico.DTO.ProyectoDTO;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Mauricio
 */
public class ProyectoControler {
    
    public ArrayList<ProyectoDTO> obtenerProyectos(int id_grp) throws SQLException{
        ProyectoDAO dao = new ProyectoDAO();
        return dao.obtenerProyectos(id_grp);
    }
    public String obtenerTipoEntregable(int proyecto_id) throws SQLException{
        ProyectoDAO dao = new ProyectoDAO();
        return dao.obtenerTipoEntregable(proyecto_id);
    }
    public boolean modificarProyecto(int proyecto_id, ProyectoDTO new_dto) throws SQLException {
        ProyectoDAO dao = new ProyectoDAO();
        return dao.modificarProyecto(proyecto_id, new_dto);
    }
    
    public ArrayList<ProyectoDTO> obtenerPKeywords(int cod_grupo, String keywords) throws SQLException{
        ProyectoDAO dao = new ProyectoDAO();
        return dao.obtenerPKeywords(cod_grupo, keywords);
    }
}
