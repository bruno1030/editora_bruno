<%@LANGUAGE="VBSCRIPT"%>
<%

Option Explicit


'***Declaracao de variaveis
Dim a, contador, linha, coluna

'***Atribuicao de valores as variaveis
a = 5
contador = 1
linha = 1
coluna = 1

'***Declaracao de vetor e matriz
Dim DiasDaSemana(7)
Dim Paises(5,3)

'***Alimentando o vetor
DiasDaSemana(1) = "Domingo"
DiasDaSemana(2) = "Segunda-Feira"
DiasDaSemana(3) = "Terça-Feira"
DiasDaSemana(4) = "Quarta-Feira"
DiasDaSemana(5) = "Quinta-Feira"
DiasDaSemana(6) = "Sexta-Feira"
DiasDaSemana(7) = "Sábado"

'***Alimentando a matriz
Paises(1,1) = "Brasil"
Paises(2,1) = "Argentina"
Paises(3,1) = "Italia"
Paises(4,1) = "Estados Unidos"
Paises(5,1) = "Espanha"

Paises(1,2) = "Brasilia"
Paises(2,2) = "Buenos Aires"
Paises(3,2) = "Roma"
Paises(4,2) = "Washington"
Paises(5,2) = "Madri"

Paises(1,3) = "Portugues"
Paises(2,3) = "Espanhol"
Paises(3,3) = "Italiano"
Paises(4,3) = "Ingles"
Paises(5,3) = "Espanhol"


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

      <div>
        <h3>Vetor (dias da semana)</h3>
        
        <% for contador = 1 to 7 %>
          <p><% =DiasDaSemana(contador) %></p>
        <% next%>
      </div>

      <div>
        <h3>Matriz (países)</h3>
        <table>
          
          <tr>
            <th>País</th>
            <th>Capital</th>
            <th>Idioma</th>
          </tr>

            <% for linha = 1 to 5 %>
          <tr>
              <% for coluna = 1 to 3 %>
            <td><p class="paises"><% =Paises(linha, coluna)%></p><br></td>
              <%next%>
            <%next%>
          </tr>
        </table>
      </div>

      <div>
        <p>Hoje é <span><% =DiasDaSemana(WeekDay(Date))%><span></p>
      </div>

    </div>
  </body>
</html>

  <!-- <p style="color:#FF0000";>Red paragraph text</p> -->
    <!-- <p style="color:rgba(255,0,0,0.5);">Red paragraph text           '      </p> -->