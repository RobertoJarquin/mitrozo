<%@page import="archivos.GuardarUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1>Registro de Usuario</h1>
        <%
            String nombre = request.getParameter("name");
            String correo = request.getParameter("email");
            String contraseña = request.getParameter("password");
            String cedula = request.getParameter("numeroID");
            String institucion = request.getParameter("InstitucionEducativa");
            String areaInteres = request.getParameter("AreadeInteres");
            String tipoUsuario = request.getParameter("TipoDeUsuario");
            
            // Validación del lado del servidor
            if (nombre == null || nombre.isEmpty() ||
                correo == null || correo.isEmpty() ||
                contraseña == null || contraseña.isEmpty() ||
                cedula == null || cedula.isEmpty() ||
                institucion == null || institucion.isEmpty() ||
                areaInteres == null || areaInteres.isEmpty() ||
                tipoUsuario == null || tipoUsuario.isEmpty()) {
                out.println("Uno o más campos están vacíos. Por favor, complete todos los campos.<br>");
            } else {
                GuardarUsuario gu = new GuardarUsuario();
                boolean bandera = gu.guardarUsuario(nombre, correo, contraseña, cedula, institucion, areaInteres, tipoUsuario);
                if (bandera) {
                    out.print("Insertado Correctamente!");
                } else {
                    out.print("No insertado");
                }
            }
        %>
    </body>
</html>