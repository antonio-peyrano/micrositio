/**
 * Este archivo de script contiene los comandos de ejecución para la interfaz de gestión del
 * catálogo de procesos en el sistema.
 */

function guardarProceso(url,parametro){
	/*
	 * Esta función valida que los datos para ser almacenados en el registro sean correctos.
	 */
	var error= 0;
	
	if(document.getElementById("Proceso").value.toString() == "")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}
	
	if(procesosSeleccionados() == 0)
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
	
function habProceso()
	{
		/*
		 * Esta función habilita los controles del formulario de proceso.
		 */
		var checkboxes = $('.check');
		
		for (var x=0; x < checkboxes.length; x++)
			{
				checkboxes[x].disabled = false;
				}
		
		document.getElementById('Proceso').disabled = false;
		document.getElementById('pro_Guardar').style.display="block";
		document.getElementById('pro_Borrar').style.display="none";
		document.getElementById('pro_Editar').style.display="none";
		}

function procesosSeleccionados()
{
	/*
	 * Esta función obtiene los elementos seleccionados
	 * para la validacion.
	 */
	var checkboxes = $('.check');
	var temp = 0; 
 
	for (var x=0; x < checkboxes.length; x++) 
		{
			if (checkboxes[x].checked) 
				{
					temp += 1;
					}
			}
			
	return temp;
	}

function vectorizacion()
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

function nonvectorizacion()
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
 * El presente segmento de codigo evalua la accion de click sobre cualquier elemento con el id buscar_#
 * para ejecutar la acción de actualización sobre el registro de una rejilla de datos.
 */
$(document).ready(function() {
    $("div").click(function(e){
    	e.stopPropagation();
    	if(e.target.id.substring(0,10) == "pro_buscar")
    		{
    			//Si el usuario confirma su solicitud de borrar el registro seleccionado.
				document.getElementById('pgproceso').value = document.getElementById('nomproceso').value.toString();
				document.getElementById('pgidentidad').value = document.getElementById('nomidentidad').value.toString();
    			cargar('./php/frontend/procesos/catProcesos.php','?nomproceso='+document.getElementById('nomproceso').value.toString()+'&nomidentidad='+document.getElementById('nomidentidad').value.toString(),'busRes');
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
    	if(e.target.id.substring(0,10) == "pro_delete")
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
		            				cargar('./php/backend/procesos/borrar.php','?id='+e.target.id.substring(11)+'&listado=1','sandbox');
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
    	if(e.target.id.substring(0,7) == "pro_add")
    		{
    			//En caso de coincidir el id con la accion agregar.
    			cargar('./php/frontend/procesos/opProcesos.php','?id=-1&view=0','sandbox');
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
    	if(e.target.id.substring(0,14) == "pro_visualizar")
    		{
    			//En caso de coincidir el id con la accion visualizar.
    			cargar('./php/frontend/procesos/opProcesos.php','?id='+e.target.id.substring(15)+'&view=1','sandbox');
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
    	if(e.target.id.substring(0,8) == "pro_edit")
    		{
    			//En caso de coincidir el id con la accion editar.
    			cargar('./php/frontend/procesos/opProcesos.php','?id='+e.target.id.substring(9)+'&view=0','sandbox');
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
					if(e.target.id == "pro_Previous_10")
						{
							//En caso de coincidir con el control de retroceso.
							if((document.getElementById('pagina').value-1)!=0)
								{
									document.getElementById('pagina').value = parseInt(document.getElementById('pagina').value.toString())-1;
									}							
			    			cargar('./php/frontend/procesos/catProcesos.php','?nomproceso='+document.getElementById('pgproceso').value.toString()+'&nomidentidad='+document.getElementById('pgidentidad').value.toString()+'&pagina='+document.getElementById('pagina').value.toString(),'busRes');
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
					if(e.target.id == "pro_Next_10")
						{
							//En caso de coincidir con el control de avance.
							document.getElementById('pagina').value = parseInt(document.getElementById('pagina').value.toString())+1;							
			    			cargar('./php/frontend/procesos/catProcesos.php','?nomproceso='+document.getElementById('pgproceso').value.toString()+'&nomidentidad='+document.getElementById('pgidentidad').value.toString()+'&pagina='+document.getElementById('pagina').value.toString(),'busRes');
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
	    		        if(e.target.id == "pro_Volver")
	    		        	{
	    		            	//En caso de coincidir el id con la accion volver.
	    		        		cargar('./php/frontend/procesos/busProcesos.php','','sandbox');
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
	    			    if(e.target.id == "pro_Borrar")
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
	    				            					cargar('./php/backend/procesos/borrar.php','?id='+document.getElementById('idProceso').value.toString(),'sandbox');
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
	    				if(e.target.id == "pro_Guardar")
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
	    				            					guardarProceso('./php/backend/procesos/guardar.php','?id='+document.getElementById('idProceso').value.toString()+'&proceso='+document.getElementById('Proceso').value.toString()+'&identidad='+vectorizacion()+'&nonidentidad='+nonvectorizacion()+'&status='+document.getElementById('Status').value.toString());
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
	    				if(e.target.id == "pro_Editar")
	    					{
	    				     	//En caso de coincidir el id con la accion edicion.
	    						habProceso();
	    						}
	    				});                 
				});	