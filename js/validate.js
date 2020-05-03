

function validaForm(){

        if(document.formSalvar.categoria.value.length <1){
          alert("O campo CATEGORIA nao pode ficar em branco")
          formSalvar.categoria.focus();
          return false;
        }
        if (document.formSalvar.titulo.value.length <1) {
          alert("O campo TITULO nao pode ficar em branco")
          formSalvar.titulo.focus();
          return false;
        }
        if (document.formSalvar.autor.value.length <1) {
          alert("o campo AUTOR nao pode ficar em branco")
          formSalvar.autor.focus();
          return false;
        }
        if (document.formSalvar.numPaginas.value.length <1) {
          document.formSalvar.numPaginas.value = "Nao informado";
          return true;
        }
        if (document.formSalvar.preco.value.length <1) {
          document.formSalvar.preco.value = "Nao informado";
          return true;
        }
        if (document.formSalvar.resumo.value.length <1) {
          document.formSalvar.resumo.value = "Nao informado";
          return true;
        }
        if (document.formSalvar.lancamento.value.length <1) {
          document.formSalvar.lancamento.value = "Nao informado";
          return true;
        }
        if (document.formSalvar.dataPublicacao.value.length <1) {
          document.formSalvar.dataPublicacao.value = "Nao informado";
          return true;
        }
      }

