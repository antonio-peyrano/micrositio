<?php
/*
 * Micrositio-Phoenix v1.0 Software para gestion de la planeación operativa.
 * PHP v5
 * Autor: Prof. Jesus Antonio Peyrano Luna <antonio.peyrano@live.com.mx>
 * Nota aclaratoria: Este programa se distribuye bajo los terminos y disposiciones
 * definidos en la GPL v3.0, debidamente incluidos en el repositorio original.
 * Cualquier copia y/o redistribucion del presente, debe hacerse con una copia
 * adjunta de la licencia en todo momento.
 * Licencia: http://www.gnu.org/copyleft/lesser.html GNU Lesser General Public License
 */

    /*
     * Este archivo contiene el constructor para el combobox de objetivos operativos a visualizar.
     */
    header('Content-Type: text/html; charset=UTF-8'); //Forzar la codificación a UTF-8.
    
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/dal/conectividad.class.php"); //Se carga la referencia a la clase de conectividad.
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/config.php"); //Se carga la referencia de los atributos de configuración.

    $idEntidad = $_GET['id'];
    
    global $habcampos, $RegNiveles, $Registro;
    
    function cargarCedulas($parametro)
        {
            /*
             * Esta función establece la carga del conjunto de registros de ObjOpe.
             */
            global $username, $password, $servername, $dbname;
    
            $objConexion= new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
            $consulta= 'SELECT idCedula, Folio FROM opCedulas WHERE Status=0 AND idEntidad='.$parametro; //Se establece el modelo de consulta de datos.
            $dataset = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
            return $dataset;
            }
    
    $subconsulta = cargarCedulas($idEntidad);
    
    echo' <select name= "idCedula" id= "idCedula" '.$habcampos.' value= "-1">
                <option value=-1>Seleccione</option>';
    
                                $RegNiveles = @mysql_fetch_array($subconsulta,MYSQLI_ASSOC);
                                
                                while($RegNiveles)
                                    {
                                        
    echo '                              <option value='.$RegNiveles['idCedula'].'>'.$RegNiveles['Folio'].'</option>';
                                                    
                                        $RegNiveles = @mysql_fetch_array($subconsulta,MYSQLI_ASSOC);
                                        }
    
    echo' </select>';    
?>