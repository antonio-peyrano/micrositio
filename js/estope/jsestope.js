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
        	bootbox.alert("Existen campos pendientes por completar");
			}
	else
		{
			/*
			 * En caso que la validación de campos sea satisfactoria.
			 */
			cargar(url,parametro,'sandbox');
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
	document.getElementById('eop_Guardar').style.display="block";
	document.getElementById('eop_Borrar').style.display="none";
	document.getElementById('eop_Editar').style.display="none";
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
				document.getElementById('pgestope').value = document.getElementById('nomestope').value.toString();
				document.getElementById('pgestopenom').value = document.getElementById('estopenomenclatura').value.toString();
				document.getElementById('pgperiodo').value = document.getElementById('estopeperiodo').value.toString();
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
            	bootbox.confirm(
	            	{
		            	message: "¿Confirma que desea borrar el registro?",
		            	buttons: 
		            		{
		            			confirm: 
		            				{
		            					label: 'SI',
		            					className: 'btn-success'
		            					},
		            			cancel: 
		            				{
		            					label: 'NO',
		            					className: 'btn-danger'
		            					}
		            			},
		            	callback: function (result)
		            		{
		            			if(result)
		            				{
		            					//EL USUARIO DECIDE BORRAR EL REGISTRO.
		            					cargar('./php/backend/estope/borrar.php','?id='+e.target.id.substring(11),'sandbox');
		            					}			            					
		            			}
	            		});
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
    			cargar('./php/frontend/estope/opEstOpe.php','?id=-1&view=0','sandbox');
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
    			cargar('./php/frontend/estope/opEstOpe.php','?id='+e.target.id.substring(15)+'&view=1','sandbox');
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
    			cargar('./php/frontend/estope/opEstOpe.php','?id='+e.target.id.substring(9)+'&view=0','sandbox');
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
					if(e.target.id == "eop_Previous_10")
						{
							//En caso de coincidir con el control de retroceso.
							if((document.getElementById('pagina').value-1)!=0)
								{
									document.getElementById('pagina').value = parseInt(document.getElementById('pagina').value.toString())-1;
									}							
							cargar('./php/frontend/estope/catEstOpe.php','?nomestope='+document.getElementById('pgestope').value.toString()+'&estopenomenclatura='+document.getElementById('pgestopenom').value.toString()+'&estopeperiodo='+document.getElementById('pgperiodo').value.toString()+'&pagina='+document.getElementById('pagina').value.toString(),'busRes');
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
					if(e.target.id == "eop_Next_10")
						{
							//En caso de coincidir con el control de avance.
							document.getElementById('pagina').value = parseInt(document.getElementById('pagina').value.toString())+1;							
							cargar('./php/frontend/estope/catEstOpe.php','?nomestope='+document.getElementById('pgestope').value.toString()+'&estopenomenclatura='+document.getElementById('pgestopenom').value.toString()+'&estopeperiodo='+document.getElementById('pgperiodo').value.toString()+'&pagina='+document.getElementById('pagina').value.toString(),'busRes');
							}
					});                 
			});
	
	//DECLARACION DE ACCIONES A EJECUTARSE SOBRE FORMULARIO OPERATIVO.
	/*
	 * El presente segmento de codigo evalua la accion de click sobre el elemento de retorno
	 * pulsado sobre el formulario operativo.
	 */
		$(document).ready(function()
			{
	    		$("div").click(function(e)
	    			{
	    		     	e.stopPropagation();
	    		        if(e.target.id == "eop_Volver")
	    		        	{
	    		            	//En caso de coincidir el id con la accion volver.
	    		        		cargar('./php/frontend/estope/busEstOpe.php','','sandbox');
	    		            	}
	    				});                 
				});
	    		
	/*
	 * El presente segmento de codigo evalua la accion de click sobre el elemento de borrado
	 * pulsado sobre el formulario operativo.
	 */
		$(document).ready(function()
			{
	    		$("div").click(function(e)
	    			{
	    			 	e.stopPropagation();
	    			    if(e.target.id == "eop_Borrar")
	    			    	{
	    			         	//En caso de coincidir el id con la accion borrar.
	    			            bootbox.confirm(
	    			            	{
	    				            	message: "¿Confirma que desea borrar el registro?",
	    				            	buttons: 
	    				            		{
	    				            			confirm: 
	    				            				{
	    				            					label: 'SI',
	    				            					className: 'btn-success'
	    				            					},
	    				            			cancel: 
	    				            				{
	    				            					label: 'NO',
	    				            					className: 'btn-danger'
	    				            					}
	    				            			},
	    				            	callback: function (result)
	    				            		{
	    				            			if(result)
	    				            				{
	    				            					//EL USUARIO DECIDE BORRAR EL REGISTRO.
	    				            					cargar('./php/backend/estope/borrar.php','?id='+document.getElementById('idObjOpe').value.toString(),'sandbox');
	    				            					}			            					
	    				            			}
	    			            		});
	    			    		}
	    				});                 
				});

	/*
	 * El presente segmento de codigo evalua la accion de click sobre el elemento de guardado
	 * pulsado sobre el formulario operativo.
	 */
		$(document).ready(function()
			{
	    		$("div").click(function(e)
	    			{
	    				e.stopPropagation();
	    				if(e.target.id == "eop_Guardar")
	    					{
	    				     	//En caso de coincidir el id con la accion guardar.
	    				        bootbox.confirm(
	    				        	{
	    				            	message: "¿Confirma que desea almacenar los cambios?",
	    				            	buttons: 
	    				            		{
	    				            			confirm: 
	    				            				{
	    				            					label: 'SI',
	    				            					className: 'btn-success'
	    				            					},
	    				            			cancel: 
	    				            				{
	    				            					label: 'NO',
	    				            					className: 'btn-danger'
	    				            					}
	    				            			},
	    				            	callback: function (result)
	    				            		{
	    				            			if(result)
	    				            				{
	    				            					//EL USUARIO DECIDE ALMACENAR LOS DATOS.
	    				            					guardarEstOpe('./php/backend/estope/guardar.php','?id='+document.getElementById('idEstOpe').value.toString()+'&idobjest='+document.getElementById('idObjEst').value.toString()+'&idobjope='+document.getElementById('idObjOpe').value.toString()+'&nomenclatura='+document.getElementById('Nomenclatura').value.toString()+'&estope='+document.getElementById('EstOpe').value.toString()+'&periodo='+document.getElementById('Periodo').value.toString()+'&status='+document.getElementById('Status').value.toString());
	    				            					}			            					
	    				            			}
	    				        		});			        		
	    						}
	    				});                 
				});

	/*
	 * El presente segmento de codigo evalua la accion de click sobre el elemento de edicion
	 * pulsado sobre el formulario operativo.
	 */
		$(document).ready(function()
			{
	    		$("div").click(function(e)
	    			{
	    				e.stopPropagation();
	    				if(e.target.id == "eop_Editar")
	    					{
	    				     	//En caso de coincidir el id con la accion edicion.
	    						habEstOpe();
	    						}
	    				});                 
				});	