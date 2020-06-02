$(document).ready(function() {
var clave, opcion;
opcion = 4;   

tablaUsuarios = $('#tablaUsuarios').DataTable({ 
    "ajax":{            
        "url": "bd/crud.php", 
        "method": 'POST', //usamos el metodo POST
        "data":{OPCION:opcion}//enviamos opcion 4 para que haga un SELECT
    },
    "columns":[
        {"data": "CLAVEPROV"},
        {"data": "NOMBRE"},
        {"data": "APELLIDOP"},
        {"data": "APELLIDOM"},
        {"data": "NUMTEL"},
        {"data": "CORREO"},
        {"defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-primary btn-sm btnEditar'><i class='material-icons'>edit</i></button><button class='btn btn-danger btn-sm btnBorrar'><i class='material-icons'>delete</i></button></div></div>"}
    ]
});     

var fila; //captura la fila, para editar o eliminar
//submit para el Alta y Actualización
 $('#formUsuarios #btnGuardar').click(function(e){      
    e.preventDefault(); //evita el comportambiento normal del submit, es decir, recarga total de la página
    clave = $.trim($('#CLAVEPROV').val());
    nombre = $.trim($('#NOMBRE').val());
    apellidoP = $.trim($('#APELLIDOP').val());
    apellidoM = $.trim($('#APELLIDOM').val());  
    numTel = $.trim($('#NUMTEL').val());   
    correo = $.trim($('#CORREO').val());
    console.log(clave, nombre, apellidoP, apellidoM, numTel, correo);
    //status = $.trim($('#status').val());                            
        $.ajax({
          url: "bd/crud.php",
          type: "POST",
          datatype:"json",    
          data:  {CLAVEPROV:clave, NOMBRE:nombre, APELLIDOP:apellidoP, APELLIDOM:apellidoM, NUMTEL:numTel, CORREO:correo, OPCION:opcion},  
        success: function(data) {
            // $json_file = data;
            tablaUsuarios.ajax.reload(null, false);
        }		
    });	        
    $('#modalCRUD').modal('hide');											     			
});
        
 

//para limpiar los campos antes de dar de Alta una Persona
$("#btnNuevo").click(function(){
    opcion = 1; //alta           
    clave=null;
    $("#formUsuarios").trigger("reset");
    $(".modal-header").css( "background-color", "#17a2b8");
    $(".modal-header").css( "color", "white" );
    $(".modal-title").text("Alta de Usuario");
    $('#modalCRUD').modal('show');	    
});

//Editar        
$(document).on("click", ".btnEditar", function(){		        
    opcion = 2;//editar
    fila = $(this).closest("tr");	        
    clave = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		            
    nombre = fila.find('td:eq(1)').text();
    apellidoP = fila.find('td:eq(2)').text();
    apellidoM = fila.find('td:eq(3)').text();
    numTel = fila.find('td:eq(4)').text();
    correo = fila.find('td:eq(5)').text();
    $("#CLAVEPROV").val(clave);
    $("#NOMBRE").val(nombre);
    $("#APELLIDOP").val(apellidoP);
    $("#APELLIDOM").val(apellidoM);
    $("#NUMTEL").val(numTel);
    $("#CORREO").val(correo);
    
    $(".modal-header").css("background-color", "#007bff");
    $(".modal-header").css("color", "white" );
    $(".modal-title").text("Editar Usuario");		
    $('#modalCRUD').modal('show');		   
});

//Borrar
$(document).on("click", ".btnBorrar", function(){
    fila = $(this);           
    clave = parseInt($(this).closest('tr').find('td:eq(0)').text()) ;		
    opcion = 3; //eliminar        
    var respuesta = confirm("¿Está seguro de borrar el registro "+clave+"?");                
    if (respuesta) {            
        $.ajax({
          url: "bd/crud.php",
          type: "POST",
          datatype:"json",    
          data:  {OPCION:opcion, CLAVEPROV:clave},    
          success: function() {
              tablaUsuarios.row(fila.parents('tr')).remove().draw();                  
           }
        });	
    }
 });
     
});    