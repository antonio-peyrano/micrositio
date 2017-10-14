function guardarFicha(url,parametro)
	{
		/*
		 * Esta funcion valida que los datos obtenidos mediante la interfaz, sean adecuados
		 * para su almacenamiento en la base de datos.
		 */
		var error= 0;
	
		if(document.getElementById("idProceso").value.toString() == "-1")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}
				
		if(document.getElementById("nEdicion").value.toString() == "")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}
		
		if(document.getElementById("FechaEdicion").value.toString() == "")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}
		
		if(document.getElementById("Actividades").value.toString() == "")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}
		
		if(document.getElementById("Responsable").value.toString() == "")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}
		
		if(document.getElementById("MisionProceso").value.toString() == "")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}
		
		if(document.getElementById("Entrada").value.toString() == "")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}
		
		if(document.getElementById("Salida").value.toString() == "")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}

		if(document.getElementById("relProcesos").value.toString() == "")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}		
		
		if(document.getElementById("necRecursos").value.toString() == "")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}
		
		if(document.getElementById("regArchivos").value.toString() == "")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}
		
		if(document.getElementById("docAplicables").value.toString() == "")
			{
				//En caso de no ocurrir un error de validación, se asigna el valor de paso.
				error= error+1;
				}
		
		if(indicadoresSeleccionados() == 0)
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
				parametro = parametro.replace(/\n/g,"<br>"); //Se cambian los saltos de linea por el tag <br>.
				cargar(url,parametro,'sandbox');
				}		
		}

function indicadoresSeleccionados()
	{
		/*
		 * Esta función obtiene los procesos seleccionados.
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

function habFicha()
	{
		/*
		 * Esta función habilita los controles del formulario de programa.
		 */
		var checkboxes = $('.check');
	
		for (var x=0; x < checkboxes.length; x++)
			{
				checkboxes[x].disabled = false;
				}
	
		document.getElementById('idProceso').disabled = false;
		document.getElementById('Clave').disabled = false;
		document.getElementById('nEdicion').disabled = false;
		document.getElementById('FechaEdicion').disabled = false;
		document.getElementById('Actividades').disabled = false;
		document.getElementById('Responsable').disabled = false;
		document.getElementById('MisionProceso').disabled = false;
		document.getElementById('Entrada').disabled = false;
		document.getElementById('Salida').disabled = false;
		document.getElementById('relProcesos').disabled = false;
		document.getElementById('necRecursos').disabled = false;
		document.getElementById('regArchivos').disabled = false;
		document.getElementById('docAplicables').disabled = false;
		document.getElementById('fsp_Guardar').style.display="block";
		document.getElementById('fsp_Borrar').style.display="none";
		document.getElementById('fsp_Editar').style.display="none";		
		}

function indicadoresid()
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

function nonindicadoresid()
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
 * El presente segmento de codigo evalua la accion de click sobre el componente idProceso
 * para ejecutar la acción de actualización sobre el campo de indicadores.
 */

$(document).ready(function() {
    $("div").change(function(e){
    	e.stopPropagation();
    	if(e.target.id == "idProceso")
    		{
    			//Se confirma la carga de actualizacion sobre Indicadores. 
    			cargar('./php/frontend/fichas/comp/chkIndicadores.php','?id='+document.getElementById('idProceso').value.toString()+'&parametro='+document.getElementById('idFicha').value.toString(),'chkIndicadores');
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
    	if(e.target.id.substring(0,10) == "fsp_buscar")
    		{
    			//Si el usuario confirma su solicitud de borrar el registro seleccionado. 
				document.getElementById('pgclave').value = document.getElementById('nomclave').value.toString();
				document.getElementById('pgidproceso').value = document.getElementById('nomidproceso').value.toString();    		
    			cargar('./php/frontend/fichas/catFichaProceso.php','?nomclave='+document.getElementById('nomclave').value.toString()+'&nomidproceso='+document.getElementById('nomidproceso').value.toString(),'busRes');
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
    	if(e.target.id.substring(0,10) == "fsp_delete")
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
		            					cargar('./php/backend/fichas/borrar.php','?id='+e.target.id.substring(11),'sandbox');
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
    	if(e.target.id.substring(0,7) == "fsp_add")
    		{
    			//En caso de coincidir el id con la accion agregar.
    			cargar('./php/frontend/fichas/opFichaProceso.php','?id=-1&view=0','sandbox');
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
    	if(e.target.id.substring(0,14) == "fsp_visualizar")
    		{
    			//En caso de coincidir el id con la accion visualizar.
    			cargar('./php/frontend/fichas/opFichaProceso.php','?id='+e.target.id.substring(15)+'&view=1','sandbox');
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
    	if(e.target.id.substring(0,8) == "fsp_edit")
    		{
    			//En caso de coincidir el id con la accion editar.
    			cargar('./php/frontend/fichas/opFichaProceso.php','?id='+e.target.id.substring(9)+'&view=0','sandbox');
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
					if(e.target.id == "fsp_Previous_10")
						{
							//En caso de coincidir con el control de retroceso.
							if((document.getElementById('pagina').value-1)!=0)
								{
									document.getElementById('pagina').value = parseInt(document.getElementById('pagina').value.toString())-1;
									}							
							cargar('./php/frontend/fichas/catFichaProceso.php','?nomclave='+document.getElementById('pgclave').value.toString()+'&nomidproceso='+document.getElementById('pgidproceso').value.toString()+'&pagina='+document.getElementById('pagina').value.toString(),'busRes');
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
					if(e.target.id == "fsp_Next_10")
						{
							//En caso de coincidir con el control de avance.
							document.getElementById('pagina').value = parseInt(document.getElementById('pagina').value.toString())+1;							
							cargar('./php/frontend/fichas/catFichaProceso.php','?nomclave='+document.getElementById('pgclave').value.toString()+'&nomidproceso='+document.getElementById('pgidproceso').value.toString()+'&pagina='+document.getElementById('pagina').value.toString(),'busRes');
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
	    		        if(e.target.id == "fsp_Volver")
	    		        	{
	    		            	//En caso de coincidir el id con la accion volver.
	    		        		cargar('./php/frontend/fichas/busFichaProceso.php','','sandbox');	    		        		
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
	    			    if(e.target.id == "fsp_Borrar")
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
	    				            					cargar('./php/backend/fichas/borrar.php','?id='+document.getElementById('idEmpleado').value.toString(),'sandbox');
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
	    				if(e.target.id == "fsp_Guardar")
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
	    				            					guardarFicha('./php/backend/fichas/guardar.php','?id='+document.getElementById('idFicha').value.toString()+'&idproceso='+document.getElementById('idProceso').value.toString()+'&clave='+document.getElementById('Clave').value.toString()+'&nedicion='+document.getElementById('nEdicion').value.toString()+'&fechaedicion='+document.getElementById('FechaEdicion').value.toString()+'&actividades='+document.getElementById('Actividades').value.toString()+'&responsable='+document.getElementById('Responsable').value.toString()+'&misionproceso='+document.getElementById('MisionProceso').value.toString()+'&entrada='+document.getElementById('Entrada').value.toString()+'&salida='+document.getElementById('Salida').value.toString()+'&relprocesos='+document.getElementById('relProcesos').value.toString()+'&idindicadores='+indicadoresid()+'&nonidindicadores='+nonindicadoresid()+'&necrecursos='+document.getElementById('necRecursos').value.toString()+'&regarchivos='+document.getElementById('regArchivos').value.toString()+'&docaplicables='+document.getElementById('docAplicables').value.toString()+'&status='+document.getElementById('Status').value.toString());
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
	    				if(e.target.id == "fsp_Editar")
	    					{
	    				     	//En caso de coincidir el id con la accion edicion.
	    						document.getElementById("nEdicion").value = parseInt(document.getElementById("nEdicion").value.toString())+1;
	    				        habFicha();
	    						}
	    				});                 
				});	