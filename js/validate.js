

function validaForm(){

        if(document.formInclusao.categoria.value.length <1){
          alert("O campo CATEGORIA nao pode ficar em branco")
          formInclusao.categoria.focus();
          return false;
        }
        if (document.formInclusao.titulo.value.length <1) {
          alert("O campo TITULO nao pode ficar em branco")
          formInclusao.titulo.focus();
          return false;
        }
        if (document.formInclusao.autor.value.length <1) {
          alert("o campo AUTOR nao pode ficar em branco")
          formInclusao.autor.focus();
          return false;
        }
        if (document.formInclusao.numPaginas.value.length <1) {
          document.formInclusao.numPaginas.value = "Nao informado";
          return true;
        }
        if (document.formInclusao.preco.value.length <1) {
          document.formInclusao.preco.value = "Nao informado";
          return true;
        }
        if (document.formInclusao.resumo.value.length <1) {
          document.formInclusao.resumo.value = "Nao informado";
          return true;
        }
        if (document.formInclusao.lancamento.value.length <1) {
          document.formInclusao.lancamento.value = "Nao informado";
          return true;
        }
        if (document.formInclusao.dataPublicacao.value.length <1) {
          document.formInclusao.dataPublicacao.value = "Nao informado";
          return true;
        }
      }