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
 * Este archivo contiene el constructor para el combobox de puestos a visualizar.
 */
    header('Content-Type: text/html; charset=UTF-8'); //Forzar la codificación a UTF-8.

    include_once ("../../../backend/dal/conectividad.class.php"); //Se carga la referencia a la clase de conectividad.
    include_once ("../../../backend/config.php"); //Se carga la referencia de los atributos de configuración.

    $idEntidad = $_GET['id'];

    global $habcampos, $RegNiveles, $Registro;

    function cargarPuestos($parametro)
        {
            /*
             * Esta función establece la carga del conjunto de registros de Puestos.
             */
            global $username, $password, $servername, $dbname;

            $objConexion= new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
            $consulta= 'SELECT * FROM ((catPuestos INNER JOIN relEntPuesto ON relEntPuesto.idPuesto = catPuestos.idPuesto) INNER JOIN catEntidades ON relEntPuesto.idEntidad = catEntidades.idEntidad) WHERE catPuestos.Status=0 AND relEntPuesto.idEntidad='.$parametro; //Se establece el modelo de consulta de datos.
            $dataset = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
            return $dataset;
            }

    $subconsulta = cargarPuestos($idEntidad);

    echo' <select name= "idPuesto" id= "idPuesto" '.$habcampos.' value= "'.$Registro['idPuesto'].'">
                <option value=-1>Seleccione</option>';

    $RegNiveles = @mysql_fetch_array($subconsulta,MYSQLI_ASSOC);

    while($RegNiveles)
        {
            if($RegNiveles['idPuesto']==$Registro['idPuesto'])
                {
                    //En caso que el valor almacenado coincida con uno de los existentes en lista.
    echo '          <option value='.$RegNiveles['idPuesto'].' selected="selected">'.$RegNiveles['Puesto'].'</option>';
                    }
            else
                {
                    //En caso contrario se carga la etiqueta por default.
    echo '          <option value='.$RegNiveles['idPuesto'].'>'.$RegNiveles['Puesto'].'</option>';
                    }
            $RegNiveles = @mysql_fetch_array($subconsulta,MYSQLI_ASSOC);
            }

    echo'   </select>';
?>