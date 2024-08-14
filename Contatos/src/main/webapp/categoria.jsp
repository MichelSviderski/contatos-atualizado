<%-- 
    Document   : categoria
    Created on : 9 de ago. de 2024, 17:02:56
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Categoria de lista de contatos</h1>
        
         <form action="salvaCategoria.jsp" method="post">
        <input type="text" name="nome" placeholder="Nome da categoria" value="" required> <br><br>       
        <input type="submit" value="salvar">
        </form>
        
    </body>
</html>
