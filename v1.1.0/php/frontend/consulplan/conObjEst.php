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

    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/dal/conectividad.class.php"); //Se carga la referencia a la clase de conectividad.
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/config.php"); //Se carga la referencia de los atributos de configuración.

    global $username, $password, $servername, $dbname;
    
    $sufijo= "coe_"; //Variable de control de sufijo de identificadores.          
    $Optimo = 0; //El valor de limite superior para la eficacia.
    $Tolerable = 0; //El valor de limite inferior para la eficacia.
    $Periodo = ''; //El valor del periodo a visualizar.
    
    $column_names= ""; //Variable de control para los nombres de columnas a mostrarse en el grid.

    function obtenerPerfilSys()
        {
            /*
             * Esta función obtiene el perfil del sistema activo para el despliegue de la
             * información de la planeación.
             */
            global $username, $password, $servername, $dbname;
            global $Periodo, $Optimo, $Tolerable;
         
            $objConexion= new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
            $consulta= "SELECT *FROM catConfiguraciones WHERE Status=0"; //Se establece el modelo de consulta de datos.
            $dsConfiguracion = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
            $RegConfiguracion = @mysql_fetch_array($dsConfiguracion,MYSQLI_ASSOC);
         
            if($RegConfiguracion)
                {
                    //Si ha sido localizada una configuración valida.
                    $Optimo = $RegConfiguracion['Optimo'];
                    $Tolerable = $RegConfiguracion['Tolerable'];
                    $Periodo = $RegConfiguracion['Periodo'];
                    }
            }
            
    $objConexion= new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
    obtenerPerfilSys(); //Llamada a la función de obtención de parametros.

    $consulta= "SELECT idObjEst, Nomenclatura, ObjEst AS Objetivo, Periodo, Status FROM catObjEst WHERE Status=0 AND Periodo=".$Periodo; //Se establece el modelo de consulta de datos.
    $dataset = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
    
    function dgDatos($dataset)
        {
            /*
             * Esta función crea el codigo HTML correspondiente a la parte de información
             * obtenida en la consulta de datos en modo de una tabla.
             */
            global $sufijo; //Acceso a la variable de sufijo.
        
            $count_row=1;//Se inicializa el contador de filas.
            $record = @mysql_fetch_array($dataset,MYSQLI_ASSOC);
        
            while ($record) 
                {
                    //Mientras existan elementos en la colección de filas.
                
                    /*Nota: El argumento MYSQL_ASSOC es necesario para visualizar unicamente un conjunto de elementos;
                     *de lo contrario, al ser omitido retornara valores duplicados.                
                     */
                
                    if(($count_row % 2)==0)
                        {
                            //En caso de ser una fila de datos non, se propone el color base.
                            $rows='<tr class="dgRowsnormTR">';
                            }
                    else
                        {
                            //En caso de ser una fila par, se propone el color alterno.
                            $rows='<tr class="dgRowsaltTR">';
                            }
                        
                    $display = 1;
                
                    foreach ($record as $value)
                        {
                            //Para cada elemento en el arreglo, se dispone de una casilla en la
                            //tabla.
                            if($display == 1)
                                {
                                    $rows = $rows.'<td style= "display:none">'.$value.'</td>';
                                    $display = 0;
                                    }
                            else
                                {
                                    $rows = $rows."<td>".$value."</td>";
                                    }                                                
                            }
                        
                    $rows = $rows.'<td id="reg_'.$record['idObjEst'].'" width= "90"><img id="'.$sufijo.'visualizar_'.$record['idObjEst'].'"align= "middle" src= "./img/grids/view.png" width= "25" height= "25" alt= "Visualizar"/></td></tr>';  
                    echo $rows; //Se envia el codigo HTML generado.
                    $count_row = $count_row + 1; //Se incrementa el contador de filas.
                    $record = @mysql_fetch_array($dataset,MYSQLI_ASSOC);
                    }
                
            echo '<tr class= "dgTotRowsTR"><td alignt= "left" colspan= 6"></td></tr>';
            echo '<tr class= "dgPagRow"><td align= "left" colspan= "6">Visualizando ' .($count_row-1). ' registros</td></tr>';
            echo '</table>';
            echo '</div>';
            }

    function dgCabeceras($dataset,$titulo)
        {
            /*
             * Esta función crea el codigo HTML correspondiente a la parte de la cabecera de datos
             * obtenida en la consulta de datos en modo de una tabla.
             */
        
            global $sufijo; //Acceso a la variable de sufijo.
            $columns='<th style="display:none">';
        
            $field = mysqli_fetch_field($dataset);
            $columns= $columns .$field->name."</th>";
            $field = mysqli_fetch_field($dataset);
            $display = 1;
        
            while ($field) 
                {                
                    /*Para cada elemento de la colección de nombres de campos,
                     *se crea la etiqueta correspondiente <TH> 
                     */
                    $columns = $columns. '<th>'.$field->name.'</th>';                                      
                    $field = mysqli_fetch_field($dataset);
                    }
                                                
            echo '<div id= "dgDiv" class= "dgMainDiv">';        
            echo '      <table class="dgTable">'; //Se declara el codigo HTML para la tabla.
            echo '          <tr align= "center"><td colspan= 6 class= "dgHeader">'.$titulo.'</td></tr>';
            echo '          <tr class="dgTitles">'.$columns.'<th></th></tr>'; //Se envia el codigo HTML de la fila de cabecera.
            }

    function constructor($dataset)
        {        
            /* Esta función se encarga de crear el contenido HTML de la pagina
             * tal como lo visualizara el usuario en el navegador.
             */
            echo'
                    <html>
                        <link rel= "stylesheet" href= "./css/dgstyle.css"></style>
                        <head>          
                        </head>
                        <body>
                        <center>';
        
                        dgCabeceras($dataset,'Objetivos Estrategicos');//Funcion para crear la cabecera de columnas de datos.
                        dgDatos($dataset); //Funcion para crear las filas de datos de la consulta.
                    
            echo'       </center>';
            echo'
                        </body>
                    </html>           
                ';
            }

    constructor($dataset); //Llamada a la funcion principal de la pagina.
?>