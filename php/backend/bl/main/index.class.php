<?php
/*
 * Prototipo v1.0.0 Software base para desarrollo de sistemas.
 * PHP v5
 * Autor: Prof. Jesus Antonio Peyrano Luna <antonio.peyrano@live.com.mx>
 * Nota aclaratoria: Este programa se distribuye bajo los terminos y disposiciones
 * definidos en la GPL v3.0, debidamente incluidos en el repositorio original.
 * Cualquier copia y/o redistribucion del presente, debe hacerse con una copia
 * adjunta de la licencia en todo momento.
 * Licencia: http://www.gnu.org/copyleft/lesser.html GNU Lesser General Public License
 */    
    class index
        {
            /*
             * Esta clase contiene los atributos y procedimientos para la creacion de la interfaz
             * principal del sistema.
             */            
            public function __construct()
                {
                    /*
                     * Declaracion de constructor de clase (VACIO)
                     */
                    }
                    
            public function headItem($id, $onClick, $imgURL, $caption)
                {
                    /*
                     * Esta funcion genera la linea HTML que corresponde a un elemento de la lista de
                     * menu en pantalla.
                     */
                    
                    $item='<li id="'.$id.'"><a href="#" class="desplegable" onclick="'.$onClick.'"><img onmouseover="bigImg(this)" onmouseout="normalImg(this)" src="'.$imgURL.'" width="35" height="35">'.$caption.'</a>';
                    
                    return $item;
                    }

            public function bodyItem($id, $onClick, $imgURL, $caption)
                {
                    /*
                     * Esta funcion genera la linea HTML que corresponde a un elemento de la lista de
                     * menu en pantalla.
                     */
                    
                     $item='<li id="'.$id.'"><a href="#" onclick="'.$onClick.'"><img onmouseover="bigImg(this)" onmouseout="normalImg(this)" src="'.$imgURL.'" width="35" height="35">'.$caption.'</a></li>';
                     
                     return $item;
                    }

            public function setProfile()
                {
                    /*
                     * Esta funcion retorna los datos del perfil del usuario para alimentar
                     * la interfaz, solo con fines visuales.
                     */
                    if(!isset($_SESSION))
                        {
                            //En caso de no existir el array de variables, se infiere que la sesion no fue iniciada.
                            session_name('phoenix');
                            session_start();
                            }
                    
                    if(isset($_SESSION['usuario']))
                        {
                            //Si se ha inicializado previamente una sesion.
                            $DIV = '<table class="profileUser">
                                        <tr><td>Bienvenido </td><td>'.$_SESSION['usuario'].'</td></tr>
                                    </table>';
                            }
                    else
                        {
                            //En caso contrario se carga un perfil vacio.
                            $DIV = '';
                            }
                    
                    return $DIV;
                    }
                                        
            private function drawMenu()
                {
                    /*
                     * Esta función dibuja el menu de operaciones de la interfaz principal.
                     */
                                             
                    $menuBody = '<div id="menu-lateral">
                                    <ul class="navegador">'.
                                        $this->headItem("item-cabecera-01", "", "./img/menu/config.png", "Parametros Generales").
                                        '<ul class="subnavegador">'
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Configuraciones&lreq=1','escritorio');", "./img/menu/configsys.png", "Configuraciones")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Unidades&lreq=1','escritorio');", "./img/menu/unidades.png", "Unidades")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Colonias&lreq=1','escritorio');", "./img/menu/colonias.png", "Colonias")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Usuarios&lreq=1','escritorio');", "./img/menu/usuarios.png", "Usuarios")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Empleados&lreq=1','escritorio');", "./img/menu/empleados.png", "Empleados")                                            
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Clientes&lreq=1','escritorio');", "./img/menu/clientes.png", "Clientes")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Entidades&lreq=1','escritorio');", "./img/menu/entidades.png", "Entidades")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Vehiculos&lreq=1','escritorio');", "./img/menu/vehiculos.png", "Vehiculos")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Procesos&lreq=1','escritorio');", "./img/menu/procesos.png", "Procesos")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Indicadores&lreq=1','escritorio');", "./img/menu/indicadores.png", "Indicadores")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Puestos&lreq=1','escritorio');", "./img/menu/puestos.png", "Puestos")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Gasolina&lreq=1','escritorio');", "./img/menu/gasolina.png", "Gasolina").
                                    '</ul></li></ul>'.
                                    '<ul class="navegador">'.
                                    $this->headItem("item-cabecera-01", "", "./img/menu/sgc.png", "Sistema para Gestion de Calidad").
                                    '<ul class="subnavegador">'
                                        .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Fichas de Proceso&lreq=1','escritorio');", "./img/menu/fproceso.png", "Fichas de Proceso")
                                        .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Planes RSGR&lreq=1','escritorio');", "./img/menu/rsgr.png", "Planes RSGR")
                                        .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=No Conformidades&lreq=1','escritorio');", "./img/menu/noconforme.png", "No Conformidades").
                                        '</ul></li></ul>'.                                    
                                    '<ul class="navegador">'.
                                        $this->headItem("item-cabecera-01", "", "./img/menu/paramplan.png", "Parametros de planeacion").
                                        '<ul class="subnavegador">'
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Objetivo Estrategico&lreq=1','escritorio');", "./img/menu/objest.png", "Obj. Estrategico")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Objetivo Operativo&lreq=1','escritorio');", "./img/menu/objope.png", "Obj. Operativo")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Estrategia Operativa&lreq=1','escritorio');", "./img/menu/estope.png", "Est. Operativa")
                                            .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Programas&lreq=1','escritorio');", "./img/menu/programas.png", "Programas").
                                    '</ul></li></ul>'.
                                    '<ul class="navegador">'.
                                    $this->headItem("item-cabecera-01", "", "./img/menu/foda.gif", "FODA").
                                    '<ul class="subnavegador">'
                                        .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Cedulas&lreq=1','escritorio');", "./img/menu/cedula.png", "Cedulas")
                                        .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Factores&lreq=1','escritorio');", "./img/menu/factores.png", "Factores")
                                        .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Escalas&lreq=1','escritorio');", "./img/menu/escala.png", "Escalas")
                                        .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Evaluaciones&lreq=1','escritorio');", "./img/menu/evaluacion.png", "Evaluaciones").
                                    '</ul></li></ul>'.
                                    '<ul class="navegador">'.
                                    $this->headItem("item-cabecera-01", "", "./img/menu/operaciones.png", "Operaciones").
                                    '<ul class="subnavegador">'
                                        .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Consumo de Gasolina&lreq=1','escritorio');", "./img/menu/vehconsumo.png", "Consumo de Gasolina")
                                        .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Consulta de Planeacion&lreq=1','escritorio');", "./img/menu/planeacion.png", "Consulta de Planeacion")
                                        .$this->bodyItem("item-cuerpo-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Resultados FODA&lreq=1','escritorio');", "./img/menu/resfoda.png", "Resultados FODA").
                                        '</ul></li></ul>'.                                                                                                                    
                                    '<ul class="navegador">'.
                                        $this->headItem("item-cabecera-01", "cargar('./php/backend/bl/main/cargador.class.php','?modulo=Graficas&lreq=1','escritorio');", "./img/menu/graficas.png", "Graficas").
                                        $this->headItem("item-cabecera-01", "window.open('./documentacion/Manual.pdf','Manual de Usuario', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, width=800, height=600, top=0, left=100')","./img/menu/manual.png", "Manual de Usuario").
                                        $this->headItem("item-cabecera-01", "", "./img/menu/contacto.png", "Contacto").
                                        $this->headItem("item-cabecera-03", "validarUsuario('./php/backend/bl/main/logout.php','','escritorio');", "./img/menu/logout.png", "Cerrar Sesion").                                        
                                    '</ul>
                                    <br>
                                    <div id= "profile" class="infousuario">'
                                        .$this->setProfile().
                                    '</div>
                                </div>
                                ';
                         
                        return $menuBody;
                    }                    

            private function HTMLBody()
                {
                    /*
                     * Esta funcion contiene la informaci�n a incluir en el cuerpo del html.
                     */
                    $body = '<div id= "Contenedor" class= "contenedor">'.
                            $this->drawMenu()
                                .'<div id="escritorio" class="contenedor-principal">
                                    <div class="area-deslizar"></div>
                                        <a href="#" data-toggle=".contenedor" id="menu-lateral-toggle">
                                            <img src="./img/menu/menu.png" id="menu-icono" alt="Menu" height="32" width="32" title="Menu">
                                        </a>
                                    </div>                                    
                                </div>
                                <section class="contenedor-seccion">
                                </section>';
                    return $body;
                    }                    

            private function HTMLHead()
                {
                    /*
                     * Esta funcion contiene la informaci�n a incluir en la cabecera del html.
                     */
                    $head = '<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
                            <link rel="stylesheet" href="./css/menuStyle.css"></style>
                            <link rel="stylesheet" href="./css/divLogin.css"></style>
                            <link rel="stylesheet" href="./css/jssor.css"></style>
                            <link rel="stylesheet" href="./css/queryStyle.css"></style>
                            <link rel="stylesheet" href="./css/dgstyle.css"></style>
                            <link rel="stylesheet" href="./css/notificaciones.css"></style>
                            <link rel="stylesheet" href="./css/operativo.css"></style>
                            <link rel="stylesheet" href="./css/captcha.css"></style>
                            <link rel="stylesheet" href="./css/bootstrap.min.css"/></style>
                            <link rel="stylesheet" href="./css/jquery.jscrollpane.css"/></style>                                                   
                            <link rel="icon" type="image/png" href="./img/icologo.png" />
                            <title>Phoenix</title>
                            <script type="text/javascript" src="./js/jquery/jquery-1.9.1.js"></script>
                            <script type="text/javascript" src="./js/jquery/jquery.jscrollpane.min.js"></script>
                            <script type="text/javascript" src="./js/jquery/jquery-1.9.1.min.js"></script>
                            <script type="text/javascript" src="./js/bootstrap/bootstrap.min.js" charset="ISO-8859-1"></script>
                            <script type="text/javascript" src="./js/bootstrap/bootbox.js" charset="ISO-8859-1"></script>
                            <script type="text/javascript" src="./js/bootstrap/bootbox.min.js" charset="ISO-8859-1"></script>                            
                            <script type="text/javascript" src="./js/main/jsindex.js" charset="ISO-8859-1"></script>
                            <script type="text/javascript" src="./js/main/jslogin.js" charset="ISO-8859-1"></script>
                            <script type="text/javascript" src="./js/usuarios/jsusuarios.js" charset="ISO-8859-1"></script>
                            <script type="text/javascript" src="./js/configuracion/jsconfiguracion.js"></script>
                            <script type="text/javascript" src="./js/puestos/jspuestos.js"></script> 
                            <script type="text/javascript" src="./js/empleados/jsempleados.js"></script>
                            <script type="text/javascript" src="./js/clientes/jsclientes.js"></script>
                            <script type="text/javascript" src="./js/colonias/jscolonias.js"></script>
                            <script type="text/javascript" src="./js/entidades/jsentidades.js"></script>
                            <script type="text/javascript" src="./js/vehiculos/jsvehiculos.js"></script>
                            <script type="text/javascript" src="./js/gasolina/jsgasolina.js"></script>
                            <script type="text/javascript" src="./js/procesos/jsprocesos.js"></script>
                            <script type="text/javascript" src="./js/indicadores/jsindicadores.js"></script>
                            <script type="text/javascript" src="./js/unidades/jsunidades.js"></script>
                            <script type="text/javascript" src="./js/objest/jsobjest.js"></script>
                            <script type="text/javascript" src="./js/objope/jsobjope.js"></script>
                            <script type="text/javascript" src="./js/estope/jsestope.js"></script>
                            <script type="text/javascript" src="./js/programas/jsprogramas.js"></script>
                            <script type="text/javascript" src="./js/actividades/jsactividades.js"></script>
                            <script type="text/javascript" src="./js/ejecuciones/jsejecuciones.js"></script>
                            <script type="text/javascript" src="./js/evidencias/jsevidencias.js"></script>                                
                            <script type="text/javascript" src="./js/consulplan/jsconsulplan.js"></script>
                            <script type="text/javascript" src="./js/gasconsumo/jsgasconsumo.js"></script>
                            <script type="text/javascript" src="./js/graficas/jsgraficas.js"></script>
                            <script type="text/javascript" src="./js/fichas/jsfichas.js"></script>
                            <script type="text/javascript" src="./js/planesRSGR/jsplanesRSGR.js"></script>
                            <script type="text/javascript" src="./js/noconformidades/noconformidades.js"></script>
                            <script type="text/javascript" src="./js/instrumentos/cedulas/cedulas.js"></script>
                            <script type="text/javascript" src="./js/instrumentos/factores/factores.js"></script>
                            <script type="text/javascript" src="./js/instrumentos/escalas/escalas.js"></script>
                            <script type="text/javascript" src="./js/instrumentos/evaluaciones/evaluaciones.js"></script>
                            <script type="text/javascript" src="./js/foda/resultados/jsresfoda.js"></script>';
                    return $head;
                    }                    

            public function drawUI()
                {
                    /*
                     * Esta funcion dibuja los elementos en pantalla que corresponden a la interfaz.
                     */
                    $HTML = '<html lang="es-Es" xmlns="http://www.w3.org/1999/xhtml">
                                <head>'.
                                    $this->HTMLHead()
                                .'</head>
                                <body>'.
                                    $this->HTMLBody()
                                    .'<script type="text/javascript">
                                        document.oncontextmenu = function(){return true;}
                                        jQuery(document).ready(function ()
                                            {
                                                if (!jQuery.browser.webkit)
                                                    {
                                                        jQuery(\'.contenedor\').jScrollPane();
                                                        }
                                                });
                                    </script>
                                </body>
                            </html>';
                    return $HTML;
                    }                    
            }
?>