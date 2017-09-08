<?php
/*
 * Citadel v1.0.0 Software para atencion ciudadana.
 * PHP v5
 * Autor: Prof. Jesus Antonio Peyrano Luna <antonio.peyrano@live.com.mx>
 * Nota aclaratoria: Este programa se distribuye bajo los terminos y disposiciones
 * definidos en la GPL v3.0, debidamente incluidos en el repositorio original.
 * Cualquier copia y/o redistribucion del presente, debe hacerse con una copia
 * adjunta de la licencia en todo momento.
 * Licencia: http://www.gnu.org/copyleft/lesser.html GNU Lesser General Public License
 */
    header('Content-Type: text/html; charset=ISO-8859-1'); //Forzar la codificacion a ISO-8859-1.
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/bl/instrumentos/factores/factores.class.php"); //Se carga la referencia de la clase para manejo de la entidad usuarios.
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/bl/utilidades/usrctrl.class.php"); //Se carga la referencia de clase para control de accesos.
    
    class busFactores
        {
            private $Sufijo = "fac_";
            
            public function __construct()
                {
                    //Declaracion de constructor de clase (VACIO)
                    }

            public function cargarCedulas()
                {
                    /*
                     * Esta funcion establece la carga del conjunto de registros de cedulas.
                     */
                    global $username, $password, $servername, $dbname;
                    
                    $objConexion = new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
                    $consulta = 'SELECT idCedula, Folio FROM opCedulas WHERE Status=0'; //Se establece el modelo de consulta de datos.
                    $dataset = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
                    return $dataset;
                    }
                    
            public function drawCBCedulas()
                {
                    /*
                     * Esta funcion crea el codigo HTML que corresponde al combobox de
                     * cedulas.
                     */
                    $HTML = '<tr><td class= "queryRowsnormTR">Cedula: </td><td class= "queryRowsnormTR"><select name= "busidcedula" id= "busidcedula" value= "-1">
                                <option value=-1>Seleccione</option>';
                                                            
                    $subconsulta = $this->cargarCedulas();
                    $RegCedulas = @mysqli_fetch_array($subconsulta,MYSQLI_ASSOC);
                    
                    while($RegCedulas)
                        {
                            $HTML .= '<option value='.$RegCedulas['idCedula'].'>'.$RegCedulas['Folio'].'</option>';
                            $RegCedulas = @mysqli_fetch_array($subconsulta,MYSQLI_ASSOC);
                            }
                    
                    $HTML .= '</select></td><td></td></tr>';
                    return $HTML;
                    }
                                        
            public function drawUI()
                {
                    $HTML = '
                            <div id="paginado" style="display:none">
                                <input id="pagina" type="text" value="1">
                                <input id="pgfactor" type="text" value="">
                                <input id="pgidcedula" type="text" value="">
                                <input id="pgtipo" type="text" value="">
                            </div> 
                            <div id= "divBusqueda">
                                <table class="queryTable" colspan= "7">
                                    <tr><td class= "queryRowsnormTR" width ="180">Por factor: </td><td class= "queryRowsnormTR" width= "250"><input type= "text" id= "busfactor"></td><td rowspan= "2"><img id="'.$this->Sufijo.'buscar" align= "left" src= "./img/grids/view.png" width= "25" height= "25" alt="Buscar"/></td></tr>'
                                    .$this->drawCBCedulas().
                                    '<tr><td class= "queryRowsnormTR">Por tipo: </td><td class= "queryRowsnormTR"><input type= "text" id= "bustipo"></td><td></td></tr>
                                </table>
                            </div>';
                    
                    return $HTML;
                    }                    
            }
                

    $objUsrCtrl = new usrctrl();
            
    if($objUsrCtrl->getCredenciales())
        {
            /*
             * Se valida que el usuario tenga sus credenciales cargadas
             * previo login en el sistema.
             */
            $idUsuario = $objUsrCtrl->getidUsuario($_SESSION['usuario'], $_SESSION['clave']);
            $Modulo = 'Factores';
            
            if($objUsrCtrl->validarCredenciales($idUsuario, $Modulo)!='')
                {
                    /*
                     * Se valida que las credenciales autoricen la ejecucion del
                     * modulo solicitado.
                     */
                    $objBusFactores = new busFactores();

                    echo '  <html>
                                <center>'.$objBusFactores->drawUI().'</center><br>';

                    echo '      <div id= "busRes">';
                                    include_once("catFactores.php");
                    echo '      </div>
                            </html>';
                    }
            else 
                {
                    /*
                     * En caso que no cuente con credenciales validas, el sistema impedira
                     * la brecha de seguridad.
                     */
                    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/frontend/notificaciones/noAutorizado.php");
                    }
            }
    else
        {
            /*
             * En caso que no cuente con credenciales validas, el sistema impedira
             * la brecha de seguridad.
             */
            include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/frontend/notificaciones/noAutorizado.php");
            }                        
?>