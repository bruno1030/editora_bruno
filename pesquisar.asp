<%@LANGUAGE="VBSCRIPT"%>



<html lang="pt" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/css/style.css">
    <title>== PESQUISAR LIVRO ==</title>
  </head>
  <body>

    <div id="principal">

      <header>

        <img src="/images/logo.png" alt="Editora Bruno" id="logo">
        <nav>
          <ul>
            <li><a href="#">Contato</a></li>
            <li><a href="#">Sobre</a></li>
            <li><a href="index.asp">Home</a></li>
            <li><a href="insert.asp">Incluir livro</a></li>
          </ul>
        </nav>
      </header>
      <h1>Pesquise o livro que deseja pela Categoria</h1>


      <form name="formPesquisa" action="retornoPesquisa.asp" method="POST">
        
        <label>Categoria</label>
        <input type="text" name="pesqLivro">
        <input type="submit" name="pesq" value="Pesquisar">

      </form>

    </div>

  </body>
</html>

