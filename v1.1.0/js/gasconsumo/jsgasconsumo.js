/**
 * Este archivo de script contiene los comandos de ejecución para la interfaz de gestión del
 * catálogo de consumo programado de gasolina en el sistema.
 */

 function guardarConsGas(url,parametro){
	/*
	 * Esta función valida que los datos para ser almacenados en el registro sean correctos.
	 */
	var error= 0;
		
	if(document.getElementById("idMes").value.toString() == "-1")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}

	if(document.getElementById("Cantidad").value.toString() == "")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}

	if(document.getElementById("Monto").value.toString() == "")
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
	
function guardarGasolina(url,parametro){
	/*
	 * Esta función valida que los datos para ser almacenados en el registro sean correctos.
	 */
	var error= 0;
	
	if(document.getElementById("idEntidad").value.toString() == "-1")
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

function habConsumoGas(){
	/*
	 * Esta función habilita los controles del formulario de ejecucion.
	 */
	document.getElementById('Cantidad').disabled = false;
	document.getElementById('Monto').disabled = false;
	document.getElementById('idMes').disabled = false;	
	}
	
function habGasolina(){
	/*
	 * Esta función habilita los controles del formulario de gasolina.
	 */

	document.getElementById('idEntidad').disabled = false;
	document.getElementById('P_1').disabled = false;
	document.getElementById('P_2').disabled = false;
	document.getElementById('P_3').disabled = false;
	document.getElementById('P_4').disabled = false;
	document.getElementById('P_5').disabled = false;
	document.getElementById('P_6').disabled = false;
	document.getElementById('P_7').disabled = false;
	document.getElementById('P_8').disabled = false;
	document.getElementById('P_9').disabled = false;
	document.getElementById('P_10').disabled = false;
	document.getElementById('P_11').disabled = false;
	document.getElementById('P_12').disabled = false;	
	}

/* El presente segmento de codigo evalua la accion de change sobre el elemento con el ID idObjEst
 * para ejecutar la acción de actualización sobre su dependencia.
 */
$(document).ready(function() {
    $("div").change(function(e){
    	e.stopPropagation();
    	if(e.target.id == "idVehiculo")
    		{
    			//Si el usuario confirma su solicitud de borrar el registro seleccionado. 
				cargarSync('./php/frontend/gasconsumo/comp/divParametrica.php','?id='+document.getElementById('idVehiculo').value.toString(),'divParametrica');				
    			cargarSync('./php/frontend/gasconsumo/comp/txtColor.php','?id='+document.getElementById('idVehiculo').value.toString(),'txtColor');
				cargarSync('./php/frontend/gasconsumo/comp/txtMarca.php','?id='+document.getElementById('idVehiculo').value.toString(),'txtMarca');
				cargarSync('./php/frontend/gasconsumo/comp/txtModelo.php','?id='+document.getElementById('idVehiculo').value.toString(),'txtModelo');
				cargarSync('./php/frontend/gasconsumo/comp/txtEntidad.php','?id='+document.getElementById('idVehiculo').value.toString(),'txtEntidad');
				cargarSync('./php/frontend/gasconsumo/comp/tblProgGas.php','?id='+document.getElementById('idVehiculo').value.toString(),'dataproggas');
				cargarSync('./php/frontend/gasconsumo/divConsumos.php','?idejecgas='+document.getElementById('idEjecGas').value.toString(),'divConsumos');
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
    	if(e.target.id.substring(0,10) == "gas_buscar")
    		{
    			//Si el usuario confirma su solicitud de borrar el registro seleccionado.  
    			cargar('./php/frontend/gasolina/catGasolina.php','?gasperiodo='+document.getElementById('gasperiodo').value.toString()+'&nomidentidad='+document.getElementById('nomidentidad').value.toString(),'busRes');
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
    	if(e.target.id.substring(0,10) == "gas_delete")
    		{
    			//En caso de coincidir el id con la accion delete.
    			var respuesta;
    			respuesta = confirm("¿Esta seguro que desea eliminar el registro seleccionado?");
    			if(respuesta)
    				{
    					//Si el usuario confirma su solicitud de borrar el registro seleccionado.
    					cargar('./php/backend/gasolina/borrar.php','?id='+e.target.id.substring(11),'escritorio');
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
    	if(e.target.id.substring(0,7) == "gas_add")
    		{
    			//En caso de coincidir el id con la accion agregar.
    			cargar('./php/frontend/gasolina/opGasolina.php','?id=-1&view=0','escritorio');
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
    	if(e.target.id.substring(0,14) == "gas_visualizar")
    		{
    			//En caso de coincidir el id con la accion visualizar.
    			cargar('./php/frontend/gasolina/opGasolina.php','?id='+e.target.id.substring(15)+'&view=1','escritorio');
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
    	if(e.target.id.substring(0,8) == "gas_edit")
    		{
    			//En caso de coincidir el id con la accion editar.
    			cargar('./php/frontend/gasolina/opGasolina.php','?id='+e.target.id.substring(9)+'&view=0','escritorio');
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
    	if(e.target.id.substring(0,7) == "mcs_add")
    		{
    			//En caso de coincidir el id con la accion agregar.
    			cargar('./php/frontend/gasconsumo/opEjecGas.php','?id=-1&view=0&idejecgas='+document.getElementById('idEjecGas').value.toString()+'&idproggas='+document.getElementById('idProgGas').value.toString()+'&idvehiculo='+document.getElementById('idVehiculo').value.toString(),'escritorio');
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
    	if(e.target.id.substring(0,10) == "mcs_delete")
    		{
    			//En caso de coincidir el id con la accion delete.
    			var respuesta;
    			respuesta = confirm("¿Esta seguro que desea eliminar el registro seleccionado?");
    			if(respuesta)
    				{
    					//Si el usuario confirma su solicitud de borrar el registro seleccionado.						
    					cargar('./php/backend/gasconsumo/borrar.php','?id='+e.target.id.substring(11)+'&idejecgas='+document.getElementById('idEjecGas').value.toString()+'&idproggas='+document.getElementById('idProgGas').value.toString()+'&view=3','escritorio');
    					} 		
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
    	if(e.target.id.substring(0,14) == "mcs_visualizar")
    		{
    			//En caso de coincidir el id con la accion visualizar.
    			cargar('./php/frontend/gasconsumo/opEjecGas.php','?id='+e.target.id.substring(15)+'&view=1&idejecgas='+document.getElementById('idEjecGas').value.toString()+'&idproggas='+document.getElementById('idProgGas').value.toString()+'&idvehiculo='+document.getElementById('idVehiculo').value.toString(),'escritorio');
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
    	if(e.target.id.substring(0,8) == "mcs_edit")
    		{
    			//En caso de coincidir el id con la accion editar.
    			cargar('./php/frontend/gasconsumo/opEjecGas.php','?id='+e.target.id.substring(9)+'&view=0&idejecgas='+document.getElementById('idEjecGas').value.toString()+'&idproggas='+document.getElementById('idProgGas').value.toString()+'&idvehiculo='+document.getElementById('idVehiculo').value.toString(),'escritorio');
    			}
    });                 
});