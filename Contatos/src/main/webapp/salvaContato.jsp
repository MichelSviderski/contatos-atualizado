<%-- 
    Document   : salvaContato
    Created on : 8 de ago. de 2024, 14:44:44
    Author     : Aluno
--%>

<%@page import="com.mycompany.contatos.Contatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contatos!</title>
    </head>
    <body>
        <%
    String nome = request.getParameter("nome");
    String telefone = request.getParameter("numero");
    String idade = request.getParameter ("idade");
    
    

    Contatos contatos = new Contatos();
    
    contatos.setNome(nome);
    contatos.setTelefone(telefone);
    contatos.setIdade(idade);
    
    
    boolean sucesso = contatos.salvar();

    if (sucesso) {
        out.println("Contato salvo com exito!");
    } else {
        out.println("Erro ao salvar o contato.");
    }
%>

    <p><a href="listaContatos.jsp">Lista de contatos.</a></p>
    </body>
</html>
