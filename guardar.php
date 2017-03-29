<?php 
	include("conexion.php");

	$idusuario = $_POST["idusuario"];	
	$opcion = $_POST["opcion"];

	if($opcion == "registrar" || $opcion == "modificar"){//obtener el valor de los campos
		$nombre = $_POST["nombre"];
		$apellidos = $_POST["apellidos"];
		$dni = $_POST["dni"];
	}

	$informacion = [];

	switch ( $opcion ) {
		case 'registrar':
				if( $nombre != "" && $apellidos != "" && $dni != "" ){
					$existe = existe_usuario($dni, $conexion);
					if( $existe > 0 ){
						$informacion["respuesta"] = "EXISTE";
						echo json_encode($informacion);
					}else{
						registrar($nombre, $apellidos, $dni, $conexion);
					}									
				}else{
					$informacion["respuesta"] = "VACIO";
					echo json_encode($informacion);
				}
			break;
		case 'modificar':
			modificar($nombre, $apellidos, $dni, $idusuario, $conexion);
			break;		
		case 'eliminar':
			eliminar($idusuario, $conexion);
			break;
		default:
			$informacion["respuesta"] = "OPCION_VACIA";
			echo json_encode($informacion);
			break;
	}

	function existe_usuario($dni, $conexion){
		$query = "SELECT idusuario FROM usuario WHERE dni = '$dni';";
		$resultado = mysqli_query($conexion, $query);
		$existe_usuario = mysqli_num_rows( $resultado );
		return $existe_usuario;
	}

	function registrar($nombre, $apellidos, $dni, $conexion){
		$query = "INSERT INTO usuario VALUES(0, '$nombre', '$apellidos', '$dni', 1);";
		$resultado = mysqli_query($conexion, $query);		
		verificar_resultado($resultado);
		cerrar($conexion);
	}

	function modificar($nombre, $apellidos, $dni, $idusuario, $conexion){	
		$query= "UPDATE usuario SET 	nombre='$nombre', 
										apellidos='$apellidos', 
										dni='$dni' 
								WHERE   idusuario=$idusuario";
		$resultado = mysqli_query($conexion, $query);
		verificar_resultado( $resultado );
		cerrar( $conexion );
	}

	function eliminar($idusuario, $conexion){
		$query = "UPDATE usuario SET estado = 0 WHERE idusuario = $idusuario";
		$resultado = mysqli_query($conexion, $query);
		verificar_resultado( $resultado );
		cerrar( $conexion );
	}

	function verificar_resultado( $resultado ){
		if( !$resultado )	$informacion["respuesta"] = "ERROR";
		else 	$informacion["respuesta"] = "BIEN";
		echo json_encode( $informacion );
	}

	function cerrar( $conexion ){
		mysqli_close( $conexion );
	}

 ?>