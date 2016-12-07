/*
 * Este archivo de script contiene las instrucciones y procedimiento para ejecuci�n en cliente
 * sobre la interfaz del registro de recuperaci�n de password por medio de solicitud.
 */

    function enviarRecordClave(url,parametro)
        {
	       /*
	        * Esta funci�n valida que el correo sea valido para su envio.
	        */
            var error=0;
            
            if(document.getElementById("Correo").value.toString()=="")
                {
                    error+=1;
                    }
                    
                                        	
            if(error==0)
                {
                    /*
                     * En caso de obtenerse una transacci�n valida.
                     */
                     cargar(url,parametro,'infoRecordatorio');
                    }
	
            if(error>=1)
                {
		          /*
		           * En caso de ocurrir un error de validaci�n, se notifica al usuario.
		           */
		          alert("Existen campos pendientes por completar");
		          }
        }