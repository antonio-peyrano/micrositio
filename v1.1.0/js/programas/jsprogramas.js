/**
 * Este archivo de script contiene los comandos de ejecución para la interfaz de gestión del
 * catálogo de indicadores en el sistema.
 */

function guardarPrograma(url,parametro)
	{
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

	if(document.getElementById("idEstOpe").value.toString() == "-1")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}
	
	if(document.getElementById("Programa").value.toString() == "")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}
	
	if(document.getElementById("idEntidad").value.toString() == "-1")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}

	if(document.getElementById("idResponsable").value.toString() == "-1")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}

	if(document.getElementById("idSubalterno").value.toString() == "-1")
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
	
function habPrograma(){
	/*
	 * Esta función habilita los controles del formulario de programa.
	 */
	var checkboxes = $('.check');
	
	for (var x=0; x < checkboxes.length; x++)
		{
			checkboxes[x].disabled = false;
			}

	document.getElementById('idObjEst').disabled = false;
	document.getElementById('idObjOpe').disabled = false;
	document.getElementById('idEstOpe').disabled = false;
	document.getElementById('Nomenclatura').disabled = false;
	document.getElementById('Programa').disabled = false;
	document.getElementById('Monto').disabled = false;
	document.getElementById('idEntidad').disabled = false;
	document.getElementById('idResponsable').disabled = false;
	document.getElementById('idSubalterno').disabled = false;
	}

function procesosid()
{
	/*
	 * Esta función obtiene los id de los elementos seleccionados.
	 */
	var checkboxes = $('.check');
	var temp = '-1'; 
 
	for (var x=0; x < checkboxes.length; x++) 
		{
			if (checkboxes[x].checked) 
				{
					temp = temp + '%' + checkboxes[x].value.toString();
					}
			}
			
	return temp;
	}

function nonprocesosid()
{
	/*
	 * Esta función obtiene los id de los elementos no seleccionados.
	 */
	var checkboxes = $('.check');
	var temp = '-1'; 
 
	for (var x=0; x < checkboxes.length; x++) 
		{
			if (!checkboxes[x].checked) 
				{
					temp = temp + '%' + checkboxes[x].value.toString();
					}
			}
			
	return temp;
	}

/*
 * El presente segmento de codigo evalua la accion de change sobre el elemento con el ID idObjEst
 * para ejecutar la acción de actualización sobre su dependencia.
 */
$(document).ready(function() {
    $("div").change(function(e){
    	e.stopPropagation();
    	if(e.target.id == "idObjEst")
    		{
    			//Se confirma la carga de actualizacion sobre ObjOpe. 
    			cargar('./php/frontend/programa/comp/cbObjOpe.php','?id='+document.getElementById('idObjEst').value.toString(),'cbObjOpe');
    			}
    });                 
});

/*
 * El presente segmento de codigo evalua la accion de click sobre cualquier elemento con el id buscar_#
 * para ejecutar la acción de actualización sobre el registro de una rejilla de datos.
 */
$(document).ready(function() {
    $("div").change(function(e){
    	e.stopPropagation();
    	if(e.target.id == "idObjOpe")
    		{
    			//Se confirma la carga de actualizacion sobre EstOpe. 
    			cargar('./php/frontend/programa/comp/cbEstOpe.php','?id='+document.getElementById('idObjOpe').value.toString(),'cbEstOpe');
    			}
    });                 
});

/*
 * El presente segmento de codigo evalua la accion de click sobre cualquier elemento con el id buscar_#
 * para ejecutar la acción de actualización sobre el registro de una rejilla de datos.
 */
$(document).ready(function() {
    $("div").change(function(e){
    	e.stopPropagation();
    	if(e.target.id == "idEntidad")
    		{
    			//Si el usuario confirma su solicitud de borrar el registro seleccionado.    			
    			cargarSync('./php/frontend/programa/comp/chkProcesos.php','?identidad='+document.getElementById('idEntidad').value.toString()+'&idprograma='+document.getElementById('idPrograma').value.toString(),'chkProcesos');
    			cargarSync('./php/frontend/programa/comp/cbResponsable.php','?id='+document.getElementById('idEntidad').value.toString(),'cbResponsable');
    			cargarSync('./php/frontend/programa/comp/cbSubalterno.php','?id='+document.getElementById('idEntidad').value.toString(),'cbSubalterno');
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
    	if(e.target.id.substring(0,10) == "prg_buscar")
    		{
    			//Si el usuario confirma su solicitud de borrar el registro seleccionado.
				document.getElementById('pgprograma').value = document.getElementById('nomprograma').value.toString();
				document.getElementById('pgidentidad').value = document.getElementById('nomidentidad').value.toString();
    			cargar('./php/frontend/programa/catPrograma.php','?nomprograma='+document.getElementById('nomprograma').value.toString()+'&nomidentidad='+document.getElementById('nomidentidad').value.toString(),'busRes');
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
    	if(e.target.id.substring(0,10) == "prg_delete")
    		{
    			//En caso de coincidir el id con la accion delete.
    			var respuesta;
    			respuesta = confirm("¿Esta seguro que desea eliminar el registro seleccionado?");
    			if(respuesta)
    				{
    					//Si el usuario confirma su solicitud de borrar el registro seleccionado.
    					cargar('./php/backend/programa/borrar.php','?id='+e.target.id.substring(11),'escritorio');
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
    	if(e.target.id.substring(0,7) == "prg_add")
    		{
    			//En caso de coincidir el id con la accion agregar.
    			cargar('./php/frontend/programa/opPrograma.php','?id=-1&view=0','escritorio');
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
    	if(e.target.id.substring(0,14) == "prg_visualizar")
    		{
    			//En caso de coincidir el id con la accion visualizar.
    			cargar('./php/frontend/programa/opPrograma.php','?id='+e.target.id.substring(15)+'&view=1','escritorio');
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
    	if(e.target.id.substring(0,8) == "prg_edit")
    		{
    			//En caso de coincidir el id con la accion editar.
    			cargar('./php/frontend/programa/opPrograma.php','?id='+e.target.id.substring(9)+'&view=0','escritorio');
    			}
    });                 
});

/*
 * El presente segmento de codigo evalua la accion de click sobre el elemento de retroceso de pagina
 * sobre el grid de datos.
 */
	$(document).ready(function()
		{
			$("div").click(function(e)
				{
					e.stopPropagation();
					if(e.target.id == "prg_Previous_10")
						{
							//En caso de coincidir con el control de retroceso.
							if((document.getElementById('pagina').value-1)!=0)
								{
									document.getElementById('pagina').value = parseInt(document.getElementById('pagina').value.toString())-1;
									}							
							cargar('./php/frontend/programa/catPrograma.php','?nomprograma='+document.getElementById('pgprograma').value.toString()+'&nomidentidad='+document.getElementById('pgidentidad').value.toString()+'&pagina='+document.getElementById('pagina').value.toString(),'busRes');
							}
					});                 
			});

/*
 * El presente segmento de codigo evalua la accion de click sobre el elemento de avance de pagina
 * sobre el grid de datos.
 */
	$(document).ready(function()
		{
			$("div").click(function(e)
				{
					e.stopPropagation();
					if(e.target.id == "prg_Next_10")
						{
							//En caso de coincidir con el control de avance.
							document.getElementById('pagina').value = parseInt(document.getElementById('pagina').value.toString())+1;							
							cargar('./php/frontend/programa/catPrograma.php','?nomprograma='+document.getElementById('pgprograma').value.toString()+'&nomidentidad='+document.getElementById('pgidentidad').value.toString()+'&pagina='+document.getElementById('pagina').value.toString(),'busRes');
							}
					});                 
			});