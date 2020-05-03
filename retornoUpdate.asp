<%@LANGUAGE="VBSCRIPT"%>

<%
  Option Explicit
%>

<!--#include file ="dbConnection.inc"-->


<%
'***Declaracao de variaveis e constantes
Dim dbConnection        'variavel p/ conexao ao banco de dados
Dim rsLivros            'variavel p/ abertura da tabela que vou usar
Dim sqlUpdate          
Dim varCodigo, varCategoria, varTitulo, varAutor, varNumPaginas, varPreco, varResumo, varLancamento, varDataPublicacao

varCodigo = TRIM(request.form("codigo"))
varCategoria = TRIM(request.form("categoria"))
varTitulo = TRIM(request.form("titulo"))
varAutor = TRIM(request.form("autor"))
varNumPaginas = TRIM(request.form("numPaginas"))
varPreco = TRIM(request.form("preco"))
varResumo = TRIM(request.form("resumo"))
varLancamento = TRIM(request.form("lancamento"))
varDataPublicacao = TRIM(request.form("dataPublicacao"))

call openDatabase

sqlUpdate = "UPDATE Livros SET Categoria = '" + varCategoria + "', Titulo = '"+ varTitulo + "', autor = '"+ varAutor +"', NumPaginas = '"+ varNumPaginas + "', preco = '"+ varPreco + "', resumo = '"+ varResumo + "', lancamento = '"+ varLancamento + "', dataPublicacao = '" + varDataPublicacao + "' WHERE Codigo = " + varCodigo

Set rsLivros = dbConnection.Execute(sqlUpdate)

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

      <p class="result">O livro <span><% =varTitulo%></span> foi alterado com sucesso</p>

      
    </div>

  </body>
</html>
