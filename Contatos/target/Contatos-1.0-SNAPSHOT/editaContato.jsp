<%-- 
    Document   : editaContato
    Created on : 9 de ago. de 2024, 13:57:44
    Author     : Aluno
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.contatos.Contatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
        String idS = request.getParameter("id");
        if (!idS.isEmpty()) {
            int id = Integer.parseInt(idS);
            List<Contatos> contatos = Contatos.getContatos(id);
            for (Contatos contato : contatos) {
            %> 
        
             <form action="atualizaContato.jsp" method="post">
       <input type="hidden" id="id" name="id" value="<%= contato.getId() %>">
        <input type="text" name="nome" placeholder="Nome do contato" required value="<%= contato.getNome() %>"> <br><br>
        <input type="text" name="numero" placeholder="numero do contato" value="<%= contato.getTelefone()%>" required> <br><br>
        <input type="text" name="idade" placeholder="Idade" value="<%= contato.getIdade()%>" required> <br><br>
        <input type="submit">
        </form>
            
        <%
                }  
        } else {
            out.print("Contato não localizado.");
            }
        %>
        
    </body>
</html>
