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
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/config.php"); //Se carga la referencia de los atributos de configuracion.
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/dal/grid.class.php"); //Se carga la referencia a la clase para manejo de rejillas de datos.
    
    global $username, $password, $servername, $dbname;

    $sufijo = "cpr_"; //Variable de control de sufijo de identificadores.
    $Inicio = 0;
    $Pagina = 0;
    $DisplayRow = 4;
    $totColumnas = 1;
    $Periodo = '';
    $condicionales = '';
    
    if(isset($_GET['pagina']))
        {
            //Se proporciona referencia de pagina a mostrar.
            $Pagina = $_GET['pagina'];
            $Inicio = ($Pagina-1)*$DisplayRow;
            }
    else
        {
            //En caso de no ser proporcionada la pagina.
            $Inicio = 0;
            $Pagina = 1;
            } 
    
    if(isset($_GET['idestope']))
        {
            /*
             * Si el archivo ha sido llamado como una referencia con parametros.
             */
            $condicionales = 'idEstOpe='.$_GET['idestope'];
            $idEstOpe = $_GET['idestope'];
            }
            
    if(isset($_GET['idobjope']))
        {
            /*
             * Si el archivo ha sido llamado como una referencia con parametros.
             */
            $idObjOpe = $_GET['idobjope'];
            }

    if(isset($_GET['idobjest']))
        {
            /*
             * Si el archivo ha sido llamado como una referencia con parametros.
             */
            $idObjEst = $_GET['idobjest'];
            }

    if(isset($_GET['periodo']))
        {
            /*
             * Si el archivo ha sido llamado como una referencia con parametros.
             */            
            $Periodo = $_GET['periodo'];
            }

    if($condicionales=="")
        {
            //Cargar la cadena de consulta por default.            
            $consulta= "SELECT idPrograma, Nomenclatura, Programa, Entidad, opProgramas.Status FROM (opProgramas INNER JOIN catEntidades ON catEntidades.idEntidad = opProgramas.idEntidad) WHERE opProgramas.Status=0 AND opProgramas.Periodo=".$Periodo." ORDER BY idPrograma"." limit ".$Inicio.",".$DisplayRow; //Se establece el modelo de consulta de datos.
            }  
    else 
        {
            //En caso de contar con el criterio de filtrado.
            $consulta= "SELECT idPrograma, Nomenclatura, Programa, Entidad, opProgramas.Status FROM (opProgramas INNER JOIN catEntidades ON catEntidades.idEntidad = opProgramas.idEntidad) WHERE opProgramas.Status=0 AND " .$condicionales. " AND opProgramas.Periodo=".$Periodo." ORDER BY idPrograma"." limit ".$Inicio.",".$DisplayRow; //Se establece el modelo de consulta de datos.
            }    
    
    $objConexion = new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
    $dataset = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
    
    function lstconstructor($dataset)
        {        
            /* Esta funcion se encarga de crear el contenido HTML de la pagina
             * tal como lo visualizara el usuario en el navegador.
             */
            global $idEstOpe, $idObjOpe, $idObjEst, $sufijo;

            $objGrid = new myGrid($dataset, 'Programas', $sufijo, 'idPrograma', false);
                    
            echo'
                    <html>
                        <head>          
                        </head>
                        <body>'; 
                                   
                        echo $objGrid->headerTable();
                        echo $objGrid->bodyTable();
                        
            echo'
                        </body>
                    </html>';
            }
            
    lstconstructor($dataset); //Llamada a la funcion principal de la pagina. 
    
?>