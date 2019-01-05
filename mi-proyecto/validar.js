function validar(){
	var nombre, apellido, cedula, username, contraseña, correo, telefono, direccion;
	nombre = document.getElementById("nombre").value;
	apellido = document.getElementById("apellido").value;
	cedula = document.getElementById("cedula").value;
	username = document.getElementById("username").value;
	contraseña = document.getElementById("contraseña").value;
	correo = document.getElementById("correo").value;
	telefono = document.getElementById("telefono").value;
	direccion = document.getElementById("direccion").value;

	expresion =/\w+@\w+\.+[a-z]/;

	if (nombre === "" || apellido === "" || cedula === "" || username === "" || contraseña === "" || correo === "" || telefono === "" || direccion === "") {
		alert("Todos los campos son necesarios");
		return false; 
	}

	else if (!expresion.test(correo)) {
		alert("El correo no es valido");
		return false;
	}

	else if(isNaN(telefono)) {
		alert("El telefono ingresado no es un número");
		return false;
	}
}