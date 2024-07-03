<%@ page import="archivos.VerificarUsuario" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    String correo = request.getParameter("email");
    String contraseña = request.getParameter("password");

    VerificarUsuario Ve = new VerificarUsuario();
    String userName = Ve.verificarUsuario(correo, contraseña);
    
    if (userName != null) {
        // Guardar el nombre de usuario y el correo en la sesión
        session.setAttribute("userName", userName);
        session.setAttribute("userEmail", correo);
        response.sendRedirect("index.jsp"); // Redirigir a la página de inicio
    } else {
        String errorMessage = "Correo electrónico o contraseña incorrectos";
        request.setAttribute("errorMessage", errorMessage);
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }
%>
