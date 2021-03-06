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
    header('Content-Type: text/html; charset=iso-8859-1'); //Forzar la codificación a ISO-8859-1.
    
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/dal/conectividad.class.php"); //Se carga la referencia a la clase de conectividad.
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/config.php"); //Se carga la referencia de los atributos de configuración.

    $idEntidad = $_GET['id'];
    
    global $habcampos, $RegNiveles, $Registro;
    
    function cargarResponsable($parametro)
        {
            /*
             * Esta función establece la carga del conjunto de registros de Responsables.
             */
            global $username, $password, $servername, $dbname;
    
            $objConexion= new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
            $consulta= 'SELECT idEmpleado, CONCAT(Nombre,\' \',Paterno,\' \',Materno) AS Empleado FROM opEmpleados WHERE Status=0 AND idEntidad='.$parametro; //Se establece el modelo de consulta de datos.
            $dataset = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
            return $dataset;
            }
    
    $subconsulta = cargarResponsable($idEntidad);
    
    echo' <select style="width:300px;" class="inputform" name= "idSubalterno" id= "idSubalterno" '.$habcampos.' value= "'.$Registro['idSubalterno'].'">
                <option value=-1>Seleccione</option>';
    
                                $RegNiveles = @mysqli_fetch_array($subconsulta,MYSQLI_ASSOC);
                                
                                while($RegNiveles)
                                    {
                                        if($RegNiveles['idEmpleado']==$Registro['idSubalterno'])
                                            {
                                                //En caso que el valor almacenado coincida con uno de los existentes en lista.
            echo '                              <option value='.$RegNiveles['idEmpleado'].' selected="selected">'.$RegNiveles['Empleado'].'</option>';
                                                }
                                        else
                                            {
                                                //En caso contrario se carga la etiqueta por default.
            echo '                              <option value='.$RegNiveles['idEmpleado'].'>'.$RegNiveles['Empleado'].'</option>';
                                                }
                                        $RegNiveles = @mysqli_fetch_array($subconsulta,MYSQLI_ASSOC);
                                        }
    
            echo'               </select>';    
?>