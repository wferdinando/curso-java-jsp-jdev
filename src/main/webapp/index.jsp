<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

<style type="text/css">
	
	section.content{
		margin: 0 auto;
		min-width: 250px;
		max-width: 500px;
		margin-top: 15%;
		padding: 0 40px;
	}
	h5{
		text-align: center;
	}
	.msg_erros{
		
		width: 100%;
		display: inline-block;
		color: #842029;
		font-size: 16px;
		margin-top: 20px;
	}

</style>

<title>Curso JSP</title>

</head>
<body>

<section class="content">
	<h5>Bem vindo ao curso de JSP</h5>

	<form action="ServletLogin" method="post" class="row g-3 needs-validation" novalidate>
	<input type="hidden" value="<%=request.getParameter("url")%>" name="url">

		<div class="col-md-6">
			<label for="login" class="form-label">Login</label>
			<input type="text" name="login" class="form-control" required="required"/>
			<div class="invalid-feedback">Login é obrigatório!</div>
		</div>
		
		<div class="col-md-6">
			<label for="senha" class="form-label">Senha</label>
			<input type="text" name="senha" class="form-control" required="required"/>
			<div class="invalid-feedback">Senha é obrigatório!</div>
		</div>
		
		<div class="d-grid gap-2">
  			<input type="submit" value="Acessar" class="btn btn-primary" />
		</div>
	
	</form>

	<h5 class="msg_erros">${msg}</h5>
</section>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
		crossorigin="anonymous">
	</script>
	
	<script type="text/javascript">
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(function () {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  var forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.prototype.slice.call(forms)
	    .forEach(function (form) {
	      form.addEventListener('submit', function (event) {
	        if (!form.checkValidity()) {
	          event.preventDefault()
	          event.stopPropagation()
	        }

	        form.classList.add('was-validated')
	      }, false)
	    })
	})()
	</script>
</body>
</html>