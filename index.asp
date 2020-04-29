<%@LANGUAGE="VBSCRIPT"%>
<%
Option Explicit

'***Declaracao de variaveis de texto
DIM nome, genero, endereco, cidade, uf

'***Declaracao de variaveis numericas
DIM RG, CEP, telefone

'*** Atribuindo valores às variáveis
nome = "Bruno Martins"
genero = "M"
endereco = "Rua do Exemplo, 9999, ap 99"
cidade = "São Paulo"
uf = "SP"
rg = 124567890
cep = 12345000
telefone = 99999999
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
        <p>Nome do autor: <% = nome%></p>
        <p>Gênero: <% = genero%></p>
        <p>Endereco: <% = endereco%></p>
        <p>Cidade: <% = cidade%></p>
        <p>Estado: <% = uf%></p>
        <p>RG: <% = rg%></p>
        <p>CEP: <% = cep%></p>
        <p>Telefone: <% = telefone%></p>
      </div>

    </div>

  </body>
</html>
