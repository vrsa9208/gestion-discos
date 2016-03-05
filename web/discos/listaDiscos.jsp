<%-- 
    Document   : listaDiscos
    Created on : 5/03/2016, 01:14:02 PM
    Author     : JAVA-08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><bean:message key="etiqueta.listados.discos.titulo" /></h1>

        <table border="1" align="center">
            <tr>
                <th><bean:message key="etiqueta.disco.admin.titulo" /></th>
                <th><bean:message key="etiqueta.disco.admin.genero" /></th>
                <th><bean:message key="etiqueta.disco.admin.precio" /></th>
                <th><bean:message key="etiqueta.disco.admin.idioma" /></th>
                <th><bean:message key="etiqueta.disco.admin.pais" /></th>
            </tr>
            <logic:present name="discos" scope="request">
                <logic:iterate name="discos" scope="request" id="disco">
                    <tr>
                        <td><bean:write name="disco" property="titulo" /></td>
                        <td><bean:write name="disco" property="generoMusical.nombre" /></td>
                        <td><bean:write name="disco" property="precio" /></td>
                        <td><bean:write name="disco" property="idioma.descripcion" /></td>
                        <td><bean:write name="disco" property="pais.nombre" /></td>
                    </tr>
                </logic:iterate>
            </logic:present>
        </table>
    </body>
</html>
