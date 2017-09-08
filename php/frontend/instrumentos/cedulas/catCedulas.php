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
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/dal/conectividad.class.php"); //Se carga la referencia a la clase de conectividad.
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/config.php"); //Se carga la referencia de los atributos de configuracion.
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/dal/grid.class.php");
    include_once ($_SERVER['DOCUMENT_ROOT']."/phoenix/php/backend/bl/instrumentos/cedulas/cedulas.class.php");
    
    class catCedulas
        {
            /*
             * Esta clase contiene los atributos y procedimientos para la creacion de la interfaz
             * del catalogo de cedulas.
             */
           
            private $idEntidad = NULL;
            private $idCedula = NULL;
            private $Folio = "";
            private $Fecha = "";
            private $Inicio = 0;
            private $Pagina = 1;
            private $DisplayRow = 10;
                       
            public function __construct()
                {
                    /*
                     * Esta funcion constructor, valida los datos recibidos por medio
                     * de la URL.
                     */
                    if(isset($_GET['busfolio']))
                        {
                            $this->Folio = $_GET['busfolio'];
                            }
                            
                    if(isset($_GET['busidentidad']))
                        {
                            $this->idEntidad = $_GET['busidentidad']; 
                            }

                    if(isset($_GET['busfecha']))
                        {
                            $this->Fecha = $_GET['busfecha'];
                            }
                                                        
                    if(isset($_GET['pagina']))
                        {
                            //Se proporciona referencia de pagina a mostrar.
                            $this->Pagina = $_GET['pagina'];
                            $this->Inicio = ($this->Pagina-1)*$this->DisplayRow;
                            }
                    else
                        {
                            //En caso de no ser proporcionada la pagina.
                            $this->Inicio = 0;
                            $this->Pagina = 1;
                            }                                                        
                    }

            public function drawUI()
                {
                    /*
                     * Esta funcion crea el codigo HTML de la interfaz grafica
                     * del catalogo de cedulas.
                     */
                    global $username, $password, $servername, $dbname;
                    
                    $objConexion = new mySQL_conexion($username, $password, $servername, $dbname);
                    $objCedulas = new cedulas();

                    $objCedulas->setCatParametros($this->Folio, $this->Fecha, $this->idEntidad);                    
                    $Consulta = $objCedulas->getConsulta().$objCedulas->evaluaCondicion()." limit ".$this->Inicio.",".$this->DisplayRow;

                    $dsCedulas = $objConexion -> conectar($Consulta); //Se ejecuta la consulta.
                    $objGridCedulas = new myGrid($dsCedulas, 'Catalogo de Cedulas', $objCedulas->getSufijo(), 'idCedula');

                    echo'
                            <html>
                                <head>
                                </head>
                                <body>';
                                    echo $objGridCedulas->headerTable();
                                    echo $objGridCedulas->bodyTable();                    
                    echo'
                                </body>
                            </html>';                    
                    }                    
            }
            
    $objCatCedulas = new catCedulas();
    $objCatCedulas->drawUI();            
?>