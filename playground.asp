<%@LANGUAGE="VBSCRIPT"%>
<%

Option Explicit


'***Declaracao de variaveis
Dim a, contador

'***Atribuicao de valores as variaveis
a = 5
contador = 1

%>


<!DOCTYPE html>

<html lang="pt" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/playground_style.css">
    <title>== PLAYGROUND ==</title>
  </head>

  <body>

    <div id="principal">

      <h1>Playground</h1>

      <div id="conteudo">
        <p>A vale: <% = a%></p>
      </div>

      <h2>Teste de estilo com condicionante</h2>

      <div id="condicionante">
        <%if a < 0 then%>
          <p style="color: rgba(200,0,0,1);"><% =a %></p>
        <% end if %>
        <%if a > 0 then%>
          <p style="color: rgba(30,90,255,1);"><% =a %></p>
        <%end if%>
      </div>

      <div id="tb">
     
        <h3>Números pares de 2 a 20</h3>   
        <table>


        <%for contador = 2 to 20 %>

          <tr>
            <td>Esta é a linha <% =contador%> do sistema</td>
          </tr>

        <% contador = contador+1 %>

        <% next%>

        </table>
      </div>

    </div>

  </body>
</html>

  <!-- <p style="color:#FF0000";>Red paragraph text</p> -->
    <!-- <p style="color:rgba(255,0,0,0.5);">Red paragraph text</p> -->