<%-- 
    Document   : listaCategorias
    Created on : 9 de ago. de 2024, 16:59:02
    Author     : Aluno
--%>

<%@page import="com.mycompany.contatos.Categorias"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <table border="1"> 
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Editar</th>
            <th>Visualizar</th>
            <th>Excluir</th>
        </tr>
        <%
            List<Categorias> categorias = Categorias.getAllCategorias();
            for (Categorias categoria : categorias ) {
        %>
        <tr>
            <td><%= categoria.getId() %></td>
            <td><%= categoria.getNomeC() %></td>
            <td><a href="editaCategoria.jsp?id=<%= categoria.getId() %>">Editar</a></td>
            <td><a href="verCategoria.jsp?id=<%= categoria.getId() %>">Ver</a></td>
            <td><a href="delataCategoria.jsp?id=<%= categoria.getId() %>">Excluir</a></td>
        </tr>
        <%
            }
        %>
        
        
    </table>
    </body>
</html>
