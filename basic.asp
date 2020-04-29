<%@LANGUAGE="VBSCRIPT"%>
<%

Option Explicit


'***Declaracao de variaveis
Dim A

'***Atribuicao de valores as variaveis
A = -5

%>

<html lang="pt" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/css/style.css">
    <title>== TITLE ==</title>
  </head>
  <body>

    <div id="principal">

      <h1>Título H1</h1>

      <div id="conteudo">
        <p>A: <% = a%></p>
      </div>
      
    </div>

  </body>
</html>
