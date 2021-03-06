<%@LANGUAGE="VBSCRIPT"%>

<%
  Option Explicit
%>

<!--#include file ="dbConnection.inc"-->


<%
'***Declaracao de variaveis e constantes
Dim dbConnection        'variavel p/ conexao ao banco de dados
Dim rsLivros            'variavel p/ abertura da tabela que vou usar
Dim sqlInsert          
Dim inputText
Dim varCategoria, varTitulo, varAutor, varNumPaginas, varPreco, varResumo, varLancamento, varDataPublicacao

varCategoria = TRIM(request.form("categoria"))
varTitulo = TRIM(request.form("titulo"))
varAutor = TRIM(request.form("autor"))
varNumPaginas = request.form("numPaginas")
varPreco = TRIM(request.form("preco"))
varResumo = TRIM(request.form("resumo"))
varLancamento = request.form("lancamento")
varDataPublicacao = request.form("dataPublicacao")

sqlInsert = "INSERT INTO Livros (Categoria, titulo, autor, numPaginas, preco, resumo, lancamento, dataPublicacao) VALUES "
sqlInsert = sqlInsert + "('" + varCategoria + "','"+ varTitulo + "','"+ varAutor + "','"+ varNumPaginas + "','"+ varPreco + "','"+ varResumo + "','"+ varLancamento + "','"+ varDataPublicacao + "')"


call openDatabase

'Set rsLivros = server.CreateObject("ADODB.Recordset")          'criação de um objeto Recordset

Set rsLivros = dbConnection.Execute(sqlInsert)


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

      <p class="result">O livro <span><% =varTitulo%></span> foi incluido com sucesso</p>

      
    </div>

  </body>
</html>
<% 
  'Fechar conexao com o banco de dados
  call closeDatabase
  set rsLivros = nothing
%>
