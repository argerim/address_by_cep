function get_address(cep) {
  if (cep.value != "") {
    $("label[for="+cep.id+"]").text("Pesquisando...")
    $.getScript("http://cep.republicavirtual.com.br/web_cep.php?formato=javascript&cep="+cep.value, function(){
  if(resultadoCEP["resultado"]=='1'){
    $("#"+cep.id.replace("zip_code","street")).val(unescape(resultadoCEP["tipo_logradouro"]) + " " + unescape(resultadoCEP["logradouro"]));
    $("#"+cep.id.replace("zip_code","neighborhood")).val(unescape(resultadoCEP["bairro"]));
    $("#"+cep.id.replace("zip_code","city")).val(unescape(resultadoCEP["cidade"]));
    $("#"+cep.id.replace("zip_code","state")).val(unescape(resultadoCEP["uf"]));
    $("#"+cep.id.replace("zip_code","number")).focus();
     } else {
      alert(unescape(resultadoCEP["resultado_txt"]));
     }
     $("label[for="+cep.id+"]").text("CEP")});
  }
  else {
    alert("informe o cep.");
  }
}