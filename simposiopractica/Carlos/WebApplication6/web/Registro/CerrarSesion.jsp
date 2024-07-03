<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.io.IOException" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>

<%
    HttpSession sessionToInvalidate = request.getSession(false); // Obtener la sesión actual si existe

    if (sessionToInvalidate != null) {
        sessionToInvalidate.invalidate(); // Invalidar la sesión actual si existe
    }

    // Redirigir a la página de inicio
    response.sendRedirect("index.jsp");
%>
