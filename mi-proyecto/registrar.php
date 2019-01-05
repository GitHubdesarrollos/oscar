<?php
include 'cn.php';

//almacenando variables

$nombre = $_POST["nombre"];
$apellido = $_POST["apellido"];
$cedula = $_POST["cedula"];
$username = $_POST["username"];
$contraseña = $_POST["contraseña"];
$correo = $_POST["correo"];
$telefono= $_POST["telefono"];
$direccion = $_POST["direccion"];

//insertando registros en la bd

$insertar = "insert into usuario(nombre, apellido, cedula, username, pw, correo, telefono, direccion)values('$nombre', '$apellido', '$cedula', '$username', '$contraseña', '$correo', '$telefono', '$direccion')";

$verificar_usuario = mysqli_query($conexion, "SELECT * FROM usuario WHERE username = '$username'");
if (mysqli_num_rows($verificar_usuario) > 0) {
	echo '<script>
	alert("El usuario ya esta registrado");
	window.history.go(-1);
	</script>';
exit;
}

$verificar_correo = mysqli_query($conexion, "SELECT * FROM usuario WHERE correo = '$correo'");
if (mysqli_num_rows($verificar_correo) > 0) {
	echo '<script>
	alert("El correo ya esta registrado");
	window.history.go(-1);
	</script>';
exit;
}

$verificar_telefono = mysqli_query($conexion, "SELECT * FROM usuario WHERE telefono = '$telefono'");
if (mysqli_num_rows($verificar_telefono) > 0) {
	echo '<script>
	alert("El telefono ya esta registrado");
	window.history.go(-1);
	</script>';
exit;
}

// ejecutando consultas
$resultado = mysqli_query($conexion, $insertar); 
if(!$resultado) {
	echo 'error al registrarse';
}
else {
	echo 'usuario registrado';
}

//cerrando la conexion a la base de datos

mysqli_close($conexion);

?>