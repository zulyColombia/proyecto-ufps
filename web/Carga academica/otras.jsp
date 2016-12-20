<%--/**@author Seminario Integrador 3: Ing Pilar Rojas, Estud: Victor Urbina 1150962 & Jesus Rojas 1150833 20/11/2016*/--%>
       <!--Aqui coloco el header, OJO con include-->
       <jsp:include page="diseno.jsp"/>
       <jsp:include page="../plantilla/header.jsp"/>
       
        <!--Contenido-->
        <!--Aqui empieza el area de trabajo, que cambiara dependiendo de las funcionalidades
        a la cual se quiera tener acceso, segun el boton, o accion ejecutada tras un clic, y 
        en relacion al tipo de usuario, esta seccion sera dinamica, el resto de vistas estaran
        dentro de un div-->
        <div class="ufps-container-fluid">
        <div class="ufps_row">
        <form  align="center">

            <!--AQUI VA TODO EL CODIGO DINAMICO QUE CAMBIA SEGUN LAS INFORMACION, FUNCION Y USUARIO-->

            <h1 align="center">Registro de Otras Actividades</h1>

            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
             <label>Consecutivo</label>
             <input class="ufps-input ufps-red" type="number" maxlength="2" min="0" max="20" name="consecutivo" id="consecutivo" required="required" disabled="true">
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
             <label>Identificaci�n de la actividad</label>
             <input class="ufps-input ufps-red" type="text" placeholder="Ej:actividad 1" name="actividad" id="actividad" required="required">
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
             <label>Fecha 1er Informe</label>
             <input class="ufps-input ufps-red" type="text" placeholder="Ej:informe 1" name="informeUno" id="informeUno" required="required">
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
             <label>Fecha 2do Informe</label>
             <input class="ufps-input ufps-red" type="text" placeholder="Ej:informe 2" name="informeDos" id="informeDos" required="required">
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
             <label>Otro</label>
             <input class="ufps-input ufps-red" type="text" placeholder="Ej:otro 1" name="otro" id="otro" required>
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
             <input type="submit" class="ufps-btn" id="registrar" name="registrar" value="guardar">
             <a href="index.jsp">Atr�s</a>
            </div>
            
      
        </form><!--Aqui se termina el div del area de trabajo-->
        </div>
        </div>

        <br>
<table class="ufps-table ufps-container">
    <tr align="center"><th>C�digo</th><th>Actividad</th><th>Fecha 1er Informe</th><th>Fecha 2do Informe</th></tr>
    <tr align="center"><td>1</td><td>Hacer Objetivos</td><td>12/11/2016</td><td>14/11/2016</td></tr>
</table>
        
        <!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
        universidad, programa, materia y desarrolladores-->
    
<!--Aqui coloco el footer, OJO con include-->
<jsp:include page="../plantilla/footer.jsp"/>                                                                                                                                                                                                                                                                                                                