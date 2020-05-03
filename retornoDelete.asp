<%@LANGUAGE="VBSCRIPT"%>

<%
  Option Explicit
%>

<!--#include file ="dbConnection.inc"-->


<%
'***Declaracao de variaveis e constantes
Dim dbConnection        'variavel p/ conexao ao banco de dados
Dim rsLivros            'variavel p/ abertura da tabela que vou usar
Dim sqlDelete         
Dim varCodigo

varCodigo = Request.QueryString("codigo1")

call openDatabase

sqlDelete = "DELETE from Livros where Codigo = " + varCodigo

Set rsLivros = dbConnection.Execute(sqlDelete)

call closeDatabase
set rsLivros = nothing

%>


<html lang="pt" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/css/style.css">
    <title>== RETORNO ==</title>
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
            <li><a href="index.asp">Home</a></li>
            <li><a href="insert.asp">Incluir livro</a></li>
          </ul>
        </nav>
      </header>

      <p class="result">Livro excluido com sucesso</p>

      
    </div>

  </body>
</html>
