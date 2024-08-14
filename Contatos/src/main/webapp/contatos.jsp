<%-- 
    Document   : contatos
    Created on : 7 de ago. de 2024, 16:55:17
    Author     : Aluno
--%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.contatos.Categorias"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
      
        
        <form action="salvaContato.jsp" method="post">
        <input type="text" name="nome" placeholder="Nome do contato" value="" required> <br><br>
        <input type="text" name="numero" placeholder="numero do contato" value="" required> <br><br>
        <input type="text" name="idade" placeholder="Idade" value="" required> <br><br>
        <select>
            <option>
           sadasd
            </option>
        </select> <br><br> 
        <input type="submit" value="salvar_contato">
        </form>
            
          
            
    </body>
</html>
