<%@LANGUAGE="VBSCRIPT"%>



<html lang="pt" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/css/style.css">

    <script src="js/validate.js"></script>


    <title>== INCLUIR LIVRO ==</title>
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
          </ul>
        </nav>
      </header>
      <h1>Inclusao de livro</h1>


      <form name="formInclusao" action="retornoInsert.asp" method="POST" onSubmit="return validaForm(this);">
        
        <label>Categoria</label>
        <input type="text" name="categoria">

        <label>Titulo</label>
        <input type="text" name="titulo">

        <label>Autor</label>
        <input type="text" name="autor">

        <label>Número de Páginas</label>
        <input type="number" name="numPaginas">

        <label>Preço</label>
        <input type="text" name="preco">

        <label>Resumo</label>
        <textarea name="resumo" id="resumo"></textarea>

        <label>Lancamento?</label>
        <select name="lancamento">
          <option value="sim">Sim</option>
          <option value="nao">Não</option>
        </select>

        <label>Data de Publicação</label>
        <input type="date" name="dataPublicacao">

        <input type="submit" value="Salvar" name="btnSalvar" id="btnSalvar">
        <input type="reset" value="Limpar campos" name="btLimpar" id="btnLimpar">

      </form>

    </div>

  </body>
</html>

