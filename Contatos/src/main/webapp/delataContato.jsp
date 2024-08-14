<%-- 
    Document   : delataContato
    Created on : 9 de ago. de 2024, 15:11:19
    Author     : Aluno
--%>

<%@page import="com.mycompany.contatos.Contatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>deletando contato</title>
    </head>
    <body>
        <h1>===============================================</h1>
        
         <%
    int id = Integer.parseInt(request.getParameter("id"));
   

   
    Contatos contatos = new Contatos();
    contatos.setId(id);

    boolean sucesso = contatos.deletar();

    if (sucesso) {
        out.println("Contato deletado.");
    } else {
        out.println("Erro ao deletar o contato.");
    }
%>
<p><a href="listaContatos.jsp">Voltar para a lista.</a></p>
        
        
    </body>
</html>
