<%@LANGUAGE="VBSCRIPT"%>
<%
Option Explicit

'***Declaracao de variaveis e constantes
Dim dbConnection        'variavel p/ conexao ao banco de dados
Dim rsLivros            'variavel p/ abertura da tabela que vou usar
Const dbAddress = "c:\inetpub\wwwroot\editora_bruno\dbEditora.mdb"      'informando onde está localizado o banco de dados


'*** Atribuindo valores às variáveis
Set dbConnection = server.CreateObject("ADODB.Connection")     'criação de um objeto Connection
'Estabelecendo a conexao
dbConnection.Open "driver={Microsoft Access Driver (*.mdb)};dbq=" & dbAddress


Set rsLivros = server.CreateObject("ADODB.Recordset")          'criação de um objeto Recordset

'Abrindo a tabela de dados com o Recordset
rsLivros.Open "Livros",dbConnection

%>


<html lang="pt" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/css/style_index.css">
    <title>== EDITORA BRUNO ==</title>
  </head>
  <body>

    <div id="principal">

      <h1>Editora Bruno</h1>



      <div id="conteudo">
        <% Do While Not rsLivros.Eof %>
          <div class="livros">
            <p>Codigo: <% =rsLivros("codigo")%></p>
            <p>Titulo: <% =rsLivros("Titulo")%></p>
            <p>Autor: <% =rsLivros("autor")%></p>
          </div>
        <%
          rsLivros.MoveNext
          Loop
        %>
      </div>

    </div>

  </body>
</html>
<% 
  'Fechar conexao com o banco de dados
  rsLivros.Close
  dbConnection.Close
%>
