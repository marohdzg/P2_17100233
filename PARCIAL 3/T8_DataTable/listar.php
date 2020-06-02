<?php 
require_once "conexion.php";
$conexion = conexion();
    $query = 'SELECT * FROM PROVEEDOR';
    $resultado = mysqli_query($conexion,$query);

    if(!$resultado){
        die("Error");
    }
    else{
        //$array["data"] =[];
        while($data=mysqli_fetch_assoc($resultado)){
            $arreglo["data"][] = $data; 
               }
               echo json_encode($arreglo);
            }

            mysqli_free_result($resultado);
            mysqli_close($conexion);