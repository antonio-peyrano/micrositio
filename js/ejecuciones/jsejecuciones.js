/**
 * Este archivo de script contiene los comandos de ejecución para la interfaz de gestión del
 * catálogo de ejecuciones en el sistema.
 */

function guardarEjecucion(url,parametro){
	/*
	 * Esta función valida que los datos para ser almacenados en el registro sean correctos.
	 */
	var error= 0;
	var flgMonto= '';
	var montoTotal= parseFloat(document.getElementById("MontoAcumulado").value) + parseFloat(document.getElementById("Monto").value);
	var montoAct= parseFloat(document.getElementById("MontoActividad").value);
	
	if(montoTotal>montoAct)
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			flgMonto= 'Error';
			}
	
	if(document.getElementById("idActividad").value.toString() == "-1")
		{
			//En caso de no ocurrir un error de validación, se asigna el valor de paso.
			error= error+1;
			}
	
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
			if(flgMonto=='')
				{
					/*
					 * En caso que el monto no se sobregire.
					 */
                	bootbox.alert("Existen campos pendientes por completar");
					}
			else
				{
					/*
					 * En caso que el monto este sobregirado.
					 */
                	bootbox.alert("El monto propuesto en la ejecucion, sobrepasa el asignado en la actividad");
					}			
			}
	else
		{
			/*
			 * En caso que la validación de campos sea satisfactoria.
			 */
			cargar(url,parametro,'sandbox');
			}
	}
	
function habEjecucion(){
	/*
	 * Esta función habilita los controles del formulario de ejecucion.
	 */
	document.getElementById('idActividad').disabled = false;
	document.getElementById('Cantidad').disabled = false;
	document.getElementById('Monto').disabled = false;
	document.getElementById('idMes').disabled = false;
	
	/*document.getElementById('P_1').disabled = false;
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
	document.getElementById('P_12').disabled = false;*/

	/*document.getElementById('E_1').disabled = false;
	document.getElementById('E_2').disabled = false;
	document.getElementById('E_3').disabled = false;
	document.getElementById('E_4').disabled = false;
	document.getElementById('E_5').disabled = false;
	document.getElementById('E_6').disabled = false;
	document.getElementById('E_7').disabled = false;
	document.getElementById('E_8').disabled = false;
	document.getElementById('E_9').disabled = false;
	document.getElementById('E_10').disabled = false;
	document.getElementById('E_11').disabled = false;
	document.getElementById('E_12').disabled = false;*/
	
	document.getElementById('ejc_Guardar').style.display="block";
	document.getElementById('ejc_Borrar').style.display="none";
	document.getElementById('ejc_Editar').style.display="none";
	}

$(document).ready(function() {
    $("div").click(function(e){
    	e.stopPropagation();
    	if(e.target.id == "verArchivos")
    		{
    			//Se confirma la carga de actualizacion sobre archivos adjuntos.
    			var w = 200;
    			var h = 100;
    			
    			var dualScreenLeft = window.screenLeft != undefined ? window.screenLeft : screen.left;
    			var dualScreenTop = window.screenTop != undefined ? window.screenTop : screen.top;
    			
    		    var width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
    		    var height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

    		    var left = ((width / 2) - (w / 2)) + dualScreenLeft;
    		    var top = ((height / 2) - (h / 2)) + dualScreenTop;
    		    
    			window.open('./php/frontend/main/subirArchivos.php?rutaadjuntos=ejecuciones_'+document.getElementById('idPrograma').value.toString()+'_'+document.getElementById('idActividad').value.toString()+'_'+document.getElementById('idEjecucion').value.toString()+'_'+document.getElementById('Periodo').value.toString(), "Subir Archivos", "directories=no, location=no, menubar=no, scrollbars=yes, statusbar=no, toolbar=yes, tittlebar=no, width="+width.toString()+", height="+height.toString()+", top="+top.toString()+", left="+left.toString());    			
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
    	if(e.target.id.substring(0,10) == "ejc_buscar")
    		{
    			//Si el usuario confirma su solicitud de borrar el registro seleccionado.  
    			cargar('./php/frontend/ejecuciones/catEjecucion.php','?idactividad='+document.getElementById('idActividad').value.toString(),'busRes');
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
    	if(e.target.id.substring(0,10) == "ejc_delete")
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
		            					cargar('./php/backend/ejecuciones/borrar.php','?id='+e.target.id.substring(11)+'&idactividad='+document.getElementById('idActividad').value.toString()+'&idprograma='+document.getElementById('idPrograma').value.toString()+'&idview=3','sandbox');
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
    	if(e.target.id.substring(0,7) == "ejc_add")
    		{
    			//En caso de coincidir el id con la accion agregar.
    			cargar('./php/frontend/ejecuciones/opEjecucion.php','?id=-1&view=0&idactividad='+document.getElementById('idActividad').value.toString()+'&idprograma='+document.getElementById('idPrograma').value.toString(),'sandbox');
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
    	if(e.target.id.substring(0,14) == "ejc_visualizar")
    		{
    			//En caso de coincidir el id con la accion visualizar.
    			cargar('./php/frontend/ejecuciones/opEjecucion.php','?id='+e.target.id.substring(15)+'&view=1&idactividad='+document.getElementById('idActividad').value.toString()+'&idprograma='+document.getElementById('idPrograma').value.toString(),'sandbox');
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
    	if(e.target.id.substring(0,8) == "ejc_edit")
    		{
    			//En caso de coincidir el id con la accion editar.
    			cargar('./php/frontend/ejecuciones/opEjecucion.php','?id='+e.target.id.substring(9)+'&view=0&idactividad='+document.getElementById('idActividad').value.toString()+'&idprograma='+document.getElementById('idPrograma').value.toString(),'sandbox');
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
					if(e.target.id == "ejc_Previous_10")
						{
							//En caso de coincidir con el control de retroceso.
							if((document.getElementById('pagina').value-1)!=0)
								{
									document.getElementById('pagina').value = parseInt(document.getElementById('pagina').value.toString())-1;
									}							
							cargar('./php/frontend/ejecuciones/catEjecucion.php','?idactividad='+document.getElementById('idActividad').value.toString()+'&pagina='+document.getElementById('pagina').value.toString(),'dataejecuciones');
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
					if(e.target.id == "ejc_Next_10")
						{
							//En caso de coincidir con el control de avance.
							document.getElementById('pagina').value = parseInt(document.getElementById('pagina').value.toString())+1;							
							cargar('./php/frontend/ejecuciones/catEjecucion.php','?idactividad='+document.getElementById('idActividad').value.toString()+'&pagina='+document.getElementById('pagina').value.toString(),'dataejecuciones');
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
	    		        if(e.target.id == "ejc_Volver")
	    		        	{
	    		            	//En caso de coincidir el id con la accion volver.
	    		        		cargar('./php/frontend/actividad/opActividad.php','?id='+document.getElementById('idActividad').value.toString()+'&idprograma='+document.getElementById('idPrograma').value.toString()+'&view=1','sandbox');
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
	    			    if(e.target.id == "ejc_Borrar")
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
	    				            					cargar('./php/backend/ejecuciones/borrar.php','?id='+document.getElementById('idEjecucion').value.toString()+'&idprograma='+document.getElementById('idPrograma').value.toString()+'&idactividad='+document.getElementById('idActividad').value.toString()+'&view=3','sandbox');
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
	    				if(e.target.id == "ejc_Guardar")
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
	    				            					guardarEjecucion('./php/backend/ejecuciones/guardar.php','?id='+document.getElementById('idEjecucion').value.toString()+'&idactividad='+document.getElementById('idActividad').value.toString()+'&idmes='+document.getElementById('idMes').value.toString()+'&cantidad='+document.getElementById('Cantidad').value.toString()+'&monto='+document.getElementById('Monto').value.toString()+'&periodo='+document.getElementById('Periodo').value.toString()+'&status='+document.getElementById('Status').value.toString()+'&idprograma='+document.getElementById('idPrograma').value.toString()+'&view=1');
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
	    				if(e.target.id == "ejc_Editar")
	    					{
	    				     	//En caso de coincidir el id con la accion edicion.
	    						habEjecucion();
	    						}
	    				});                 
				});	