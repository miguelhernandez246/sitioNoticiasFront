<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/include/functions2.jsp" %>
<%
    String usuario = traeVariable(request, "usuario");
    String idUsuario = traeVariable(request, "idUsuario");
    String tipoUsuario = traeVariable(request, "tipo");
    String idpersonal = traeVariable(request, "idpersonal");

    session.setAttribute("usuario",usuario);
    session.setAttribute("idUsuario",idUsuario);
    session.setAttribute("tipo",tipoUsuario);
    session.setAttribute("idpersonal",idpersonal);
%>
1