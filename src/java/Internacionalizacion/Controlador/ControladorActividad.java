/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Internacionalizacion.Controlador;

import Internacionalizacion.Modelo.DAO.DAOActividad;
import Internacionalizacion.Modelo.DTO.Actividad;
import java.util.ArrayList;


/**
 *
 * @author JAVIER
 */
public class ControladorActividad {
 
    public String RegistrarActividad(Actividad a){
        DAOActividad dao = new DAOActividad();
        return dao.RegistrarActividad(a);
    }
    
    public Actividad consultarActividad_By_IDConvenio(String convenio) {    
        DAOActividad dao = new DAOActividad();
        return dao.consultarActividad_By_IDConvenio(convenio);    
    }
    
    public ArrayList<Actividad> consultarActividades() {    
        DAOActividad dao = new DAOActividad();
        return dao.consultarActividades();
    }
    
}
