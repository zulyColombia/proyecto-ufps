        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <!DOCTYPE html>
<!--@uthor: victor urbina 1150962-->
    
        <!--Aqui coloco el header, OJO con include-->
<jsp:include page="diseno.jsp"/>
<jsp:include page="../plantilla/header.jsp"/>
<%@page import="CargaAcademica.Fachada.Fachada" %>
<%@page import="java.util.ArrayList"%>
<%@page import="CargaAcademica.DTO.carga_ActAdministrativasDTO"%>
<%
    Fachada f=new Fachada();
%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" >
        <!--Contenido-->
        <!--Aqui empieza el area de trabajo, que cambiara dependiendo de las funcionalidades
        a la cual se quiera tener acceso, segun el boton, o accion ejecutada tras un clic, y 
        en relacion al tipo de usuario, esta seccion sera dinamica, el resto de vistas estaran
        dentro de un div-->
        <div class="ufps-container-fluid">
        <div class="ufps_row">
            <form action="procesar/administracion_pro.jsp" method="post" align="center">

            <!--AQUI VA TODO EL CODIGO DINAMICO QUE CAMBIA SEGUN LAS INFORMACION, FUNCION Y USUARIO-->

            <h1 align="center">Registro Actividades de Administración Académica</h1>

        <!--    <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
             <label>Consecutivo</label>
             <input class="ufps-input ufps-red" type="number" maxlength="2" min="0" max="20" name="consecutivo" id="consecutivo" required disabled="true">
            </div> -->
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
             <label>Cargo</label>
             <select id="cargo" name="cargo" class="ufps-input ufps-red">
                <option value="decano">Decano</option>
                <option value="director">Director</option>
                <option value="vicerrector">Vicerrector</option>
                <option value="asistente">Asistente</option>
                 <option value="jefeDivision">Jefe de División</option>
                <option value="jefeDepartamento">Jefe de Departamento</option
                <option value="coordinadorPrograma">Coordinador de Programa</option>
                <option value="representacionInstitucional">Representación Institucional</option>
                <option value="representacionGremial">Representación Gremial</option>
             </select>
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
             <label>Horas Semanal del cargo:</label>
             <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="50" name="horaSemanal" id="horaSemanal" required="required">
            </div>
            
       <!--     <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
              <label>Consecutivo:</label>
              <input class="ufps-input ufps-red" type="number" maxlength="2" min="0" max="20" name="consecutivo2" id="consecutivo2" required="required" disabled="true">
            </div> -->
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
             <label>Otras actividad Administrativa:</label>
             <input class="ufps-input ufps-red" type="text" placeholder="Ej:actividad 1" name="actividad" id="actividad" required="required">
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
             <label>Horas semanal de la actividad:</label>
             <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="50" name="horaSemanal2" id="horaSemanal2" required="required" onclick=horaSemestral()>
            </div>
            
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-12" align="center">
                <input class="ufps-btn" type="submit" id="registrar" name="registrar" value="guardar">
                <a href="index.jsp">Atrás</a>    
            </div>
            
        </form><!--Aqui se termina el div del area de trabajo-->
        </div>
        </div>
        
    <br>
 <%
     ArrayList<carga_ActAdministrativasDTO> lista=f.obtenerActAdmi();
   //  carga_ActAdministrativasDTO dto=lista.get(0);
     
   //  lista.add(dto);

 %>
    
    <table class="table table-bordered  table-striped table-bordered container-fluid">
        <thead>  <tr align="center"><th>Cargo</th><th>Horas Semanales</th><th>Otra actividad</th><th>Horas Semanales</th><th>Horas Semestre</th>
            </tr> </thead>
        <tbody>
        <%
            int sum_cargo=0;
            int suma_act=0;
            int suma_total=0;
            for(carga_ActAdministrativasDTO x:lista){
                sum_cargo+=x.getHoras_cargo();
                suma_act+=x.getHoras_act();
                suma_total+=((x.getHoras_cargo()+x.getHoras_act())*16);
        %>    
            
            
            <tr>
                <td><%= x.getCargo() %></td> 
                <td><%= x.getHoras_cargo() %></td>
                <td><%= x.getActividad() %></td>
                <td><%= x.getHoras_act() %></td>
                <td><%= (x.getHoras_cargo()+x.getHoras_act())*16 %></td>
            </tr>   
        <%
           } 
        %>  
        <tr>
            <td class="table-danger"colspan="1">Sub-total</td>
            <td><%= sum_cargo %></td>
            <td class="table-danger"colspan="1">Sub-total</td>
             <td><%= suma_act %></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td class="table-danger" colspan="">Total</td>
            <td><%= suma_total %></td>
        </tr>
            
            
        </tbody>
       
    </table>
        
    <!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
    universidad, programa, materia y desarrolladores-->
    <!--Aqui coloco el footer, OJO con include-->
    <jsp:include page="../plantilla/footer.jsp"/>                                                                                                                                                                                                                                                                                                 