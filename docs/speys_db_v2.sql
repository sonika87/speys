-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2014 a las 21:57:55
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `speys`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_SPEYS_Consulta_Paciente`( PacienteId VARCHAR(45) )
BEGIN SELECT idPaciente,nombre,a_paterno,a_materno,sexo,edad,meses,dirección,telefono,estadoCivil,ciudadOrigen, correoElectronico,nivelEducativo,costoConsulta 
FROM pacientes WHERE idPaciente = PacienteId; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_SPEYS_Consulta_Pacientes`( )
BEGIN 
SELECT idPaciente,nombre,a_paterno,a_materno,sexo,edad,meses,dirección,telefono,estadoCivil,ciudadOrigen, correoElectronico,nivelEducativo,costoConsulta FROM pacientes; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_SPEYS_Elimina_Paciente`( PacienteId INTEGER )
BEGIN 
DELETE FROM pacientes WHERE idPaciente = PacienteId; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_SPEYS_SESION`( 
    #VARIABLES DE ENTRADA#
    IN param001 VARCHAR(45), 
    -- USUARIO
    IN param002 VARCHAR(300), 
    -- PASSWORD 
    #VARIABLES DE SALIDA# 
    OUT param003 BOOLEAN 
    -- EXISTE EL USUARIO 
    )
BEGIN 
    #VALIDAMOS QUE EXISTA UN USUARIO CON ESTAS CARACTERISTICAS# 
    IF (select count(*) from usuarios where usuario=param001 and password=param002) = 0 THEN 
    #NO EXISTE# 
    SET param003=FALSE; 
    ELSE 
    #EXISTE EL USUARIO# 
    SET param003=TRUE; SELECT idUsuarios,usuario,nombre,aPaterno,aMaterno,password FROM usuarios WHERE usuario=param001 and password =param002; 
    END IF; 
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--
-- Creación: 23-08-2014 a las 16:33:24
--

CREATE TABLE IF NOT EXISTS `cita` (
  `idCita` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `pagado` tinyint(1) DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCita`),
  KEY `fk_cita_pacientes1_idx` (`paciente_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- RELACIONES PARA LA TABLA `cita`:
--   `paciente_id`
--       `pacientes` -> `idPaciente`
--

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`idCita`, `paciente_id`, `fecha`, `pagado`, `observaciones`) VALUES
(1, 1, '2014-08-01', NULL, 'friki');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialclinico`
--
-- Creación: 23-08-2014 a las 16:33:25
--

CREATE TABLE IF NOT EXISTS `historialclinico` (
  `idhistorialClinico` int(11) NOT NULL AUTO_INCREMENT,
  `cita_idCita` int(11) NOT NULL,
  PRIMARY KEY (`idhistorialClinico`),
  KEY `fk_historialClinico_cita1_idx` (`cita_idCita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- RELACIONES PARA LA TABLA `historialclinico`:
--   `cita_idCita`
--       `cita` -> `idCita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomashombres`
--
-- Creación: 23-08-2014 a las 16:33:28
--

CREATE TABLE IF NOT EXISTS `nomashombres` (
  `idNomasHombres` int(11) NOT NULL AUTO_INCREMENT,
  `esten1` varchar(45) DEFAULT NULL,
  `esten2` varchar(45) DEFAULT NULL,
  `esten3` varchar(45) DEFAULT NULL,
  `esten4` varchar(45) DEFAULT NULL,
  `esten5` varchar(45) DEFAULT NULL,
  `esten6` varchar(45) DEFAULT NULL,
  `esten7` varchar(45) DEFAULT NULL,
  `esten8` varchar(45) DEFAULT NULL,
  `esten9` varchar(45) DEFAULT NULL,
  `esten10` varchar(45) DEFAULT NULL,
  `x` varchar(45) DEFAULT NULL,
  `delta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idNomasHombres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `normasmujeres`
--
-- Creación: 23-08-2014 a las 16:33:28
--

CREATE TABLE IF NOT EXISTS `normasmujeres` (
  `idNormasMujeres` int(11) NOT NULL AUTO_INCREMENT,
  `factor` varchar(2) DEFAULT NULL,
  `esten1` varchar(45) DEFAULT NULL,
  `esten2` varchar(45) DEFAULT NULL,
  `esten3` varchar(45) DEFAULT NULL,
  `esten4` varchar(45) DEFAULT NULL,
  `esten5` varchar(45) DEFAULT NULL,
  `esten6` varchar(45) DEFAULT NULL,
  `esten7` varchar(45) DEFAULT NULL,
  `esten8` varchar(45) DEFAULT NULL,
  `esten9` varchar(45) DEFAULT NULL,
  `esten10` varchar(45) DEFAULT NULL,
  `x` varchar(45) DEFAULT NULL,
  `delta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idNormasMujeres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--
-- Creación: 23-08-2014 a las 16:33:22
--

CREATE TABLE IF NOT EXISTS `pacientes` (
  `idPaciente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `a_paterno` varchar(45) DEFAULT NULL,
  `a_materno` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `meses` int(11) DEFAULT NULL,
  `dirección` varchar(200) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `estadoCivil` varchar(25) DEFAULT NULL,
  `ciudadOrigen` varchar(55) DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT NULL,
  `nivelEducativo` varchar(100) DEFAULT NULL,
  `costoConsulta` double DEFAULT NULL,
  `urI_imagen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPaciente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`idPaciente`, `nombre`, `a_paterno`, `a_materno`, `sexo`, `edad`, `meses`, `dirección`, `telefono`, `estadoCivil`, `ciudadOrigen`, `correoElectronico`, `nivelEducativo`, `costoConsulta`, `urI_imagen`) VALUES
(1, 'Mauricio', 'zarate', 'barrra', 'h', 25, 8, 'calle', NULL, 'soltero', 'distrito federal', NULL, 'universitario', 200, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntasprueba`
--
-- Creación: 23-08-2014 a las 16:33:26
--

CREATE TABLE IF NOT EXISTS `preguntasprueba` (
  `idPreguntaPrueba` int(11) NOT NULL,
  `pregunta` varchar(500) DEFAULT NULL,
  `factor` varchar(2) DEFAULT NULL,
  `resA` varchar(100) DEFAULT NULL,
  `resB` varchar(100) DEFAULT NULL,
  `resC` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPreguntaPrueba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `preguntasprueba`
--

INSERT INTO `preguntasprueba` (`idPreguntaPrueba`, `pregunta`, `factor`, `resA`, `resB`, `resC`) VALUES
(1, '1. Entendí perfectamente las instrucciones de este Cuestionario', NULL, 'Sí', 'En duda', 'No'),
(2, '2. Estoy dispuesto(a) a contestar cada pregunta tan sinceramente como me sea posible', NULL, 'Sí', 'En duda', 'No'),
(3, '3. Preferiría tener una casa', NULL, 'En una zona poblada', 'Intermedio', 'En una zona en el bosque'),
(4, '4. Yo tengo la energía suficiente para enfrentarme a mis dificultades', NULL, 'Siempre', 'Generalmente', 'Pocas veces'),
(5, '5. Me siento un poco nervioso ante los animales salvajes, aunque estén enjaulados', NULL, 'Si', 'Indeciso', 'No'),
(6, '6. Evito criticar a las personas y a sus ideas', NULL, 'Siempre', 'A veces', 'Nunca'),
(7, '7. Yo hago observaciones sarcásticas a las personas que creo que se las merecen', NULL, 'Siempre', 'A veces', 'Nunca'),
(8, '8. Yo prefiero la música semi-clásica que las canciones populares', NULL, 'Cierto', 'Intermedio', 'Falso'),
(9, '9. Si yo viera pelear a los niños de mi vecino', NULL, 'Dejaría que se arreglen solos', 'No sabría qué hacer', 'Intentaría reconciliarlos'),
(10, '10. En las reuniones sociales', NULL, 'Me hago notar', 'No se', 'Prefiero permanecer a distancia'),
(11, '11. Yo preferiría ser', NULL, 'Ingeniero constructor', 'Indeciso', 'Escritor de guiones (dramaturgo)'),
(12, '12. Yo prefiero detenerme a observar a un artista pintando que escuchar a algunas personas discutiendo violentamente', NULL, 'Cierto', 'No se', 'Falso'),
(13, '13. Casi siempre puedo tolerar a la gente vanidosa que se cree la gran cosa', NULL, 'Si', 'En duda', 'No'),
(14, '14. Cuando un individuo es deshonesto, casi siempre lo puedes notar en su cara', NULL, 'Si', 'En duda', 'No'),
(15, '15. Sería mejor que las vacaciones fueran más largas y que todos tuvieran que tomarlas', NULL, 'De acuerdo', 'Indeciso', 'En desacuerdo'),
(16, '16. Preferiría correr el riesgo de un trabajo con un sueldo elevado aunque irregular, que un trabajo con un sueldo menor y constante', NULL, 'Si', 'En duda', 'No'),
(17, '17. Yo hablo sobre mis sentimientos', NULL, 'Solo si es necesario', 'Intermedio', 'Cada vez que tengo la oportunidad'),
(18, '18. En ocasiones tengo la sensación de un vago peligro, o un miedo súbito por razones que no comprendo', NULL, 'Si', 'Intermedio', 'No'),
(19, '19. Cuando me regañan por algo que no hice, no me siento culpable', NULL, 'Cierto', 'Intermedio', 'No'),
(20, '20. Teniendo dinero puedo comprar casi todo', NULL, 'Si', 'En duda', 'No'),
(21, '21. En mis decisiones influyen más', NULL, 'Mis emociones', 'Mis emociones y razón por igual', 'Mis Razonamientos'),
(22, '22. La mayoría de las personas serían más felices si se relacionaran más con sus semejantes e hicieran lo mismo que otros', NULL, 'Si', 'En duda', 'No'),
(23, '23. Cuando me veo en un espejo, algunas veces confundo cuál es la derecha y cuál es la izquierda', NULL, 'Cierto', 'En duda', 'Falso'),
(24, '24. Cuando estoy platicando me gusta', NULL, 'Decir las cosas tal y como se me ocurren', 'Intermedio', 'Organizar primero mis sentimientos'),
(25, '25. Cuando algo en verdad me pone furioso, generalmente me calmo rápidamente', NULL, 'Si', 'Intermedio', 'No'),
(26, '26. Si yo tuviera el mismo sueldo y horario me gustaría más trabajar como', NULL, 'Carpintero o como cocinero', 'Indeciso', 'Mesero en un buen restaurante'),
(27, '27. Yo soy apto para', NULL, 'Algunos pocos empleos', 'Varios empleos', 'Muchos empleos'),
(28, '28. “Pala” es a “cavar” como “cuchillo” es', NULL, 'Afilado', 'Cortar', 'Puntiagudo'),
(29, '29. A veces no puedo dormir porque alguna idea me da vueltas en la cabeza', NULL, 'Cierto', 'Dudoso', 'Falso'),
(30, '30. En mi vida privada, casi siempre alcanzo las metas que me propongo', NULL, 'Cierto', 'Dudoso', 'Falso'),
(31, '31. Cuando una ley es anticuada debe ser cambiada', NULL, 'Solo después de una discusión considerable', 'Intermedio', 'Rápidamente'),
(32, '32. Me disgusta trabajar en un proyecto en el que se toman medidas rápidas que afectan a otros', NULL, 'Cierto', 'Intermedio', 'Falso'),
(33, '33. La mayoría de la gente que conozco me considera como un conversador agradable', NULL, 'Si', 'Intermedio', 'No'),
(34, '34. Cuando veo a personas desaliñadas y desaseadas, yo:', NULL, 'Las acepto', 'Intermedio', 'Me disgusto'),
(35, '35. Me siento un poco apenado si de repente me convierto en el centro de atención en una reunión social', NULL, 'Si', 'Intermedio', 'No'),
(36, '36. Siempre me gusta participar en reuniones concurridas, por ejemplo: una fiesta, un mitin', NULL, 'Si', 'Intermedio', 'No'),
(37, '37. En la escuela prefiero (o preferí)', NULL, 'La música', 'Indeciso', 'Los trabajos manuales'),
(38, '38. Cuando estoy encargado de hacer algo, yo insisto en que se sigan mis instrucciones, o bien renuncio.', NULL, 'Si', 'A veces', 'No'),
(39, '39. Para los padres es más importante:', NULL, 'Ayudar a sus niños a desarrollar afectos', 'Intermedio', 'Enseñar a sus niños como controlar sus emociones'),
(40, '40. En una tarea de grupo, yo más bien trataría de', NULL, 'Imponer acuerdos', 'Intermedio', 'Hacer apuntes y ver que se obedezcan reglas'),
(41, '41. De vez en cuando siento la necesidad de realizar actividades físicas rudas o pesadas', NULL, 'Si', 'Intermedio', 'No'),
(42, '42. Preferiría juntarme con gente bien educada a juntarme con individuos toscos y rebeldes', NULL, 'Si', 'Intermedio', 'No'),
(43, '43. Me siento muy afligido cuando la gente me critica en público', NULL, 'Cierto', 'Intermedio', 'Falso'),
(44, '44. Cuando el jefe (o maestro) me llama', NULL, 'Veo una oportunidad para hablar de cosas que me interesan', 'Indeciso', 'Temo haber hecho algo mal'),
(45, '45. Lo que este mundo necesita son', NULL, 'Ciudadanos firmes y serios', 'No se', 'Idealistas con planes para mejorarlo'),
(46, '46. En todo lo que leo, siempre estoy pendiente de las intenciones propagandistas', NULL, 'Si', 'Intermedio', 'No'),
(47, '47. De adolescente participé en los deportes escolares', NULL, 'Pocas veces', 'Frecuentemente', 'Muy frecuentemente'),
(48, '48. Yo conservo mi cuarto bien arreglado, con cada cosa en su lugar', NULL, 'Si', 'Intermedio', 'No'),
(49, '49. A veces me pongo tenso e inquieto cuando pienso en los sucesos del día', NULL, 'Si', 'Intermedio', 'No'),
(50, '50. A veces dudo que la gente con la que hablo se interese realmente en lo que digo', NULL, 'Si', 'Intermedio', 'No'),
(51, '51. Si tuviera que escoger, preferiría ser', NULL, 'Guardabosques', 'Indeciso', 'Maestro de escuela'),
(52, '52. En santos y cumpleaños', NULL, 'Me gusta hacer regalos personales', 'Indeciso', 'Creo que es molesto comprar regalos.'),
(53, '53. “Cansado” es a “trabajo” como “Orgullo” es a', NULL, 'Sonrisa', 'Éxito', 'Felicidad'),
(54, '54. ¿Cuál de las siguientes palabras es de clase distinta a las otras dos?', NULL, 'Vela', 'Luna', 'Luz eléctrica'),
(55, '55. He sido abandonado por mis amigos', NULL, 'Casi nunca', 'Ocasionalmente', 'A menudo'),
(56, '56. Yo tengo algunas cualidades por lo que me siento superior a la mayoría de la gente', NULL, 'Si', 'Dudoso', 'No'),
(57, '57. Cuando me enojo, yo me esfuerzo por ocultar mis sentimientos a los demás', NULL, 'Cierto', 'A veces', 'Falso'),
(58, '58. Me gusta asistir a espectáculos, o ir a fiestas', NULL, 'Más de una vez a la semana', 'Una vez a la semana', 'Menos de una vez a semana'),
(59, '59. Pienso que suficiente libertad es más importante que las buenas costumbres y el respeto a la ley', NULL, 'Si', 'Intermedio', 'No'),
(60, '60. En presencia de personas de mayor experiencia, edad o posición, tiendo a permanecer callado', NULL, 'Si', 'Intermedio', 'No'),
(61, '61. Se me hace difícil hablar o recitar frente a un grupo numeroso', NULL, 'Si', 'Intermedio', 'No'),
(62, '62. Cuando estoy en un lugar extraño, tengo un buen sentido de orientación (encuentro fácilmente dónde está el norte, sur, este u oeste)', NULL, 'Si', 'Intermedio', 'No'),
(63, '63. Si alguien se enoja conmigo, yo', NULL, 'Trato de calmarlo', 'Indeciso', 'Me irrito'),
(64, '64. Cuando leo un artículo tendencioso o injusto en una revista, tiendo a olvidarlo, más que a sentir ganas de devolverles el golpe', NULL, 'Cierto', 'Dudoso', 'Falso'),
(65, '65. Tiendo a olvidar muchas cosas triviales y sin importancia, como nombres de calles o tiendas', NULL, 'Si', 'Algunas veces', 'No'),
(66, '66. Me gustaría llevar la vida de un veterinario, curando y operando animales', NULL, 'Si', 'Intermedio', 'No'),
(67, '67. Yo como mis alimentos con placer, aunque no siempre tan cuidadosa y apropiadamente como algunas personas', NULL, 'Cierto', 'Intermedio', 'Falso'),
(68, '68. Algunas veces no tengo ganas de ver a nadie', NULL, 'Raras veces', 'Intermedio', 'Muy frecuentemente'),
(69, '69. A veces las personas me dicen que muestro de manera demasiado clara mi exaltación', NULL, 'Si', 'Intermedio', 'No'),
(70, '70. De adolescente, si mi opinión era distinta a la de mis padres, yo por lo general', NULL, 'La mantenía', 'Indeciso', 'Aceptaba la autoridad de mis padres'),
(71, '71. Me gustaría tener una oficina para mi, que no fuera compartida con otra persona', NULL, 'Si', 'Intermedio', 'No'),
(72, '72. Preferiría disfrutar la vida discretamente a mi manera, más que ser admirado por mis éxitos', NULL, 'Si', 'Intermedio', 'No'),
(73, '73. Me siento maduro en la mayoría de mis actos', NULL, 'Si', 'Intermedio', 'No'),
(74, '74. Cuando la gente me critica me enojo, en vez de sentirme ayudado', NULL, 'Frecuentemente', 'Ocasionalmente', 'Nunca'),
(75, '75. Estoy dispuesto a expresar mis sentimientos solo bajo mi estricto control', NULL, 'Si', 'Intermedio', 'No'),
(76, '76. Al inventar algo útil preferiría', NULL, 'Perfeccionarlo en el laboratorio', 'Indeciso', 'Vendérselo a la gente'),
(77, '77. “Sorpresa” es a “extraño” como “miedo” es a', NULL, 'Valiente', 'Ansioso', 'Terrible'),
(78, '78. ¿Cuál de las siguientes fracciones es distinta a las otras dos?', NULL, '3/7', '3/9', '3/11'),
(79, '79. Yo no sé porqué, pero algunas personas como que me ignoran o me evitan', NULL, 'Cierto', 'Intermedio', 'Falso'),
(80, '80. Las personas me tratan con menos consideración de lo que merecen mis buenas intenciones', NULL, 'A menudo', 'En ocasiones', 'Nunca'),
(81, '81. En un grupo, me molesta que me digan albures o groserías aun cuando no haya mujeres delante', NULL, 'Cierto', 'Intermedio', 'Falso'),
(82, '82. Yo tengo indudablemente menos amigos que la mayoría de la gente', NULL, 'Cierto', 'En duda', 'Falso'),
(83, '83. Detestaría estar en un lugar donde no hubiera muchas personas con quien platicar', NULL, 'Cierto', 'Intermedio', 'Falso'),
(84, '84. Las personas dicen que soy descuidado a veces, aunque ellas me consideran simpático', NULL, 'Cierto', 'Intermedio', 'Falso'),
(85, '85. En distintas ocasiones de mi vida social, he experimentado miedo al público', NULL, 'Frecuentemente', 'Ocasionalmente', 'Casi nunca'),
(86, '86. Cuando estoy en un grupo pequeño, me agrada permanecer en silencio y mejor dejar que otros hablen', NULL, 'Cierto', 'Intermedio', 'Falso'),
(87, '87. Yo prefiero leer', NULL, 'Una narración de batallas militares', 'Indeciso', 'Una novela sentimental e imaginativa'),
(88, '88. Cuando la gente mandona trata de imponerse, yo hago exactamente lo contrario de lo que ellas quieren', NULL, 'Cierto', 'Intermedio', 'Falso'),
(89, '89. Es una regla que mis jefes o los miembros de mi familia me consideren culpable solo si existe una razón real', NULL, 'Cierto', 'Intermedio', 'Falso'),
(90, '90. Me desagrada la manera como algunas personas observan con descaro o sin recato a otras, en las calles o en las tiendas.', NULL, 'Cierto', 'Intermedio', 'Falso'),
(91, '91. En un viaje largo preferiría', NULL, 'Leer algo serio pero interesante', 'Indeciso', 'Platicar con el pasajero de junto'),
(92, '92. En una situación que puede volverse peligrosa, yo creo conveniente hacer ruido y escándalo, aunque se pierda la serenidad y la cortesía', NULL, 'Cierto', 'Intermedio', 'Falso'),
(93, '93. Si mis conocidos me tratan mal y me demuestran que les disgusto', NULL, 'Me importa poco', 'Intermedio', 'Me pongo triste'),
(94, '94. Las alabanzas y los cumplidos que me dicen, me desagradan', NULL, 'Cierto', 'Intermedio', 'Falso'),
(95, '95. Me gustaría más bien tener un trabajo con', NULL, 'Un sueldo fijo y seguro', 'Indeciso', 'Un sueldo alto que dependa de mi persuasión a gente desagradable'),
(96, '96. Para mantenerme informado, yo prefiero', NULL, 'Discutir los asuntos con las personas', 'Intermedio', 'Leer los reportes noticiosos diarios'),
(97, '97. Me gusta tomar parte activa en asuntos sociales, comités, etc.', NULL, 'Cierto', 'Intermedio', 'Falso'),
(98, '98. En el desempeño de una tarea, no estoy satisfecho hasta que no se ha realizado con atención el más mínimo detalle', NULL, 'Cierto', 'Intermedio', 'Falso'),
(99, '99. A veces pequeñas contrariedades me irritan demasiado', NULL, 'Cierto', 'Intermedio', 'Falso'),
(100, '100. Yo siempre duermo profundo, nunca hablo ni camino durmiendo', NULL, 'Cierto', 'Intermedio', 'Falso'),
(101, '101. Sería muy interesante trabajar en una empresa', NULL, 'Hablando con los clientes', 'Intermedio', 'Llevando las cuentas y el archivo'),
(102, '102. “Tamaño” es a “longitud” como “deshonestidad” es a', NULL, 'Prisión', 'Pecado', 'Robo'),
(103, '103. AB es a dc como SR es a', NULL, 'QP', 'PQ', 'TU'),
(104, '104. Cuando la gente no es razonable', NULL, 'Me quedo callado', 'Intermedio', 'Los desprecio'),
(105, '105. Si alguien habla en voz alta cuando estoy escuchando música', NULL, 'Puedo concentrarme en la música y no me molesta', 'Intermedio', 'Acaban con mi placer y me molesto'),
(106, '106. Creo que soy bien descrito como', NULL, 'Educado y tranquilo', 'Intermedio', 'Enérgico'),
(107, '107. Asisto a reuniones sociales solo cuando tengo que hacerlo, de otra manera trato de evitarlas', NULL, 'Cierto', 'Intermedio', 'Falso'),
(108, '108. Ser precavido y esperar poco es mejor que ser optimista y esperar siempre el éxito', NULL, 'Cierto', 'Intermedio', 'Falso'),
(109, '109. Cuando pienso en las dificultades de mi trabajo', NULL, 'Trato de planearlas anticipadamente', 'Intermedio', 'Supongo que podré manejarlas'),
(110, '110. Para mí, encuentro fácilmente incorporarme con las personas en una reunión social', NULL, 'Cierto', 'Intermedio', 'Falso'),
(111, '111. Cuando un poco de diplomacia y persuasión son necesarias para que la gente actúe, yo generalmente soy el primero en fomentarlas', NULL, 'Cierto', 'Intermedio', 'Falso'),
(112, '112. Sería muy interesante ser', NULL, 'Orientador vocacional', 'Indeciso', 'Ingeniero mecánico'),
(113, '113. Si estoy completamente seguro que una persona es injusta o egoísta, se lo digo aunque me traiga problemas', NULL, 'Cierto', 'Intermedio', 'Falso'),
(114, '114. A veces yo hago observaciones tontas en broma, sólo para que las personas se sorprendan y ver qué es lo que dicen', NULL, 'Cierto', 'Intermedio', 'Falso'),
(115, '115. Me gustaría ser reportero de teatro, ópera, conciertos', NULL, 'Cierto', 'Intermedio', 'Falso'),
(116, '116. Yo nunca siento la necesidad de hacer garabatos ni ponerme nervioso cuando estoy en una reunión', NULL, 'Cierto', 'Intermedio', 'Falso'),
(117, '117. Si alguien me dice algo que se que es falso, yo muy probablemente me diga', NULL, 'El es un embustero', 'Intermedio', 'Aparentemente está mal informado'),
(118, '118. Yo siento que me van a castigar, aun cuando no haya hecho nada malo', NULL, 'A menudo', 'Ocasionalmente', 'Nunca'),
(119, '119. La idea de que las enfermedades tienen causas tanto físicas como mentales es muy exagerada', NULL, 'Cierto', 'Intermedio', 'Falso'),
(120, '120. La pompa y el esplendor de cualquier ceremonia estatal son cosas que deben conservarse', NULL, 'Cierto', 'Intermedio', 'Falso'),
(121, '121. Me molesta que las personas piensen que soy demasiado diferente o muy poco convencional', NULL, 'Mucho', 'Algo', 'Nada'),
(122, '122. En la elaboración de alguna cosa, más bien yo trabajaría', NULL, 'En equipo', 'Indeciso', 'Por mi propia cuenta'),
(123, '123. En algunos momentos me es difícil evitar un sentimiento de lástima hacia mí mismo', NULL, 'A menudo', 'Ocasionalmente', 'Nunca'),
(124, '124. A menudo me enojo demasiado rápido con la gente', NULL, 'Cierto', 'Intermedio', 'Falso'),
(125, '125. Yo puedo cambiar viejos hábitos sin dificultad y sin volver a ellos', NULL, 'Cierto', 'Intermedio', 'Falso'),
(126, '126. A menudo me enojo demasiado rápido con la gente', NULL, 'Abogado', 'Indeciso', 'Navegante o piloto'),
(127, '127. “Mejor” es a “peor” como “más lento” es a', NULL, 'Rápido', 'Optimo', 'Más veloz'),
(128, '128. ¿Cuáles de las siguientes letras deben ir al final de esta lista? Xooooxxoooxxx', NULL, 'Oxxx', 'Ooxx', 'Xooo'),
(129, '129. Cuando se llega la hora de algo que yo había planeado o anticipado, a veces no siento ganas de ir', NULL, 'Cierto', 'Intermedio', 'Falso'),
(130, '130. Yo puedo trabajar con cuidado en muchas cosas, sin ser molestado por las personas que hacen ruido a mi alrededor', NULL, 'Cierto', 'Intermedio', 'Falso'),
(131, '131. A veces platico a personas desconocidas cosas que me parecen importantes, aunque no me las pregunten', NULL, 'Cierto', 'Intermedio', 'Falso'),
(132, '132. Yo paso mucho de mi tiempo libre platicando con amigos sobre reuniones sociales en las que nos divertimos en el pasado', NULL, 'Cierto', 'Intermedio', 'Falso'),
(133, '133. Me agrada hacer cosas temerarias y atrevidas nada más por gusto', NULL, 'Cierto', 'Intermedio', 'Falso'),
(134, '134. La escena de un cuarto desarreglado me molesta', NULL, 'Cierto', 'Intermedio', 'Falso'),
(135, '135. Me considero una persona muy sociable con la que es fácil llevarse', NULL, 'Cierto', 'Intermedio', 'Falso'),
(136, '136. En mi trato social', NULL, 'Demuestro mis emociones como quiero', 'Intermedio', 'Me guardo mis emociones'),
(137, '137. Me gusta la música', NULL, 'Alegre, ligera y animada', 'Intermedio', 'Emotivo y sentimental'),
(138, '138. Yo admiro más la belleza de un hermoso poema que la belleza de un arma bien hecha', NULL, 'Cierto', 'Intermedio', 'Falso'),
(139, '139. Si nadie se da cuenta de una buena observación mía', NULL, 'No le doy importancia', 'Intermedio', 'Repito la frase para que la gente pueda escucharla nuevamente'),
(140, '140. Me gustaría trabajar como vigilante con criminales que estuvieran en libertad bajo palabra', NULL, 'Cierto', 'Intermedio', 'Falso'),
(141, '141. Uno debe tener cuidado al mezclarse con toda clase de extraños, por el peligro de una infección', NULL, 'Cierto', 'Intermedio', 'Falso'),
(142, '142. En un viaje al extranjero, yo preferiría ir en un tour planeado con un conductor de viajes experimentado, que planear por mi mismo los lugares que desearía visitar', NULL, 'Cierto', 'Intermedio', 'Falso'),
(143, '143. Me consideran acertadamente como una persona trabajadora y de mediano éxito', NULL, 'Cierto', 'Intermedio', 'Falso'),
(144, '144. Si las personas abusan de mi amistad, no lo resiento y lo olvido pronto', NULL, 'Cierto', 'Intermedio', 'Falso'),
(145, '145. Si se desarrolla una discusión acalorada entre los miembros de un grupo, yo', NULL, 'Quisiera ver a “un ganador”', 'Intermedio', 'Desearía que se calmaran rápidamente'),
(146, '146. Me gusta hacer mis planes yo solo, sin que nadie me interrumpa para aconsejarme', NULL, 'Cierto', 'Intermedio', 'Falso'),
(147, '147. A veces dejo que mis acciones se vean influidas por mis celos', NULL, 'Cierto', 'Intermedio', 'Falso'),
(148, '148. Yo creo firmemente que “el jefe puede no tener la razón, pero siempre tiene la razón por ser el jefe”', NULL, 'Cierto', 'Intermedio', 'Falso'),
(149, '149. Me pongo tenso cuando pienso en todas las cosas que me aquejan', NULL, 'Cierto', 'Intermedio', 'Falso'),
(150, '150. No me desconcierta que la gente me grite lo que tengo que hacer cuando estoy jugando', NULL, 'Cierto', 'Intermedio', 'Falso'),
(151, '151. Preferiría la vida de', NULL, 'Un artista', 'Indeciso', 'Secretario de un club social'),
(152, '152. ¿Cuál de las siguientes palabras no corresponde a las otras dos?', NULL, 'Alguno', 'Unos', 'Muchos'),
(153, '153. “Llama” es a “calor” como “rosa” es a', NULL, 'Espina', 'Pétalo Rojo', 'Perfume'),
(154, '154. Tengo sueños tan intensos que me inquietan cuando duermo', NULL, 'A menudo', 'En ocasiones', 'Casi nunca'),
(155, '155. Aunque las probabilidades de que algo tenga éxito y estén completamente en contra, sigo pensando en aceptar el riesgo', NULL, 'Cierto', 'Intermedio', 'Falso'),
(156, '156. Me agrada saber bien lo que el grupo tiene que hacer para que así sea yo el que mande', NULL, 'Cierto', 'Intermedio', 'Falso'),
(157, '157. Preferiría vestirme sencilla y correctamente, y no con un estilo peculiar y llamativo', NULL, 'Cierto', 'Intermedio', 'Falso'),
(158, '158. Me llama más la atención pasar una tarde con un pasatiempo tranquilo que en una fiesta animada', NULL, 'Cierto', 'Intermedio', 'Falso'),
(159, '159. No hago caso a las sugerencias bien intencionadas de los demás aunque pienso que no debería', NULL, 'En ocasiones', 'Casi nunca', 'Nunca'),
(160, '160. Para cualquier decisión siempre mi criterio se basa en los principios del bien y del mal', NULL, 'Cierto', 'Intermedio', 'Falso'),
(161, '161. Me disgusta un poco que un grupo me observe cuando trabajo', NULL, 'Cierto', 'Intermedio', 'Falso'),
(162, '162. Debido a que no siempre es posible obtener las cosas por medio de métodos graduables y razonables, a veces es necesario usar la fuerza', NULL, 'Cierto', 'Intermedio', 'Falso'),
(163, '163. En la escuela prefiero (o preferí)', NULL, 'Español y literatura', 'Indeciso', 'Aritmética y Matemáticas'),
(164, '164. A veces me causa problemas el que la gente hable mal de mí a mis espaldas sin tener razón', NULL, 'Cierto', 'Intermedio', 'Falso'),
(165, '165. Platicar con la gente convencional, común y corriente', NULL, 'Es a menudo importante e interesante', 'Intermedio', 'Me molesta porque dicen cosas tontas y superficiales'),
(166, '166. Algunas cosas me enojan tanto que prefiero no hablar de ellas', NULL, 'Cierto', 'Intermedio', 'Falso'),
(167, '167. Es muy importante en la educación', NULL, 'Dar suficiente afecto a los niños', 'Intermedio', 'Que los niños aprendan habitúa y actitudes convenientes'),
(168, '168. La gente me considera una persona estable, sin perturbaciones, ante las altas y bajas de la vida', NULL, 'Cierto', 'Intermedio', 'Falso'),
(169, '169. Pienso que la sociedad debe crear nuevas costumbres o simples tradiciones', NULL, 'Cierto', 'Intermedio', 'Falso'),
(170, '170. Yo pienso que en el mundo actual es más importante resolver', NULL, 'Los asuntos sobre moralidad', 'Indeciso', 'Las dificultades políticas'),
(171, '171. Yo aprendo mejor', NULL, 'Leyendo un libro bien escrito', 'Intermedio', 'Participando en una discusión de grupo'),
(172, '172. Prefiero guiarme yo mismo en lugar de actuar según las reglas aprobadas', NULL, 'Cierto', 'Intermedio', 'Falso'),
(173, '173. Prefiero esperar hasta que estoy seguro que es correcto lo que pienso decir, antes de exponer mis razones', NULL, 'Siempre', 'En general', 'Solamente si es posible'),
(174, '174. Algunas cosas que no tienen importancia, “me ponen los nervios de punta”', NULL, 'Cierto', 'Intermedio', 'Falso'),
(175, '175. Pocas veces digo cosas que pienso sin reflexionar y que después tengo que lamentar grandemente', NULL, 'Cierto', 'Intermedio', 'Falso'),
(176, '176. Si me pidieran que trabajara en una obra de caridad', NULL, 'Aceptaría', 'Indeciso', 'Diría con cortesía que estoy ocupado'),
(177, '177. ¿Cuál de las siguientes palabras es distinta a las otras dos?', NULL, 'Ancho', 'Zigzag', 'Derecha'),
(178, '178. “Pronto” es a “nunca” como “cerca” es a', NULL, 'Nada', 'Lejos', 'Fuera'),
(179, '179. Cuando cometo una torpeza social, yo puedo olvidarla pronto', NULL, 'Cierto', 'Intermedio', 'Falso'),
(180, '180. Me reconocen como un hombre de ideas, porque siempre se me ocurren algunas cuando hay algún problema', NULL, 'Cierto', 'Intermedio', 'Falso'),
(181, '181. Yo creo que me muestro más', NULL, 'Animado en reuniones de críticas y protesta', 'Indeciso', 'Tolerante a los deseos de otras personas'),
(182, '182. Me consideran como una persona muy entusiasta', NULL, 'Cierto', 'Intermedio', 'Falso'),
(183, '183. Prefiero un trabajo con variedad, viajes y cambios aunque tenga riesgos', NULL, 'Cierto', 'Intermedio', 'Falso'),
(184, '184. Soy una persona bastante estricta que insiste siempre en hacer las cosas tan correctamente como sea posible', NULL, 'Cierto', 'Intermedio', 'Falso'),
(185, '185. Me agradan los trabajo que requieren concentración y habilidades precisas', NULL, 'Cierto', 'Intermedio', 'Falso'),
(186, '186. Me considero un tipo enérgico que se mantiene activo', NULL, 'Cierto', 'Intermedio', 'Falso'),
(187, '187. Estoy seguro de haber contestado correctamente y de no haber dejado ninguna pregunta sin contestar', NULL, 'Cierto', 'Intermedio', 'Falso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--
-- Creación: 23-08-2014 a las 16:33:27
--

CREATE TABLE IF NOT EXISTS `respuestas` (
  `idRespuestas` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `respuesta` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRespuestas`),
  KEY `fk_resultados_pacientes_idx` (`paciente_id`),
  KEY `fk_pespuestas_preguntasPrueba1_idx` (`pregunta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- RELACIONES PARA LA TABLA `respuestas`:
--   `pregunta_id`
--       `preguntasprueba` -> `idPreguntaPrueba`
--   `paciente_id`
--       `pacientes` -> `idPaciente`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--
-- Creación: 23-08-2014 a las 16:33:26
--

CREATE TABLE IF NOT EXISTS `resultados` (
  `idResultado` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) NOT NULL,
  `factor` varchar(45) DEFAULT NULL,
  `bondad` double DEFAULT NULL,
  `maldad` double DEFAULT NULL,
  `estenes` double DEFAULT NULL COMMENT 'fingimiento de bondad o maldad',
  `detalle` varchar(45) DEFAULT NULL COMMENT 'descripcion de puntucion elevada ',
  PRIMARY KEY (`idResultado`),
  KEY `fk_respuestas_pacientes1_idx` (`paciente_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- RELACIONES PARA LA TABLA `resultados`:
--   `paciente_id`
--       `pacientes` -> `idPaciente`
--

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`idResultado`, `paciente_id`, `factor`, `bondad`, `maldad`, `estenes`, `detalle`) VALUES
(1, 1, 'a', 1, 1, 1, 'loco'),
(2, 1, 'b', 11, 1, 2, 'bueno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Creación: 23-08-2014 a las 16:33:23
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `aPaterno` varchar(45) DEFAULT NULL,
  `aMaterno` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuarios`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nombre`, `aPaterno`, `aMaterno`, `usuario`, `password`) VALUES
(1, 'Mauricio', 'Zarate', 'Barrera', 'morrisgrill', '0100'),
(3, 'Mari', NULL, NULL, 'Mari', '123');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `fk_cita_pacientes1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `historialclinico`
--
ALTER TABLE `historialclinico`
  ADD CONSTRAINT `fk_historialClinico_cita1` FOREIGN KEY (`cita_idCita`) REFERENCES `cita` (`idCita`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `fk_pespuestas_preguntasPrueba1` FOREIGN KEY (`pregunta_id`) REFERENCES `preguntasprueba` (`idPreguntaPrueba`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_resultados_pacientes` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `fk_respuestas_pacientes1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
