function validarFormulario(form){
	
	var nombre = form.nombre;
	console.log(nombre.value);
	
	if ((nombre.value == ' ') || (nombre.value =='Escribir nombre') || (nombre.value == '')){
		alert('Debe proporcionar un nombre de persona');
		nombre.focus();
		nombre.select();
		return false;
	}
	
	var apellido = form.apellido;
	console.log(apellido.value);
	
	if ((apellido.value == ' ') || (apellido.value =='Escribir apellido') || (apellido.value == '')){
		alert('Debe proporcionar un apellido de persona');
		apellido.focus();
		apellido.select();
		return false;
	}
	
	var rut = form.rut;
	console.log(rut.value);
	
	if ((rut.value == ' ') || (rut.value =='Escribir rut') || (rut.value == '')){
		alert('Debe proporcionar un rut de persona');
		rut.focus();
		rut.select();
		return false;
	}
	
	var tecnologias = form.tecnologia;
	console.log(tecnologias);
	var checkedo = false;
	
	for (var i=0; i<tecnologias.length; i++){
		if(tecnologias[i].checked){	// Validar que algun check este seleccionado.
			checkedo = true
		}
	}
	
	if (!checkedo){
		alert('Debe seleccionar al menos una tecnologia');
		return false;
	}
	
	alert('Formulario Valido');
	return true;
}