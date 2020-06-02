<?php
include '../bd/conexion.php';
$conexion = conexion();

$clave = (isset($_POST['CLAVEPROV'])) ? $_POST['CLAVEPROV'] : '';
$nombre = (isset($_POST['NOMBRE'])) ? $_POST['NOMBRE'] : '';
$apeP = (isset($_POST['APELLIDOP'])) ? $_POST['APELLIDOP'] : '';
$apeM = (isset($_POST['APELLIDOM'])) ? $_POST['APELLIDOM'] : '';
$numTel = (isset($_POST['NUMTEL'])) ? $_POST['NUMTEL'] : '';
$correo = (isset($_POST['CORREO'])) ? $_POST['CORREO'] : '';
$opcion = (isset($_POST['OPCION'])) ? $_POST['OPCION'] : '';

switch($opcion){
    case 1:
        $consulta = "INSERT INTO PROVEEDOR VALUES(DEFAULT, '$nombre', '$apeP', '$apeM', '$numTel', '$correo', 'P')";			
        $resultado = mysqli_query($conexion,$consulta);

        $consulta = "SELECT * FROM PROVEEDOR WHERE CLAVEPROV = '$clave'";
        $resultado = mysqli_query($conexion,$consulta);

        while($data=mysqli_fetch_assoc($resultado)){
            $arreglo["data"][] = $data;
        }
        echo json_encode($arreglo, JSON_UNESCAPED_UNICODE);    
        break; 
    case 2:
        $consulta = "UPDATE PROVEEDOR SET NOMBRE = '$nombre', APELLIDOP = '$apeP', APELLIDOM = '$apeM', NUMTEL = '$numTel', CORREO = '$correo' WHERE CLAVEPROV = '$clave'";
        $resultado = mysqli_query($conexion, $consulta);
     
        $consulta = "SELECT * FROM PROVEEDOR";
        $resultado = mysqli_query($conexion,$consulta);
        
        while($data=mysqli_fetch_assoc($resultado)){
            $arreglo["data"][] = $data;
        }
        echo json_encode($arreglo, JSON_UNESCAPED_UNICODE);    
        break;
    case 3:        
        $consulta = "DELETE FROM PROVEEDOR WHERE CLAVEPROV='$clave' ";		
        $resultado = mysqli_query($conexion, $consulta);    
        //echo $resultado;
        break;
    case 4:    
        $consulta = "SELECT * FROM PROVEEDOR";
        $resultado = mysqli_query($conexion,$consulta);
        while($data=mysqli_fetch_assoc($resultado)){
            $arreglo["data"][] = $data;
        }
        echo json_encode($arreglo, JSON_UNESCAPED_UNICODE);    
        break;
 }
// print json_encode($data, JSON_UNESCAPED_UNICODE);//envio el array final el formato json a AJAX
$conexion=null;