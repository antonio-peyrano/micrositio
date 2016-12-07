/**
 * Este archivo de script contiene los comandos de ejecución para la interfaz de gestión del
 * catálogo de estope en el sistema.
 */

function guardarEstOpe(url,parametro){
	/*
	 * Esta función valida que los datos para ser almacenados en el registro sean correctos.
	 */
	var error= 0;

	if(document.getElementById("idObjEst").value.toString() == "-1")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}
	
	if(document.getElementById("idObjOpe").value.toString() == "-1")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}
	
	if(document.getElementById("EstOpe").value.toString() == "")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}
	
	if(document.getElementById("Periodo").value.toString() == "")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}

	if(error > 0)
		{
			/*
			 * En caso de ocurrir un error de validación, se notifica al usuario.
			 */
			alert("Existen campos pendientes por completar");
			}
	else
		{
			/*
			 * En caso que la validación de campos sea satisfactoria.
			 */
			cargar(url,parametro,'escritorio');
			}
	}
	
function habEstOpe(){
	/*
	 * Esta función habilita los controles del formulario de estope.
	 */
	document.getElementById('idObjEst').disabled = false;
	document.getElementById('idObjOpe').disabled = false;
	document.getElementById('EstOpe').disabled = false;
	/*document.getElementById('Nomenclatura').disabled = false;*/
	/*document.getElementById('Periodo').disabled = false;*/
	}


/*
 * El presente segmento de codigo evalua la accion de click sobre cualquier elemento con el id buscar_#
 * para ejecutar la acción de actualización sobre el registro de una rejilla de datos.
 */
$(document).ready(function() {
    $("div").change(function(e){
    	e.stopPropagation();
    	if(e.target.id == "idObjEst")
    		{
    			//Si el usuario confirma su solicitud de borrar el registro seleccionado. 
    			cargar('./php/frontend/estope/cbObjOpe.php','?id='+document.getElementById('idObjEst').value.toString(),'cbObjOpe');
    			}
    });                 
});

/*
 * El presente segmento de codigo evalua la accion de click sobre cualquier elemento con el id buscar_#
 * para ejecutar la acción de actualización sobre el registro de una rejilla de datos.
 */
$(document).ready(function() {
    $("div").click(function(e){
    	e.stopPropagation();
    	if(e.target.id.substring(0,10) == "eop_buscar")
    		{
    			//Si el usuario confirma su solicitud de borrar el registro seleccionado.  
    			cargar('./php/frontend/estope/catEstOpe.php','?nomestope='+document.getElementById('nomestope').value.toString()+'&estopenomenclatura='+document.getElementById('estopenomenclatura').value.toString()+'&estopeperiodo='+document.getElementById('estopeperiodo').value.toString(),'busRes');
    			}
    });                 
});

/*
 * El presente segmento de codigo evalua la accion de click sobre cualquier elemento con el id delete_#
 * para ejecutar la acción de actualización sobre el registro de una rejilla de datos.
 */
$(document).ready(function() {
    $("div").click(function(e){
    	e.stopPropagation();
    	if(e.target.id.substring(0,10) == "eop_delete")
    		{
    			//En caso de coincidir el id con la accion delete.
    			var respuesta;
    			respuesta = confirm("¿Esta seguro que desea eliminar el registro seleccionado?");
    			if(respuesta)
    				{
    					//Si el usuario confirma su solicitud de borrar el registro seleccionado.
    					cargar('./php/backend/estope/borrar.php','?id='+e.target.id.substring(11),'escritorio');
    					} 		
    			}
    });                 
});

/*
 * El presente segmento de codigo evalua la accion de click sobre cualquier elemento con el id add
 * para ejecutar la acción de actualización sobre el registro de una rejilla de datos.
 */
$(document).ready(function() {
    $("div").click(function(e){
    	e.stopPropagation();
    	if(e.target.id.substring(0,7) == "eop_add")
    		{
    			//En caso de coincidir el id con la accion agregar.
    			cargar('./php/frontend/estope/opEstOpe.php','?id=-1&view=0','escritorio');
    			}
    });                 
});

/*
 * El presente segmento de codigo evalua la accion de click sobre cualquier elemento con el id visualizar_#
 * para ejecutar la acción de actualización sobre el registro de una rejilla de datos.
 */
$(document).ready(function() {
    $("div").click(function(e){
    	e.stopPropagation();
    	if(e.target.id.substring(0,14) == "eop_visualizar")
    		{
    			//En caso de coincidir el id con la accion visualizar.
    			cargar('./php/frontend/estope/opEstOpe.php','?id='+e.target.id.substring(15)+'&view=1','escritorio');
    			}
    });                 
});

/*
 * El presente segmento de codigo evalua la accion de click sobre cualquier elemento con el id edit_#
 * para ejecutar la acción de actualización sobre el registro de una rejilla de datos.
 */
$(document).ready(function() {
    $("div").click(function(e){
    	e.stopPropagation();
    	if(e.target.id.substring(0,8) == "eop_edit")
    		{
    			//En caso de coincidir el id con la accion editar.
    			cargar('./php/frontend/estope/opEstOpe.php','?id='+e.target.id.substring(9)+'&view=0','escritorio');
    			}
    });                 
});