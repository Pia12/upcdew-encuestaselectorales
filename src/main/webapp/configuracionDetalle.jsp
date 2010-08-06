<%-- 
    Document   : configuracionDetalle
    Created on : 18/06/2010, 03:25:36 AM
    Author     : Owner
--%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <link rel="stylesheet" type="text/css" href="css/fuente.css">
    	<link  type="text/css" media="all" rel="stylesheet" href="herramientas/calendario/calendar-tas.css" title="win2k-cold-1" />
	<script type="text/javascript" src="herramientas/calendario/calendar.js"></script>
	<script type="text/javascript" src="herramientas/calendario/lang/calendar-es.js"></script>
	<script type="text/javascript" src="herramientas/calendario/calendar-setup.js"></script>

          <script language="javascript1.1">



	function jsAceptar(accion) {


				document.encuestasForm.methodToCall.value = accion;
				document.encuestasForm.submit();

		}




	</script>

</head>

<body>
  <html:form action="configuracion.do">

<input name="methodToCall" type="hidden" value="" />

    <table border="0" width="100%" height="581" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="3"> <jsp:include page="/header.jsp" /> </td>
	</tr>

    <tr>
            <td></td>
             <td></td>
             <!--
            <td width="22%"  style="vertical-align:text-top">
	                <%-- Inicio del Menu del Web Site --%>
	               <%--  <jsp:include page="/menuAdmin.jsp" /> --%>
	                <%-- Fin Menu del Web Site --%>
            </td>-->
            <td  valign="top" align="left">   <p>&nbsp;</p>


             



                     <table width=800 border="1" align="center" cellpadding="0" cellspacing="0" class="tabla1" >

                             <tr> <td> Descripci�n encuesta</td><td> <html:text property="nombre"></html:text>   </td></tr>
                             <tr> <td> Estado</td><td>
                                 <html:select property="estado" >
                                  <html:option value="A">Activo</html:option>
                                  <html:option value="I">Inactivo</html:option>
					</html:select>
                                 </td></tr>
                             <tr> <td> Fecha Inicio</td><td>

                                     <html:text  property="fechaInicio" styleId="fechaInicio" ></html:text>
                                     
                                         <a href="#" id="a_fechaDes"><img src="images/iconos/Calendar.png" width="22" height="16" border="0" /></a>
                                                         <script type="text/javascript">
                                                                                Calendar.setup({
                                                                                inputField     :    "fechaInicio", // id of the input field
                                                                                ifFormat       :    "%d/%m/%Y",       // format of the input field
                                                                                showsTime      :    false,            // will display a time selector
                                                                                button         :    "a_fechaDes",      // trigger for the calendar (button ID)
                                                                                singleClick    :    true,           // double-click mode
                                                                                step           :    1                // show all years in drop-down boxes (instead of every other year as default)
                                                                                });

                                                         </script>



                                 </td></tr>
                             <tr> <td> Fecha Final</td><td>

                                      <html:text property="fechaFin" styleId="fechaFin"></html:text>

                                         <a href="#" id="b_fechaDes"><img src="images/iconos/Calendar.png" width="22" height="16" border="0" /></a>
                                                         <script type="text/javascript">
                                                                                Calendar.setup({
                                                                                inputField     :    "fechaFin", // id of the input field
                                                                                ifFormat       :    "%d/%m/%Y",       // format of the input field
                                                                                showsTime      :    false,            // will display a time selector
                                                                                button         :    "b_fechaDes",      // trigger for the calendar (button ID)
                                                                                singleClick    :    true,           // double-click mode
                                                                                step           :    1                // show all years in drop-down boxes (instead of every other year as default)
                                                                                });

                                                         </script>


                                 </td></tr>
                             <tr> <td>Poblaci�n</td> <td> <html:text property="muestra"></html:text> </td></tr>
                             <tr> <td>Distritos</td><td></td></tr>


                             <tr> <td colspan="2">
                                     <center>
                                        <html:button property="cmdActualizar" styleClass="botonAceptar" onclick="javascript:jsAceptar('iniciar');">
                                           Actualizar
                                         </html:button>
                                      </center>
                                 </td></tr>




                       </table>



            </td>
    </tr>
</table>


  </html:form>
</body>
</html>