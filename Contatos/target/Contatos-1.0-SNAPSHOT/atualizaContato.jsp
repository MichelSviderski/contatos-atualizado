<%-- 
    Document   : atualizaContato
    Created on : 9 de ago. de 2024, 13:52:59
    Author     : Aluno
--%>

<%@page import="com.mycompany.contatos.Contatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atulização de contato</title>
    </head>
    <body>
        <h1>------------------------------------------------------</h1>
        
        <%
            
    String nome = request.getParameter("nome");
    String telefone = request.getParameter("numero");
    String idade = request.getParameter ("idade");
    int id = Integer.parseInt(request.getParameter("id"));

    Contatos contatos = new Contatos();
    
    contatos.setNome(nome);
    contatos.setTelefone(telefone);
    contatos.setIdade(idade);
    contatos.setId(id);
    
    boolean sucesso = contatos.atualizar();

    if (sucesso) {
        out.println("Contato atualizado com exito!");
    } else {
        out.println("Erro ao atualizar o contato.");
    }
 %>
        <p><a href="listaContatos.jsp">Voltar a lista.</a></p>
    </body>
</html>
