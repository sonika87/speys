<%--  
    Document   : ExamenCatell
    d on : 14/07/2014, 02:44:43 PM
    Author     : Julio
--%>

<%@page import="java.util.List"%>
<%@page import="com.speys.Test.Bean.PeguntaExamenBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <%
            int A = Integer.parseInt(request.getAttribute("A").toString());
            int B = Integer.parseInt(request.getAttribute("B").toString());
            int C = Integer.parseInt(request.getAttribute("C").toString());
            int E = Integer.parseInt(request.getAttribute("E").toString());
            int F = Integer.parseInt(request.getAttribute("F").toString());
            int G = Integer.parseInt(request.getAttribute("G").toString());
            int H = Integer.parseInt(request.getAttribute("H").toString());
            int I = Integer.parseInt(request.getAttribute("I").toString());
            int L = Integer.parseInt(request.getAttribute("L").toString());
            int M = Integer.parseInt(request.getAttribute("M").toString());
            int N = Integer.parseInt(request.getAttribute("N").toString());
            int O = Integer.parseInt(request.getAttribute("O").toString());
            int Q1 = Integer.parseInt(request.getAttribute("Q1").toString());
            int Q2 = Integer.parseInt(request.getAttribute("Q2").toString());
            int Q3 = Integer.parseInt(request.getAttribute("Q3").toString());
            int Q4 = Integer.parseInt(request.getAttribute("Q4").toString());
        %>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <!-- Apple devices fullscreen -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- Apple devices fullscreen -->
        <meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />

        <title>SPEYS</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <!-- Tagsinput -->
        <link rel="stylesheet" href="css/plugins/tagsinput/jquery.tagsinput.css">
        <!-- select2 -->
        <link rel="stylesheet" href="css/plugins/select2/select2.css">
        <!-- Theme CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Color CSS -->
        <link rel="stylesheet" href="css/themes.css">


        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>

        <!-- Nice Scroll -->
        <script src="js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- imagesLoaded -->
        <script src="js/plugins/imagesLoaded/jquery.imagesloaded.min.js"></script>
        <!-- jQuery UI -->
        <script src="js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>
        <!-- slimScroll -->
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- select2 -->
        <script src="js/plugins/select2/select2.min.js"></script>
        <!-- Bootbox -->
        <script src="js/plugins/bootbox/jquery.bootbox.js"></script>
        <!-- Bootbox -->
        <script src="js/plugins/form/jquery.form.min.js"></script>
        <!-- Validation -->
        <script src="js/plugins/validation/jquery.validate.min.js"></script>
        <script src="js/plugins/validation/additional-methods.min.js"></script>
        <!-- TagsInput -->
        <script src="js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
        <!-- Custom file upload -->
        <script src="js/plugins/fileupload/bootstrap-fileupload.min.js"></script>

        <!-- Theme framework -->
        <script src="js/eakroko.min.js"></script>
        <!-- Theme scripts -->
        <script src="js/application.min.js"></script>
        <!-- Just for demonstration -->
        <script src="js/demonstration.min.js"></script>

        <!--[if lte IE 9]>
                <script src="js/plugins/placeholder/jquery.placeholder.min.js"><>
                <script>
                        $(document).ready(function() {
                                $('input, textarea').placeholder();
                        });
                </script>
        <![endif]-->

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/favicon.ico" />
        <!-- Apple devices Homescreen icon -->
        <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-precomposed.png" />

    </head>
    <!--onbeforeunload="salir(event)"-->
    <body onbeforeunload="salir(event)">
        <div id="navigation">
            <div class="container-fluid">
                <a href="#" id="brand">SPEYS</a>
                <a href="#" class="toggle-nav" rel="tooltip" data-placement="bottom" title="Toggle navigation"><i class="icon-reorder"></i></a>
                <ul class='main-nav'>
                    <li>
                        <a href="jsp/Perfil.jsp">
                            <span>Inicio</span>
                        </a>
                    </li>	
                </ul>
                <div class="user">
                    <ul class="icon-nav">				
                        <li class='dropdown colo'>
                            <a href="#" class='dropdown-toggle' data-toggle="dropdown"><i class="icon-tint"></i></a>
                            <ul class="dropdown-menu pull-right theme-colors">
                                <li class="subtitle">
                                    Predefined colors
                                </li>
                                <li>
                                    <span class='red'></span>
                                    <span class='orange'></span>
                                    <span class='green'></span>
                                    <span class="brown"></span>
                                    <span class="blue"></span>
                                    <span class='lime'></span>
                                    <span class="teal"></span>
                                    <span class="purple"></span>
                                    <span class="pink"></span>
                                    <span class="magenta"></span>
                                    <span class="grey"></span>
                                    <span class="darkblue"></span>
                                    <span class="lightred"></span>
                                    <span class="lightgrey"></span>
                                    <span class="satblue"></span>
                                    <span class="satgreen"></span>
                                </li>
                            </ul>
                        </li>				
                    </ul>
                    <div class="dropdown">
                        <a href="#" class='dropdown-toggle' data-toggle="dropdown">María Barrera Cárdenas <img src="img/logo.png" alt=""></a>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="more-userprofile.html">Editar perfil</a>
                            </li>

                            <li>
                                <a href="login.html">Cerrar sesión</a>
                            </li>
                        </ul>
                    </div>	
                </div>
            </div>
        </div>
        <div class="container-fluid" id="content">

            <!--aqui -->
            <div id="left" disabled="true"> 
                <form action="search-results.html" method="GET" class='search-form'>
                    <div class="search-pane">
                        <input type="text" name="search" placeholder="Buscar paciente">
                        <button type="submit"><i class="icon-search"></i></button>
                    </div>
                </form>	
                <div style=" height:600px; overflow-y : scroll ; ">

                </div>
            </div>

            <div id="main">
                <div class="container-fluid">		
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box box-color box-bordered">
                                <div class="box-title">
                                    <h3>
                                        <i class="icon-user"></i>
                                        Resultados
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                    <div class="tab-content padding tab-content-inline tab-content-bottom">
                                        <div class="tab-pane active" id="profile">
                                            <form neme="formulario" id="formulario" action="/SPEYS/ExamenCatellServlet" class="form-horizontal" method="POST">
                                                <div class="row-fluid">

                                                    <div class="span10">
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/A.jpg" /></td><td height="35px" width="36px"><img <%if (A > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>AFABILIDAD</b></td><td width="100px"><b>Esten:<%=A%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (A > 5) {%>
                                                                        El individuo expresa marcada inclinación a trabajar con gente, disfruta del reconocimiento
                                                                        social, es participativo, le gusta formar grupos activos, disfrutan sus relaciones
                                                                        interpersonales, capaces de soportar Ia crítica, capaces de recordar nombres de personas
                                                                        pero son menos confiables en trabajos de precisión, en sus obligaciones son
                                                                        despreocupados. Aptos para desempeñar profesiones como: trabajo social, empresarios.
                                                                        <%} else {%>
                                                                        Es cauto en sus expresiones emocionales, intransigente y crítico, prefiere trabajar con
                                                                        cosas ó maquinaria por lo que suelen desempeñarse bien en actividades como
                                                                        electricistas, investigadores científicos es decir, en trabajos de precisión.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/B.jpg" /></td><td height="35px" width="36px"><img <%if (B > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>RAZONAMIENTO</b></td><td width="100px"><b>Esten:<%=B%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (B > 5) {%>
                                                                        Supuestamente personas más inteligentes son más morales, son perseverantes, con
                                                                        fuerza en el interés.
                                                                        <%} else {%>
                                                                        Esta escala nos sirve básicamente para elecciones vocacionales junto con otras escalas.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/C.jpg" /></td><td height="35px" width="36px"><img <%if (C > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>ESTABILIDAD</b></td><td width="100px"><b>Esten:<%=C%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (C > 5) {%>
                                                                        La persona se manifiesta capaz de ser dirigente, con mejor moral de grupo, pudiendo
                                                                        desempeñar puestos administrativos, pilotos de aeronaves o aeromozas, por ejemplo. Es
                                                                        decir, trabajos en los que se requiere ajustes súbitos por lo tanto también de fuerza del Yo
                                                                        adecuadas.
                                                                        <%} else {%>
                                                                        Son personas que fácilmente se molestan, inconformes con todo, incapaces de
                                                                        enfrentarse a la vida, pueden presentar fobias, somatizaciones, trastornos en el sueño,
                                                                        conducta histérica y obsesiva. En neuróticos se ha comprobado que también existe tono
                                                                        muscular pobre (hipotonía) y que durante su infancia presentó síntomas neuróticos los que
                                                                        aumentan, en el adulto, cuando hay un alejamiento del hogar.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/E.jpg" /></td><td height="35px" width="36px"><img <%if (E > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>DOMINANCIA</b></td><td width="100px"><b>Esten:<%=E%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (E > 5) {%>
                                                                        Interacción más efectiva, se sienten libres para participar, capaces de emitir críticas;
                                                                        obtienen puntuaciones altas los atletas, investigadores científicos, son personas con valor
                                                                        y audacia y se relaciona negativamente con éxitos escolares ya que la sumisión favorece,
                                                                        parece ser, este tipo de calificación en los exámenes.
                                                                        <%} else {%>
                                                                        Esta puntuación la obtienen personas que desempeñan funciones como granjeros
                                                                        cocineros, conserjes. Parece ser que está relacionada con la posición social, y la herencia.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/F.jpg" /></td><td height="35px" width="36px"><img <%if (F > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>ANIMACIÓN</b></td><td width="100px"><b>Esten:<%=F%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (F > 5) {%>
                                                                        Son personas que tuvieron un ambiente más fácil menos duro, actitud despreocupada.
                                                                        Entre neuróticos los más impulsivos presentan síntomas histéricos de conversión,
                                                                        anomalías sexuales; pueden ser líderes electos, aeromozas, gerente de ventas en una
                                                                        interacción grupal hace comentarios favorables al grupo, son bien aceptados y logran ser
                                                                        oradores eficientes.
                                                                        <%} else {%>
                                                                        Entre neuróticos suelen encontrarse síntomas como dolores de cabeza, irritabilidad,
                                                                        retardo por depresión, fobias y pesadillas, hay aumento de carga de preocupaciones. Con
                                                                        respecto a la ocupación que generalmente presentan son del tipo de administradores de
                                                                        universidades y físicos.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/G.jpg" /></td><td height="35px" width="36px"><img <%if (G > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>ATENCIÓN A LAS NORMAS</b></td><td width="100px"><b>Esten:<%=G%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (G > 5) {%>
                                                                        Hay parecido entre este factor y el C. Conducta autocontrolada, preocupación por otros,
                                                                        “hace lo mejor que sea posible”, fuerte inclusión en los problemas morales del bien y del
                                                                        mal, preocupación por estándares morales, tendencia que impulsa al ego y restringe al
                                                                        ello, es un control positivo, personas que actúan con propiedad, perseverantes, con
                                                                        muchos planes, con buena capacidad de concentración y muy cuidadoso en sus
                                                                        aseveraciones, prefiere relacionarse con gente eficiente presentan buena organización en
                                                                        pensamiento, son personas que pueden lograr el éxito.
                                                                        <%} else {%>
                                                                        Quienes suelen bajar la puntuación en esta escala con los psicópatas, criminales en
                                                                        general, personas que son indiferentes a las normas morales convencionales o también
                                                                        los radicales los que se apegan a su marco de referencia; también existe otro grupo de
                                                                        personas que bajan la puntuación, son aquellos que cumplen con su cometido basándose
                                                                        en la mayoría de un conjunto de criterios dentro de un grupo bien organizado.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/H.jpg" /></td><td height="35px" width="36px"><img <%if (H > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>ATREVIMIENTO</b></td><td width="100px"><b>Esten:<%=H%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (H > 5) {%>
                                                                        Son personas con tendencia a recordar temas emocionales, con ausencia de fatiga
                                                                        automática, según las investigaciones las personas con H+ son propensas a ataques al
                                                                        corazón, muestran poca inhibición ante la amenaza ambiental, fueron calificados de flojos
                                                                        durante su niñez, son insensibles en la interacción social, lo que afecta en las áreas
                                                                        sexual, emocional, situaciones de peligro. Generalmente los H+ son electos dirigentes, y
                                                                        se encuentra la H+ en aviadores, administradores en terapia de grupo puntuaron
                                                                        significativamente estos sujetos.
                                                                        <%} else {%>
                                                                        Son personas que bajo tensión pueden presentar desórdenes de tipo esquizoide, son
                                                                        propensas a la tuberculosis, úlceras etc. Se auto describen como muy tímidos, con
                                                                        sentimientos de inferioridad, lento, torpe en la expresión, no le gustan las relaciones
                                                                        interpersonales en grupos grandes, prefieren tener solamente uno o dos amigos. Estos
                                                                        individuos suelen tener gran actividad a nivel de sistema nervioso simpático por lo que
                                                                        suelen responder exageradamente a la “amenaza”.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/I.jpg" /></td><td height="35px" width="36px"><img <%if (I > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>SENSIBILIDAD</b></td><td width="100px"><b>Esten:<%=I%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (I > 5) {%>
                                                                        Son personas descritas como: fastidiosos, retrasan las decisiones del grupo, hacen
                                                                        observaciones de tipo moral, no les gusta las personas toscas, ni ocupaciones rudas, son
                                                                        románticos, parece ser que tuvieron una educación sobreprotectora, hogares indulgentes,
                                                                        dedicados a la cultura, entre estudiantes de I+ son fumadores.
                                                                        <%} else {%>
                                                                        Personas rudas, masculinas, maduras, prácticas, realistas, tienden a promover la
                                                                        solidaridad en el grupo. Entre estudiantes esta puntuación la presentan los no fumadores.
                                                                        Los electricistas, policías y mecánicos bajan la puntuación en esta escala, en su historia
                                                                        reportan pocas enfermedades e intervenciones quirúrgicas; en cambio sí hay
                                                                        antecedentes de que les gustan lo desempeñaron bien el atletismo y deportes.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/L.jpg" /></td><td height="35px" width="36px"><img <%if (L > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>VIGILANCIA</b></td><td width="100px"><b>Esten:<%=L%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (L > 5) {%>
                                                                        Provienen de un hogar paternal que admiró, donde había intereses intelectuales, son muy
                                                                        correctos en su conducta, desprecian lo mediocre, son escépticos de supuestos motivos
                                                                        idealistas en otros, solo dan crédito a gente prominente.
                                                                        <%} else {%>
                                                                        Sus características son de: tolerancia, relajamiento amigable y es muy probable que
                                                                        carezcan de ambición y empeño. Ocupacionalmente suelen ser consejeros escolares,
                                                                        trabajadores sociales.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/M.jpg" /></td><td height="35px" width="36px"><img <%if (M > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>ABSTRACIÓN</b></td><td width="100px"><b>Esten:<%=M%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (M > 5) {%>
                                                                        Son personas que cuando están en grupos tienden a sentirse inaceptados, pero
                                                                        despreocupados, hacen sugerencias que no pasan desapercibidas aunque esto no implica
                                                                        que sean aceptadas, muestran inconformidad con el grupo. M+ la pueden presentar
                                                                        investigadores, ejecutivos de planeación, editores, en general son personas muy creativas.
                                                                        <%} else {%>
                                                                        Ocupacionalmente estas puntuaciones la dan sujetos que se dedican a las actividades de
                                                                        tipo mecánico, realistas, pueden ser vendedores rutinarios. Los M- no son propensos a los
                                                                        accidentes automovilísticos.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/N.jpg" /></td><td height="35px" width="36px"><img <%if (N > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>PRIVACIDAD</b></td><td width="100px"><b>Esten:<%=N%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (N > 5) {%>
                                                                        El N+ nos ayuda a distinguir entre paranoide astuto y el esquizofrénico simplemente
                                                                        paranoide. Pueden ser personas ingeniosas, flexibles en su punto de vista, observador de
                                                                        modales, capaz de aceptar distintas alternativas, cumplen con las obligaciones sociales,
                                                                        es decir, hay un desarrollo intelectual-educacional. Suelen ser profesionistas hábiles,
                                                                        principalmente en trabajos de precisión como ingenieros, contadores, electricistas. N+ es
                                                                        un patrón adquirido en un ambiente promovedor de inseguridad y sospechas. Desde el
                                                                        punto de vista positivo, puede presentar un desarrollo intelectual y autosuficiente con
                                                                        deseos de sobrevivir.
                                                                        <%} else {%>
                                                                        Son personas ingenuas, muy directas y con una franqueza espontánea. Pueden
                                                                        desempeñar funciones de: sacerdotes, misioneros, enfermeras, técnicos psiquiátricos,
                                                                        cocineros. Los N- parecen tener éxito en la enseñanza, principalmente con niños. En las
                                                                        dinámicas de grupo los N- parecen obstaculizar los procesos grupales.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/O.jpg" /></td><td height="35px" width="36px"><img <%if (O > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>APRENSIÓN</b></td><td width="100px"><b>Esten:<%=O%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (O > 5) {%>
                                                                        Son personas que se sienten inestables, con fatiga por situaciones excitantes, con
                                                                        insomnio por preocupaciones, con sentimientos de ineptitud para enfrentarse a lo difícil de
                                                                        la vida, le gustan actividades en las que no haya ruido, son personas que tienen
                                                                        remordimiento, piadosas, con síntomas hipocondríacos y neurasténicos, fobias y
                                                                        ansiedades, se les considera tímidos porque no participan, tienen pocos amigos. Esta
                                                                        escala es muy importante, principalmente para detectar ansiedad alta en neuróticos,
                                                                        alcohólicos, psicóticos y principalmente esquizofrenia no paranoide.
                                                                        <%} else {%>
                                                                        Esta escala nos sirve para diferenciar entre los que externan su desajuste y los que tienen
                                                                        poca fuerza del YO, que sufren desajuste, pero sólo a nivel interno. La O - la presentan
                                                                        atletas profesionales, electricistas, mecánicos, enfermeros y gerentes de ventas.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/Q1.jpg" /></td><td height="35px" width="36px"><img <%if (Q1 > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>APERTURA AL CAMBIO</b></td><td width="100px"><b>Esten:<%=Q1%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (Q1 > 5) {%>
                                                                        Son personas mejor informadas, dispuestas a probar diferentes soluciones o problemas,
                                                                        son menos moralistas. Se debe tener cuidado para diferenciar entre estas características y
                                                                        una mera rebeldía, son personas que contribuyen en una discusión, critican.
                                                                        <%} else {%>
                                                                        Puntúan bajo en esta escala los policías, enfermeras y muchos grupos de trabajadores
                                                                        poco aptos, y en los más exitosos técnicos en psiquiatría. Q1- es parte del factor de
                                                                        segundo orden de Independencia.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/Q2.jpg" /></td><td height="35px" width="36px"><img <%if (Q2 > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>Titulo</b></td><td width="100px"><b>Esten:<%=Q2%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (Q2 > 5) {%>
                                                                        Son inconformes en la integración de grupos, tienden a ser rechazados, durante su niñez
                                                                        se asocian con pocos amigos, tienen éxito escolar.
                                                                        <%} else {%>
                                                                        Este es uno de los principales factores de la introversión QS1. Son personas que
                                                                        dependen de la aprobación social, son convencionales y van de acuerdo con la moda.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/Q3.jpg" /></td><td height="35px" width="36px"><img <%if (Q3 > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>PERFECCIONISMO</b></td><td width="100px"><b>Esten:<%=Q3%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (Q3 > 5) {%>
                                                                        Son personas que dan respuestas socialmente aceptadas, tienen buen control, son
                                                                        persistentes, previsores, son considerados con los demás, tienen conciencia y respeto por
                                                                        la reputación social, pueden ser elegidos como dirigentes, son productivos; respecto al
                                                                        trabajo pueden tener éxito en actividades mecánicas, matemáticas, actividades que
                                                                        requieran de objetividad, equilibrio y decisión como pilotos, administradores de
                                                                        universidades, electricistas, etc., tienen éxito escolar.
                                                                        <%} else {%>
                                                                        Esta escala es significativa porque se relaciona negativamente con el factor de segundo
                                                                        orden QS2 de ansiedad.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                        <div>
                                                            <table border ="1px" width="80%">
                                                                <tr><td rowspan="2" width="200px" height="260px"  ><img  src="img/Q4.jpg" /></td><td height="35px" width="36px"><img <%if (Q4 > 5) { %> src="img/plus.png"<%} else {%> src="img/minus.png" <%}%>/></td><td><b>DEPENDENCIA-INDEPENDENCIA</b></td><td width="100px"><b>Esten:<%=Q4%></b></td></tr>
                                                                <tr><td colspan="3" >
                                                                        <%if (Q4 > 5) {%>
                                                                        Son personas que no llegan a ser líderes, existe una insatisfacción interna. Funcionan bien
                                                                        en actividades que no requieren de autoexpresión pero que permiten críticas a las
                                                                        demandas ambientales, son personas propensas a accidentes. Se eleva este Q4 en
                                                                        maníaco-depresivos y en psicópatas; son pacientes con una libido no descargado y
                                                                        pobremente controlable, presentan una tensión sexual, se encuentran sobrecargados y el
                                                                        EGO no es capaz de descargar por lo que lo convierten en posibles perturbaciones
                                                                        psicosomáticos y ansiedad.
                                                                        <%} else {%>
                                                                        Logran sus metas, a diferencia de los Q4+ que no logran, aún y cuando tienen la misma
                                                                        capacidad intelectual.
                                                                        <%}%>
                                                                    </td></tr>
                                                            </table>
                                                        </div>
                                                                    <br>
                      <a href="jsp/Perfil.jsp">  <button type="button" class="btn btn-primary" >Aceptar</button></a>                                               
                                                    </div>
                                                </div>
                                            </form>
                                        </div>							
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>




