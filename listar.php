<?php
	include ("conexion.php");

	$query = "SELECT * FROM usuario WHERE estado = 1 ORDER BY idusuario desc;";
	$resultado = mysqli_query($conexion, $query);

	
	if( !$resultado )
		die("Error, no se ejecutó la consulta.");
	else{
		while ( $data = mysqli_fetch_assoc($resultado)){
			$array["data"][] = $data;//array_map("utf8_encode", $data);
		}
		echo json_encode( $array );		
	}

	mysqli_free_result( $resultado );
	mysqli_close( $conexion );