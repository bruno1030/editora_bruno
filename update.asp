<%@LANGUAGE="VBSCRIPT"%>

<%
  Option Explicit
%>

<!--#Include file="dbConnection.inc"-->

<%
  Dim dbConnection, rsLivros, sqlLivros

  call openDatabase

  sqlLivros = "SELECT * FROM Livros where codigo = " + request.queryString("codigo1")

  rsLivros = dbConnection.Execute(sqlLivros)
%>

<html lang="pt" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/css/style.css">

    <script src="js/validate.js"></script>


    <title>== INFORMACOES DO LIVRO ==</title>
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
      <h1>Informacoes sobre o livro selecionado</h1>

      <p>Aqui você pode editar as informacoes do livro selecionado</p>


      <form name="formSalvar" action="index.asp" method="POST" onSubmit="return validaForm(this);">
        
        <label>Codigo</label>
        <input type="text" name="codigo" value="<% =rsLivros("codigo")%>">

        <label>Categoria</label>
        <input type="text" name="categoria" value="<% =rsLivros("categoria")%>">

        <label>Titulo</label>
        <input type="text" name="titulo" value="<% =rsLivros("titulo")%>">

        <label>Autor</label>
        <input type="text" name="autor" value="<% =rsLivros("autor")%>">

        <label>Número de Páginas</label>
        <input type="text" name="numPaginas" value="<% =rsLivros("numPaginas")%>">

        <label>Preço</label>
        <input type="text" name="preco" value="<% =rsLivros("preco")%>">

        <label>Resumo</label>
        <textarea name="resumo" id="resumo" value="<% =rsLivros("resumo")%>"></textarea>

        <label>Lancamento?</label>
        <select name="lancamento" value="<% =rsLivros("lancamento")%>">
          <option value="sim">Sim</option>
          <option value="nao">Não</option>
        </select>

        <label>Data de Publicação</label>
        <input type="text" name="dataPublicacao" value="<% =rsLivros("dataPublicacao")%>">

        <input type="submit" value="Editar" name="btnEditar" id="btnEditar">
        <input type="reset" value="Limpar campos" name="btLimpar" id="btnLimpar">

      </form>

        <a href="retornoDelete.asp?codigo1=<% = rsLivros("codigo")%>" id="btnDeletar">Deletar</a>

    </div>

  </body>
</html>

<%
  call closeDatabase
%>