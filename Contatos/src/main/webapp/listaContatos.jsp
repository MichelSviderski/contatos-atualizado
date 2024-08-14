<%-- 
    Document   : listaContatos
    Created on : 8 de ago. de 2024, 15:13:32
    Author     : Aluno
--%>

<%@page import="com.mycompany.contatos.Categorias"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.contatos.Contatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #tabela {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            
            #titulo {
                max-width: 350px; 
                margin: 0 auto;
                    
            }
            
            #rodape {
                max-width: 600px;
                margin: 0 auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                background-color: theme-color("dark");
                
            }
            
            .table {text-align: center;}
        </style>
    </head>
    <body>
        
        <div id="titulo">
        <h2>Lista de Contatos</h2>
        </div>
        
    <div id="tabela">
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Idade</th>
            <th>Editar</th>
            <th>Visualizar</th>
            <th>Excluir</th>
            <th>Categoria</th>
        </tr>
       <%      
            List<Categorias> categorias = Categorias.getAllCategorias();
            for (Categorias categoria : categorias ) {
       %>
         
        <%
            List<Contatos> contatos = Contatos.getAllContatos();
            for (Contatos contato : contatos) {
        %>
        <tr>
            <td><%= contato.getId() %></td>
            <td><%= contato.getNome() %></td>
            <td><%= contato.getTelefone() %></td>
            <td><%= contato.getIdade() %></td>
            <td><a href="editaContato.jsp?id=<%= contato.getId() %>">Editar</a></td>
            <td><a href="verContato.jsp?id=<%= contato.getId() %>">Ver</a></td>
            <td><a href="delataContato.jsp?id=<%= contato.getId() %>">Excluir</a></td>
            <td><%= categoria.getNomeC()%></td>
        </tr>
        <%
            }
        %>
        
        
    </table>
    </div>
        <div id="rodape">
        <footer>
    <p>Criar novo contato: <a href="contatos.jsp">Formulário.</a></p>
        </footer>
      </div>
</body>
</html>
