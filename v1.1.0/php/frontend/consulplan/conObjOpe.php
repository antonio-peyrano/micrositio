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

    header('Content-Type: text/html; charset=iso-8859-1'); //Forzar la codificación a ISO-8859-1.
    
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/dal/conectividad.class.php"); //Se carga la referencia a la clase de conectividad.
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/config.php"); //Se carga la referencia de los atributos de configuración.

    global $username, $password, $servername, $dbname;
    
    $condicionales = ''; //Variable de control de condiciones de clausula select.
    $sufijo= "coo_"; //Variable de control de sufijo de identificadores.
    $idObjEst = 0;
    
    $Optimo = 0; //El valor de limite superior para la eficacia.
    $Tolerable = 0; //El valor de limite inferior para la eficacia.
    $Periodo = ''; //El valor del periodo a visualizar.
    $rowBanderas = '';
    
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
    
    function cargarBanderas($parametro, $mes)
        {
            /*
             * Esta función carga la parte grafica que corresponde a las banderas de desempeño.
             */
            global $Periodo, $Optimo, $Tolerable, $rowBanderas;
            
            if($parametro>=$Optimo)
                {
                    //Si el parametro recibido esta en el rango de medición optima.
                    $rowBanderas.='<td><center><img id="optimo_'.$mes.'"align= "middle" src= "./img/banderas/optimo.png" width= "25" height= "25" alt= "Optimo" data-toggle="tooltip" title="Eficacia >='.$Optimo.'%"/></center></td>';
                    } 
                    
            if(($parametro>=$Tolerable)&&($parametro<$Optimo))
                {
                    //Si el parametro recibido esta dentro del rango tolerable.
                    $rowBanderas.='<td><center><img id="riesgo_'.$mes.'"align= "middle" src= "./img/banderas/riesgo.png" width= "25" height= "25" alt= "Riesgo" data-toggle="tooltip" title="Eficacia >='.$Tolerable.'%"/></center></td>';                    
                    }
                    
            if($parametro<$Tolerable)
                {
                    //Si el parametro recibido esta por debajo de lo tolerable.
                    $rowBanderas.='<td><center><img id="falla_'.$mes.'"align= "middle" src= "./img/banderas/falla.png" width= "25" height= "25" alt= "Falla" data-toggle="tooltip" title="Eficacia <'.$Tolerable.'%"/></center></td>';                    
                    }             
            }
                
    if(isset($_GET['idobjest']))
        {
            /*
             * Si el archivo ha sido llamado como una referencia con parametros.
             */
            $condicionales= 'idObjEst LIKE \'%'.$_GET['idobjest'].'%\'';
            $idObjEst = $_GET['idobjest'];
            }
       
    $objConexion= new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
    obtenerPerfilSys(); //Llamada a la función de obtención de parametros.
    
    if($condicionales=="")
        {
            //Cargar la cadena de consulta por default.
            $consulta= "SELECT idObjOpe, Nomenclatura, ObjOpe AS Objetivo, Periodo, Status FROM catObjOpe WHERE Status=0 AND Periodo=".$Periodo; //Se establece el modelo de consulta de datos.
            }  
    else 
        {
            //En caso de contar con el criterio de filtrado.
            $consulta= "SELECT idObjOpe, Nomenclatura, ObjOpe AS Objetivo, Periodo, Status FROM catObjOpe WHERE Status=0 AND " .$condicionales. " AND Periodo=".$Periodo; //Se establece el modelo de consulta de datos.
            }  
    
    $dataset = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
        
    $column_names= ""; //Variable de control para los nombres de columnas a mostrarse en el grid.
    
    function dgDatos($dataset)
        {
            /*
             * Esta función crea el codigo HTML correspondiente a la parte de información
             * obtenida en la consulta de datos en modo de una tabla.
             */
            global $sufijo; //Acceso a la variable de sufijo.
        
            $count_row = 1;//Se inicializa el contador de filas.
            $record = @mysql_fetch_array($dataset,MYSQLI_ASSOC);
            
            if(!empty($dataset))
                {
                            
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
                        
                            $rows = $rows.'<td id="reg_'.$record['idObjOpe'].'" width= "90"><img id="'.$sufijo.'visualizar_'.$record['idObjOpe'].'"align= "middle" src= "./img/grids/view.png" width= "25" height= "25" alt= "Visualizar"/></td></tr>';
                            echo $rows; //Se envia el codigo HTML generado.
                            $count_row = $count_row + 1; //Se incrementa el contador de filas.
                            $record = @mysql_fetch_array($dataset,MYSQLI_ASSOC);
                            }
                    }
                    
            echo '<tr class= "dgTotRowsTR"><td alignt= "left" colspan= 7"></td></tr>';
            echo '<tr class= "dgPagRow"><td align= "left" colspan= "7">Visualizando ' .($count_row-1). ' registros</td></tr>';
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

            if(!empty($dataset))
                {   

                    $field = mysqli_fetch_field($dataset);
                    $columns= $columns .$field->name."</th>";
                    $field = mysqli_fetch_field($dataset);
        
                    while ($field) 
                        {                
                            /*Para cada elemento de la colección de nombres de campos,
                             *se crea la etiqueta correspondiente <TH> 
                             */
                            $columns = $columns. "<th>".$field->name."</th>";
                            $field = mysqli_fetch_field($dataset);
                            }
                    }        
                   
            echo '<div id= "dgDiv" class= "dgMainDiv">';        
            echo '      <table class="dgTable">'; //Se declara el codigo HTML para la tabla.
            echo '          <tr align= "center"><td colspan= 7 class= "dgHeader">'.$titulo.'</td></tr>';
            echo '          <tr class="dgTitles">'.$columns.'<th></th></tr>'; //Se envia el codigo HTML de la fila de cabecera.
            }

    function loadInfo($idRegistro, $titulo)        
        {
            /*
             * Esta función carga los datos correspondientes al registro Padre, generando
             * la UI que visualiza la información.
             */
             global $username, $password, $servername, $dbname;
             global $idObjEst, $rowBanderas;
             
             /*
              * Obteniendo la información asociada al padre.
              */
             $objConexion= new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
             $consulta= "SELECT idObjEst AS ID, Nomenclatura, ObjEst AS Objetivo, Periodo, Status FROM catObjEst WHERE Status=0 AND idObjEst=".$idRegistro; //Se establece el modelo de consulta de datos.
             $dsPadre = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
             $dsCampos = $dsPadre;
             $Registro = @mysql_fetch_array($dsPadre,MYSQLI_ASSOC); //Se obtiene el registro que coincide con el criterio proporcionado.
                
             if($Registro)
                {
                    /*
                     * Si existe información para ser procesada.
                     */
                    $field = mysqli_fetch_field($dsCampos);
                    echo'<div id= "headinfo" style= "display:none">
                            <input type="text" id="idObjEst" value='.$idObjEst.'></input>
                         </div>';                    
                    echo'<div id= "infoPadre">
                            <table class="dgTable">
                                <th class= "dgHeader" colspan= 2>'.$titulo.'</th>';
                                while($field)
                                    {    
                    echo'               <tr colspan= 2><td class="dgRowsaltTR">'.$field->name.'</td><td class="dgRowsnormTR">'.$Registro[$field->name].'</td></tr>';
                                        $field = mysqli_fetch_field($dsCampos);
                                        }
                    echo'               <tr class= "dgHeader"><td alignt= "left" colspan= 2"><a href="#" onclick="cargar(\'./php/frontend/consulplan/conObjEst.php\',\'?idobjest='.$idObjEst.'\',\'escritorio\');"><img align= "right" src= "./img/grids/volver.png" width= "25" height= "25" alt= "Volver" id= "btnVolver"/></a></td></tr>
                            </table></div><br>';
                    }
            /*
             * Obteniendo la información asociada de la programación en planeación.
             */                    
             $objConexion= new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
             $consulta= "SELECT  Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre, Diciembre FROM opProgOE WHERE Status=0 AND idObjEst=".$idRegistro; //Se establece el modelo de consulta de datos.
             $dsPadre = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
             $dsTitulos = $dsPadre;
             $Registro = @mysql_fetch_array($dsPadre,MYSQLI_ASSOC); //Se obtiene el registro que coincide con el criterio proporcionado.
             
             if($Registro)
                {
                    /*
                     * Si existe información para ser procesada.
                     */
                    $rowdata='<table class="queryTable"><tr><th colspan= "14" class= "queryHeader">Datos de la Programacion</th></tr>';
                    $field = mysqli_fetch_field($dsTitulos);
                    $rowdata.='<tr><td></td>';
                    
                    while($field)
                        {
                            $rowdata.= '<td class= "queryTitles">'.$field->name.'</td>';
                            $field = mysqli_fetch_field($dsTitulos);
                            }
                    
                    $rowdata.='<td class= "queryTitles">Total %</td>';
                            
                    $consulta= "SELECT  Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre, Diciembre FROM opProgOE WHERE Status=0 AND idObjEst=".$idRegistro; //Se establece el modelo de consulta de datos.
                    $dsPadre = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
                    $dsCampos = $dsPadre;
                                                
                    $field = mysqli_fetch_field($dsCampos);
                    $rowdata.='<tr><td class= "queryTitles">Programado</td>';
                    $count=1;
                    
                    $totProgramado=0;
                    
                    while($field)
                        {
                            $rowdata.= '<td class="dgRowsnormTR"><input type="text" id="pr_'.$count.'" size="4" value="'.$Registro[$field->name].'"></input></td>';
                            $totProgramado += $Registro[$field->name];
                            $field = mysqli_fetch_field($dsCampos);
                            $count += 1;          
                            }
                    $rowdata.='<td class="dgRowsnormTR"><input type="text" id="pr_'.$count.'" size="4" value="'.$totProgramado.'"></input></td></tr>';
                    echo $rowdata;
                    }               
            /*
             * Obteniendo la información asociada de la ejecución en planeación.
             */
            $objConexion= new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
            $consulta= "SELECT Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre, Diciembre FROM opEjecOE WHERE Status=0 AND idObjEst=".$idRegistro; //Se establece el modelo de consulta de datos.
            $dsPadre = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
            $dsCampos = $dsPadre;
            $Registro = @mysql_fetch_array($dsPadre,MYSQLI_ASSOC); //Se obtiene el registro que coincide con el criterio proporcionado.
                     
            if($Registro)
                {
                    /*
                     * Si existe información para ser procesada.
                     */
                    $field = mysqli_fetch_field($dsCampos);
                    $rowdata='<tr><td class= "queryTitles">Ejecutado</td>';
                    $count=1;
                    $totEjecutado=0;
                    
                    while($field)
                        {
                            $rowdata.= '<td class="dgRowsnormTR"><input type="text" id="ej_'.$count.'" size="4" value="'.$Registro[$field->name].'"></input></td>';
                            $totEjecutado += $Registro[$field->name];
                            $field = mysqli_fetch_field($dsCampos);
                            $count += 1;
                            }
                            
                    $rowdata.='<td class="dgRowsnormTR"><input type="text" id="ej_'.$count.'" size="4" value="'.$totEjecutado.'"></input></td></tr>';
                    echo $rowdata;
                    }
                    
            /*
             * Obteniendo la información asociada de la eficacia en planeación.
             */
            $objConexion= new mySQL_conexion($username, $password, $servername, $dbname); //Se crea el objeto de la clase a instanciar.
            $consulta= "SELECT Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre, Diciembre FROM opEficOE WHERE Status=0 AND idObjEst=".$idRegistro; //Se establece el modelo de consulta de datos.
            $dsPadre = $objConexion -> conectar($consulta); //Se ejecuta la consulta.
            $dsCampos = $dsPadre;
            $Registro = @mysql_fetch_array($dsPadre,MYSQLI_ASSOC); //Se obtiene el registro que coincide con el criterio proporcionado.
                     
            if($Registro)
                {
                    /*
                     * Si existe información para ser procesada.
                     */
                    $field = mysqli_fetch_field($dsCampos);
                    $rowdata='<tr><td class= "queryTitles">Eficacia</td>';
                    $count=1;
                    $totEficacia=0;
                    
                    while($field)
                        {
                            $rowdata.= '<td class="dgRowsnormTR"><input type="text" id="efic_'.$count.'" size="4" value="'.$Registro[$field->name].'"></input></td>';
                            cargarBanderas($Registro[$field->name], $count);//Se genera la fila de banderas.
                            $totEficacia += $Registro[$field->name];
                            $field = mysqli_fetch_field($dsCampos);
                            $count += 1;
                            }
                    $totEficacia=$totEficacia/12.00;        
                    $rowdata.='<td class="dgRowsnormTR"><input type="text" id="efic_'.$count.'" size="4" value="'.$totEficacia.'"></input></td></tr>';
                    echo $rowdata;
                    echo '<tr><td class= "queryTitles">Estado</td>'.$rowBanderas.'</tr></table><br>';
                    }                                                                        
            }
                
    function constructor($dataset)
        {        
            /* Esta función se encarga de crear el contenido HTML de la pagina
             * tal como lo visualizara el usuario en el navegador.
             */
            global $idObjEst;
        
            echo'
                    <html>
                        <link rel= "stylesheet" href= "./css/dgstyle.css"></style>
                        <link rel= "stylesheet" href= "./css/queryStyle.css"></style>
                        <head>          
                        </head>
                        <body>';
            echo'       <center>'; 
                                   
                        loadInfo($idObjEst, 'Información del Objetivo Estrategico');
                        dgCabeceras($dataset,'Objetivos Operativos');//Funcion para crear la cabecera de columnas de datos.
                        dgDatos($dataset); //Funcion para crear las filas de datos de la consulta.
                        
            echo'       <center>';
            echo'
                        </body>
                    </html>           
                ';
            }
            
    constructor($dataset); //Llamada a la funcion principal de la pagina.
?>

