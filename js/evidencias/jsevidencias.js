/**
 * Este archivo de script contiene los comandos de ejecuci�n para la interfaz de gesti�n del
 * cat�logo de evidencias en el sistema.
 */

function guardarEvidencia(url,parametro){
	/*
	 * Esta funci�n valida que los datos para ser almacenados en el registro sean correctos.
	 */
	var error= 0;
	var ruta= 0;
    
	if(document.getElementById("RutaURL").value.toString() == "")
		{
			//En caso de no ocurrir un error de validaci�n, se asigna el valor de paso.
			error= error+1;
			}
            
    if(document.getElementById("RutaURL").value.toString().indexOf("http://") == -1)
        {
            ruta += 1;
            }
            
    if(document.getElementById("RutaURL").value.toString().indexOf("https://") == -1)
        {
            ruta += 1;
            }
            
    if(document.getElementById("RutaURL").value.toString().indexOf("ftp://") == -1)
        {
            ruta += 1;
            }
            	
	if(error > 0)
		{
			/*
			 * En caso de ocurrir un error de validaci�n, se notifica al usuario.
			 */
			alert("No se ha proporcionado una ruta para la evidencia");
			}

	if(ruta == 3)
		{
			/*
			 * En caso de ocurrir un error de validaci�n, se notifica al usuario.
			 */
			alert("No se ha proporcionado una ruta valida para la evidencia");
			}
                        
	if((error == 0)&&(ruta < 3))
		{
			/*
			 * En caso que la validaci�n de campos sea satisfactoria.
			 */
			cargar(url,parametro,'escritorio');
			}
	}
    
/*
 * El presente segmento de codigo evalua la accion de click sobre cualquier elemento con el id delete_#
 * para ejecutar la acci�n de actualizaci�n sobre el registro de una rejilla de datos.
 */
$(document).ready(function() {
    $("div").click(function(e){
    	e.stopPropagation();
    	if(e.target.id.substring(0,10) == "evi_delete")
    		{
    			//En caso de coincidir el id con la accion delete.
    			var respuesta;
    			respuesta = confirm("�Esta seguro que desea eliminar el registro seleccionado?");
    			if(respuesta)
    				{
    					//Si el usuario confirma su solicitud de borrar el registro seleccionado.
    					cargar('./php/backend/evidencias/borrar.php','?id='+e.target.id.substring(11)+'&idejecucion='+document.getElementById('idEjecucion').value.toString()+'&idactividad='+document.getElementById('idActividad').value.toString()+'&idprograma='+document.getElementById('idPrograma').value.toString(),'escritorio');
    					} 		
    			}
    });                 
});