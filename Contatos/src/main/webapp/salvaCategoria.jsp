<%-- 
    Document   : categoria
    Created on : 9 de ago. de 2024, 17:01:16
    Author     : Aluno
--%>

<%@page import="com.mycompany.contatos.Categorias"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>---------------</h1>
        <!<!-- TAMBEM ALTERAR ISSO AQUI MAIS TARDE -->
         <%
    String nome = request.getParameter("nome");
    

    Categorias categorias = new Categorias();
    
    categorias.setNomeC(nome);
    
    
    
    boolean sucesso = categorias.salvar();

    if (sucesso) {
        out.println("Categoria salva com exito!");
    } else {
        out.println("Erro ao salvar a categoria.");
    }
    %>

    
    <p>Vá para a Lista de categorias: <a href="listaCategorias.jsp">Aqui</a></p>
    
    </body>
</html>
