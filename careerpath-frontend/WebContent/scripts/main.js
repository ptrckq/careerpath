window.onload=function(){
	var el = document.getElementById('botaoPrincipal');
	el.addEventListener("click", function(event){
	    event.preventDefault();
	    salvarDados();
	});
	
 
}
function salvarDados (){
	sessionStorage.clear();
	sessionStorage.setItem('nome', document.getElementById("inputNome").value);
	sessionStorage.setItem('cpf', document.getElementById("inputCpf").value );
	sessionStorage.setItem('email',  document.getElementById("inputEmail").value);
	sessionStorage.setItem('cargo', document.getElementById("inputCargo").value );
	sessionStorage.setItem('telefone', document.getElementById("inputTelefone").value );
	sessionStorage.setItem('empresa',  document.getElementById("inputEmpresa").value);
	console.log(sessionStorage);
}
function formataCPF(){
	  //retira os caracteres indesejados...
	  var cpf = document.getElementById("inputCpf").value;
	  cpf = cpf.replace(/[^\d]/g, "");

	  //realizar a formatação...
	  document.getElementById("inputCpf").value = cpf.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, "$1.$2.$3-$4");
	}
