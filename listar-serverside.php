<?php 


include ("conexion.php");

$start = $_POST["start"];
$length = $_POST["length"];
$draw = $_POST["draw"];

$fin = 10;
$total = -1;

/*CONDICIONES PARA LA PAGINACIÓN*/
if ($start != null) {
	if ($start < 0)
		$start = 0;
}
if ($length != null) {
	$fin = $length;
	if ($fin < 10 || $fin > 50)
		$fin = 10;
}
/*CONSULTA PARA OBTENER EL TOTAL DE REGISTROS*/
$query = "SELECT COUNT(idusuario) AS total FROM usuario WHERE estado = 1;";
$resultado = mysqli_query($conexion, $query);
$total = mysqli_fetch_assoc( $resultado )["total"];

/*CONSULTA GENERAL DE LOS REGISTROS*/
$query = "SELECT * FROM usuario WHERE estado = 1 LIMIT $start, $fin;";
$resultado = mysqli_query($conexion, $query);

if( !$resultado ){
	die("Error");
}else{
	while( $data = mysqli_fetch_assoc($resultado)){
		$arreglo["data"][] = $data;
	}
	$arreglo["draw"] = $draw;
	$arreglo["recordsFiltered"] = $total;
	$arreglo["recordsTotal"] = $total;
	echo json_encode($arreglo);
}

mysqli_free_result($resultado);
mysqli_close($conexion);