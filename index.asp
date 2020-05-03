<%@LANGUAGE="VBSCRIPT"%>

<%

Option Explicit

'***Declaracao de variaveis e constantes
Dim dbConnection        'variavel p/ conexao ao banco de dados
Dim rsLivros            'variavel p/ abertura da tabela que vou usar
Dim rsTotal
Dim sqlLivros           'essa variavel irá armazenar o retorno da minha instrucao SQL para retornar os livros
Dim sqlTotal            'essa variavel irá armazenar o retorno da minha instrucao SQL para retornar a quantidade de livros

'Const dbAddress = "c:\inetpub\wwwroot\editora_bruno\dbEditora.mdb"      'informando onde está localizado o banco de dados

'*** Atribuindo valores às variáveis
    'Set dbConnection = server.CreateObject("ADODB.Connection")     'criação de um objeto Connection
'Estabelecendo a conexao
    'dbConnection.Open "driver={Microsoft Access Driver (*.mdb)};dbq=" & dbAddress

call openDatabase

'Set rsLivros = server.CreateObject("ADODB.Recordset")          'criação de um objeto Recordset

sqlLivros = " SELECT codigo, preco, titulo, autor FROM Livros"
sqlTotal = " SELECT COUNT(codigo) AS TOTAL from Livros"
Set rsLivros = dbConnection.Execute(sqlLivros)
Set rsTotal = dbConnection.Execute(sqlTotal)

'Abrindo a tabela de dados com o Recordset
    'rsLivros.Open "Livros",dbConnection

%>

<!--#include file ="dbConnection.inc"-->

<html lang="pt" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/css/style.css">
    <title>== EDITORA BRUNO ==</title>
  </head>
  <body>

    <div id="principal">

      <header>

        <img src="/images/logo.png" alt="Editora Bruno" id="logo">
        <nav>
          <ul>
            <li><a href="#">Contato</a></li>
            <li><a href="#">Sobre</a></li>
            <li><a href="pesquisar.asp">Pesquisar livro</a></li>
            <li><a href="insert.asp">Incluir livro</a></li>
          </ul>
        </nav>
      </header>
      <h1>Olá pessoal! Estes são alguns dados da tabela "Livros" da editora</h1>


      <table>
        
        <tr>
          <th>Codigo</th>
          <th>Preço</th>
          <th>Título</th>
          <th>Autor</th>
        </tr>

        <% Do While Not rsLivros.Eof %>
          <tr>
            <td><% =rsLivros("codigo")%></td>
            <td><% = FormatCurrency(rsLivros("preco"),2)%></td>
            <td><a href="update.asp?codigo1=<% = rsLivros("codigo")%>" class="titulos"><% =rsLivros("titulo")%></a></td>
            <td><% =rsLivros("autor")%></td>
          </tr>
        <%
          rsLivros.MoveNext
          Loop
        %>

      </table>

      <p id="final">No momento estamos com <span><% =rsTotal("total") %></span> livros em nossa editora.

    </div>

  </body>
</html>
<% 
  'Fechar conexao com o banco de dados
  rsLivros.Close
  call closeDatabase
  set rsLivros = nothing
%>
