<%-- 
    Document   : verContato
    Created on : 8 de ago. de 2024, 16:30:34
    Author     : Aluno
--%>

<%@page import="com.mycompany.contatos.Contatos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vizualização</title>
    </head>
    <body>
        <h1>-----</h1>
        <%
        String idS = request.getParameter("id");
        if (!idS.isEmpty()) {
            int id = Integer.parseInt(idS);
            List<Contatos> contatos = Contatos.getContatos(id);
            for (Contatos contato : contatos) {
            %>  
            <div>Nome: <%= contato.getNome() %></div>
            <div>Telefone: <%= contato.getTelefone() %></div>
            <div>Idade: <%= contato.getIdade() %> 
            <%
                }  
        } else {
            out.print("Contato não localizado.");
            }
        %>
        <br><br> <p><a href="listaContatos.jsp">Voltar para a lista.</a></p>
    </body>
</html>
