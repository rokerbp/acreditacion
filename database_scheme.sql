# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: server3.hostingfacil.co (MySQL 5.5.5-10.3.17-MariaDB-log-cll-lve)
# Database: acreditacion
# Generation Time: 2019-08-12 18:38:53 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table caracteristica
# ------------------------------------------------------------

DROP TABLE IF EXISTS `caracteristica`;

CREATE TABLE `caracteristica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factor` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ponderacion` double DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `porcentaje` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_999DAE49ED38EC00` (`factor`),
  CONSTRAINT `FK_999DAE49ED38EC00` FOREIGN KEY (`factor`) REFERENCES `factor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `caracteristica` WRITE;
/*!40000 ALTER TABLE `caracteristica` DISABLE KEYS */;

INSERT INTO `caracteristica` (`id`, `factor`, `nombre`, `descripcion`, `ponderacion`, `valor`, `porcentaje`)
VALUES
	(1,1,'Cumplimiento con los objetivos del programa y coherencia con la Visión, Misión y Proyecto Institucional de la universidad',NULL,NULL,NULL,NULL),
	(2,2,'El perfil o características al momento de su ingreso','En esta primera característica se debe analizar la capacidad del programa para atraer los mejores estudiantes.',NULL,NULL,NULL),
	(3,2,'Permanencia y desempeño de los estudiantes durante el postgrado',NULL,NULL,NULL,NULL),
	(4,2,'Características de los graduados del programa',NULL,NULL,NULL,NULL),
	(5,3,'Perfil de los Profesores',NULL,NULL,NULL,NULL),
	(6,3,'Producción científica de los Profesores',NULL,NULL,NULL,NULL),
	(7,3,'Relación Estudiante/Tutor (Nuevo para Maestrías y Doctorados)',NULL,NULL,NULL,NULL),
	(8,3,'Política sobre Profesores',NULL,NULL,NULL,NULL),
	(9,4,'Formación, Aprendizaje y Desarrollo de Investigadores: El papel de las Tutorías de Posgrado',NULL,NULL,NULL,NULL),
	(10,4,'Formación del Investigador en términos de su capacidad para comprender el entorno social y geopolítico de la ciencia',NULL,NULL,NULL,NULL),
	(11,4,'Flexibilidad del Currículo',NULL,NULL,NULL,NULL),
	(12,4,'Aseguramiento de la calidad y mejora continua',NULL,NULL,NULL,NULL),
	(13,5,'Articulación de la investigación o la creación artística al programa',NULL,NULL,NULL,NULL),
	(14,5,'Los grupos de investigación y sus líneas',NULL,NULL,NULL,NULL),
	(15,5,'Productos de la investigación y su impacto',NULL,NULL,NULL,NULL),
	(16,6,'Posibilidad de Trabajo Inter y Transdisciplinario',NULL,NULL,NULL,NULL),
	(17,6,'Relevancia de las Líneas de Investigación y de las Tesis de Grado para el Desarrollo del País o de la Región',NULL,NULL,NULL,NULL),
	(18,6,'Experiencias de interacción con el entorno',NULL,NULL,NULL,NULL),
	(19,7,'Internacionalización del Currículo y bilingüismo',NULL,NULL,NULL,NULL),
	(20,7,'Internacionalización de Estudiantes y Profesores (movilidad internacional)',NULL,NULL,NULL,NULL),
	(21,7,'Internacionalización de la Investigación y de los graduados',NULL,NULL,NULL,NULL),
	(22,8,'Actividades de Bienestar',NULL,NULL,NULL,NULL),
	(23,9,'Producción científica de los graduados',NULL,NULL,NULL,NULL),
	(24,9,'Análisis del Impacto del Programa',NULL,NULL,NULL,NULL),
	(25,10,'Infraestructura Física Adecuada',NULL,NULL,NULL,NULL),
	(26,10,'Recursos Bibliográficos, Informáticos y de comunicación',NULL,NULL,NULL,NULL),
	(27,10,'Adecuado apoyo Administrativo a las Actividades de Docencia, Investigación y Extensión del Programa',NULL,NULL,NULL,NULL),
	(28,10,'Presupuesto del programa',NULL,NULL,NULL,NULL),
	(29,10,'Gestión del Programa',NULL,NULL,NULL,NULL),
	(30,10,'Presupuesto del programa',NULL,NULL,NULL,NULL),
	(31,10,'Gestión del Programa',NULL,NULL,NULL,NULL),
	(63,21,'Cumplimiento con los objetivos del programa y coherencia con la Visión, Misión y Proyecto Institucional de la universidad','En este Factor (y su única Característica) se analiza el cumplimiento de los objetivos del programa, así como la coherencia entre estos objetivos y la Visión, Misión y proyecto institucional de la universidad.\r\n    1. Claridad en los objetivos del programa.\r\nSe considera que el programa a lo largo de su trayectoria ha mantenido sus objetivos de formación claros y su relevancia para la región.\r\n    2. Capacidad demostrada para lograr dichos objetivos.\r\nSe ha demostrado a lo largo de la trayectoria del programa, la capacidad institucional y del grupo de investigación que soporta al programa, para lograr los objetivos de formación planteados.\r\n    3. Coherencia entre los objetivos del programa y la Visión, Misión y Proyecto Institucional de la Universidad.\r\nTodos los programas de la Universidad, mantienen desde lo académico, social e investigativo, una coherencia con la visión, misión y proyecto institucional que se ha planteado a lo largo de la existencia de la institución.',5,NULL,NULL),
	(64,22,'El perfil o características al momento de su ingreso','En esta primera característica se debe analizar la capacidad del programa para atraer los mejores estudiantes.',25,20,NULL),
	(65,22,'Permanencia y desempeño de los estudiantes durante el postgrado',NULL,NULL,NULL,NULL),
	(66,22,'Características de los graduados del programa',NULL,NULL,NULL,NULL),
	(67,23,'Perfil de los Profesores',NULL,NULL,NULL,NULL),
	(68,23,'Producción científica de los Profesores',NULL,NULL,NULL,NULL),
	(69,23,'Relación Estudiante/Tutor (Nuevo para Maestrías y Doctorados)',NULL,NULL,NULL,NULL),
	(70,23,'Política sobre Profesores',NULL,NULL,NULL,NULL),
	(71,24,'Formación, Aprendizaje y Desarrollo de Investigadores: El papel de las Tutorías de Posgrado',NULL,NULL,NULL,NULL),
	(72,24,'Formación del Investigador en términos de su capacidad para comprender el entorno social y geopolítico de la ciencia',NULL,NULL,NULL,NULL),
	(73,24,'Flexibilidad del Currículo',NULL,NULL,NULL,NULL),
	(74,24,'Aseguramiento de la calidad y mejora continua',NULL,NULL,NULL,NULL),
	(75,25,'Articulación de la investigación o la creación artística al programa',NULL,NULL,NULL,NULL),
	(76,25,'Los grupos de investigación y sus líneas',NULL,NULL,NULL,NULL),
	(77,25,'Productos de la investigación y su impacto',NULL,NULL,NULL,NULL),
	(78,26,'Posibilidad de Trabajo Inter y Transdisciplinario',NULL,NULL,NULL,NULL),
	(79,26,'Relevancia de las Líneas de Investigación y de las Tesis de Grado para el Desarrollo del País o de la Región',NULL,NULL,NULL,NULL),
	(80,26,'Experiencias de interacción con el entorno',NULL,NULL,NULL,NULL),
	(81,27,'Internacionalización del Currículo y bilingüismo',NULL,NULL,NULL,NULL),
	(82,27,'Internacionalización de Estudiantes y Profesores (movilidad internacional)',NULL,NULL,NULL,NULL),
	(83,27,'Internacionalización de la Investigación y de los graduados',NULL,NULL,NULL,NULL),
	(84,28,'Actividades de Bienestar',NULL,NULL,NULL,NULL),
	(85,29,'Producción científica de los graduados',NULL,NULL,NULL,NULL),
	(86,29,'Análisis del Impacto del Programa',NULL,NULL,NULL,NULL),
	(87,30,'Infraestructura Física Adecuada',NULL,NULL,NULL,NULL),
	(88,30,'Recursos Bibliográficos, Informáticos y de comunicación',NULL,NULL,NULL,NULL),
	(89,30,'Adecuado apoyo Administrativo a las Actividades de Docencia, Investigación y Extensión del Programa',NULL,NULL,NULL,NULL),
	(90,30,'Presupuesto del programa',NULL,NULL,NULL,NULL),
	(91,30,'Gestión del Programa',NULL,NULL,NULL,NULL),
	(92,30,'Presupuesto del programa',NULL,NULL,NULL,NULL),
	(93,30,'Gestión del Programa',NULL,NULL,NULL,NULL),
	(249,81,'Cumplimiento con los objetivos del programa y coherencia con la Visión, Misión y Proyecto Institucional de la universidad',NULL,NULL,NULL,NULL),
	(250,82,'El perfil o características al momento de su ingreso','En esta primera característica se debe analizar la capacidad del programa para atraer los mejores estudiantes.',NULL,NULL,NULL),
	(251,82,'Permanencia y desempeño de los estudiantes durante el postgrado',NULL,NULL,NULL,NULL),
	(252,82,'Características de los graduados del programa',NULL,NULL,NULL,NULL),
	(253,83,'Perfil de los Profesores',NULL,NULL,NULL,NULL),
	(254,83,'Producción científica de los Profesores',NULL,NULL,NULL,NULL),
	(255,83,'Relación Estudiante/Tutor (Nuevo para Maestrías y Doctorados)',NULL,NULL,NULL,NULL),
	(256,83,'Política sobre Profesores',NULL,NULL,NULL,NULL),
	(257,84,'Formación, Aprendizaje y Desarrollo de Investigadores: El papel de las Tutorías de Posgrado',NULL,NULL,NULL,NULL),
	(258,84,'Formación del Investigador en términos de su capacidad para comprender el entorno social y geopolítico de la ciencia',NULL,NULL,NULL,NULL),
	(259,84,'Flexibilidad del Currículo',NULL,NULL,NULL,NULL),
	(260,84,'Aseguramiento de la calidad y mejora continua',NULL,NULL,NULL,NULL),
	(261,85,'Articulación de la investigación o la creación artística al programa',NULL,NULL,NULL,NULL),
	(262,85,'Los grupos de investigación y sus líneas',NULL,NULL,NULL,NULL),
	(263,85,'Productos de la investigación y su impacto',NULL,NULL,NULL,NULL),
	(264,86,'Posibilidad de Trabajo Inter y Transdisciplinario',NULL,NULL,NULL,NULL),
	(265,86,'Relevancia de las Líneas de Investigación y de las Tesis de Grado para el Desarrollo del País o de la Región',NULL,NULL,NULL,NULL),
	(266,86,'Experiencias de interacción con el entorno',NULL,NULL,NULL,NULL),
	(267,87,'Internacionalización del Currículo y bilingüismo',NULL,NULL,NULL,NULL),
	(268,87,'Internacionalización de Estudiantes y Profesores (movilidad internacional)',NULL,NULL,NULL,NULL),
	(269,87,'Internacionalización de la Investigación y de los graduados',NULL,NULL,NULL,NULL),
	(270,88,'Actividades de Bienestar',NULL,NULL,NULL,NULL),
	(271,89,'Producción científica de los graduados',NULL,NULL,NULL,NULL),
	(272,89,'Análisis del Impacto del Programa',NULL,NULL,NULL,NULL),
	(273,90,'Infraestructura Física Adecuada',NULL,NULL,NULL,NULL),
	(274,90,'Recursos Bibliográficos, Informáticos y de comunicación',NULL,NULL,NULL,NULL),
	(275,90,'Adecuado apoyo Administrativo a las Actividades de Docencia, Investigación y Extensión del Programa',NULL,NULL,NULL,NULL),
	(276,90,'Presupuesto del programa',NULL,NULL,NULL,NULL),
	(277,90,'Gestión del Programa',NULL,NULL,NULL,NULL),
	(278,90,'Presupuesto del programa',NULL,NULL,NULL,NULL),
	(279,90,'Gestión del Programa',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `caracteristica` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table caracteristica_model
# ------------------------------------------------------------

DROP TABLE IF EXISTS `caracteristica_model`;

CREATE TABLE `caracteristica_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ponderacion` double DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `porcentaje` double DEFAULT NULL,
  `factor_model` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7055E10242C2726` (`factor_model`),
  CONSTRAINT `FK_7055E10242C2726` FOREIGN KEY (`factor_model`) REFERENCES `factor_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `caracteristica_model` WRITE;
/*!40000 ALTER TABLE `caracteristica_model` DISABLE KEYS */;

INSERT INTO `caracteristica_model` (`id`, `nombre`, `descripcion`, `ponderacion`, `valor`, `porcentaje`, `factor_model`)
VALUES
	(1,'Cumplimiento con los objetivos del programa y coherencia con la Visión, Misión y Proyecto Institucional de la universidad',NULL,NULL,NULL,NULL,1),
	(2,'El perfil o características al momento de su ingreso','En esta primera característica se debe analizar la capacidad del programa para atraer los mejores estudiantes.',NULL,NULL,NULL,2),
	(3,'Permanencia y desempeño de los estudiantes durante el postgrado',NULL,NULL,NULL,NULL,2),
	(4,'Características de los graduados del programa',NULL,NULL,NULL,NULL,2),
	(5,'Perfil de los Profesores',NULL,NULL,NULL,NULL,3),
	(6,'Producción científica de los Profesores',NULL,NULL,NULL,NULL,3),
	(7,'Relación Estudiante/Tutor (Nuevo para Maestrías y Doctorados)',NULL,NULL,NULL,NULL,3),
	(8,'Política sobre Profesores',NULL,NULL,NULL,NULL,3),
	(9,'Formación, Aprendizaje y Desarrollo de Investigadores: El papel de las Tutorías de Posgrado',NULL,NULL,NULL,NULL,4),
	(10,'Formación del Investigador en términos de su capacidad para comprender el entorno social y geopolítico de la ciencia',NULL,NULL,NULL,NULL,4),
	(11,'Flexibilidad del Currículo',NULL,NULL,NULL,NULL,4),
	(12,'Aseguramiento de la calidad y mejora continua',NULL,NULL,NULL,NULL,4),
	(13,'Articulación de la investigación o la creación artística al programa',NULL,NULL,NULL,NULL,5),
	(14,'Los grupos de investigación y sus líneas',NULL,NULL,NULL,NULL,5),
	(15,'Productos de la investigación y su impacto',NULL,NULL,NULL,NULL,5),
	(16,'Posibilidad de Trabajo Inter y Transdisciplinario',NULL,NULL,NULL,NULL,6),
	(17,'Relevancia de las Líneas de Investigación y de las Tesis de Grado para el Desarrollo del País o de la Región',NULL,NULL,NULL,NULL,6),
	(18,'Experiencias de interacción con el entorno',NULL,NULL,NULL,NULL,6),
	(19,'Internacionalización del Currículo y bilingüismo',NULL,NULL,NULL,NULL,7),
	(20,'Internacionalización de Estudiantes y Profesores (movilidad internacional)',NULL,NULL,NULL,NULL,7),
	(21,'Internacionalización de la Investigación y de los graduados',NULL,NULL,NULL,NULL,7),
	(22,'Actividades de Bienestar',NULL,NULL,NULL,NULL,8),
	(23,'Producción científica de los graduados',NULL,NULL,NULL,NULL,9),
	(24,'Análisis del Impacto del Programa',NULL,NULL,NULL,NULL,9),
	(25,'Infraestructura Física Adecuada',NULL,NULL,NULL,NULL,10),
	(26,'Recursos Bibliográficos, Informáticos y de comunicación',NULL,NULL,NULL,NULL,10),
	(27,'Adecuado apoyo Administrativo a las Actividades de Docencia, Investigación y Extensión del Programa',NULL,NULL,NULL,NULL,10),
	(28,'Presupuesto del programa',NULL,NULL,NULL,NULL,10),
	(29,'Gestión del Programa',NULL,NULL,NULL,NULL,10),
	(30,'Presupuesto del programa',NULL,NULL,NULL,NULL,10),
	(31,'Gestión del Programa',NULL,NULL,NULL,NULL,10);

/*!40000 ALTER TABLE `caracteristica_model` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table criterio
# ------------------------------------------------------------

DROP TABLE IF EXISTS `criterio`;

CREATE TABLE `criterio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `criterio` WRITE;
/*!40000 ALTER TABLE `criterio` DISABLE KEYS */;

INSERT INTO `criterio` (`id`, `nombre`, `descripcion`)
VALUES
	(1,'Universalidad','Hace referencia, de una parte, a la dimensión más intrínseca del quehacer de una institución que brinda un servicio educativo de nivel superior; esto es, al conocimiento humano que, a través de los campos de acción señalados en la ley, le sirven como base de su identidad. En cualquier tipo de institución, el trabajo académico descansa sobre uno o varios saberes ya sea que se produzcan a través de la investigación, se reproduzcan a través de la docencia o se recreen, contextualicen y difundan a través de múltiples formas.   En todos los casos, el conocimiento posee una dimensión universal que lo hace válido intersubjetivamente; su validez no está condicionada al contexto geográfico de su producción. En consecuencia, el saber, al institucionalizarse, no pierde su exigencia de universalidad; por el contrario, él nutre el quehacer académico de la educación superior, cualquiera que sea su tipo, configurando una cultura propia de la academia. De otra parte, la universalidad hace también referencia, desde un punto de vista más externo, a la multiplicidad y extensión de los ámbitos en que se despliega el quehacer de la institución y su sentido puede ampliarse para aludir al ámbito geográfico sobre el cual ejerce influencia y a los grupos sociales sobre los cuales extiende su acción, entre otros aspectos.'),
	(2,'Integridad','Es un criterio que hace referencia a la probidad como preocupación constante de una institución y su programa en el cumplimiento de sus tareas. Implica, a su vez, una preocupación por el respeto por los valores y referentes universales que configuran el ethos académico y por el acatamiento de los valores universalmente aceptados como inspiradores del servicio educativo del nivel superior.'),
	(3,'Equidad','Es la disposición de ánimo que moviliza a la institución y su programa a dar a cada quien lo que merece. Expresa de manera directa el sentido de la justicia con que se opera; hacia dentro de la institución, por ejemplo, en el proceso de toma de decisiones, en los\rsistemas de evaluación y en las formas de reconocimiento del mérito académico; en un contexto más general, en la atención continua a las exigencias de principio que se desprenden de la naturaleza de bien público que tiene la educación, por ejemplo, la no discriminación en todos los órdenes, el reconocimiento de las diferencias y la aceptación de las diversas culturas y de sus múltiples manifestaciones.'),
	(4,'Idoneidad','Es la capacidad que tienen la institución y su programa de cumplir a cabalidad con las tareas específicas que se desprenden de la misión, de sus propósitos y de su naturaleza, todo ello articulado coherentemente en el proyecto institucional.'),
	(5,'Responsabilidad','Es la capacidad existente en la institución y su programa para reconocer y afrontar las consecuencias que se derivan de sus acciones. Tal capacidad se desprende de la conciencia previa que se tiene de los efectos posibles del curso de acciones que se decide emprender. Se trata de un criterio íntimamente relacionado con la aceptada como tarea, como reto y como un derecho.'),
	(6,'Coherencia','Es el grado de correspondencia entre las partes de la institución y entre éstas y la institución como un todo. Es también la adecuación de las políticas y de los medios de que se dispone, a los propósitos. Asimismo, alude al grado de correlación existente entre lo que la institución y el programa dicen que son y lo que efectivamente realizan.'),
	(7,'Transparencia','Es la capacidad de la institución y su programa para explicitar, sin subterfugio alguno, sus condiciones internas de operación y los resultados de ella. La transparencia es hija de la probidad y es, a su vez, uno de sus ingredientes fundamentales.'),
	(8,'Pertinencia','Es la capacidad de la institución y su programa para responder a necesidades del medio. Necesidades a las que la institución o el programa no responden de manera pasiva, sino proactiva. Proactividad entendida como la preocupación por transformar el contexto en que se opera, en el marco de los valores que inspiran a la institución y la definen.'),
	(9,'Eficacia','Es el grado de correspondencia entre los propósitos formulados y los logros obtenidos por la institución y su programa.'),
	(10,'Eficiencia','Es la medida de cuán adecuada es la utilización de los medios de que disponen la institución y su programa para el logro de sus propósitos.'),
	(11,'Sostenibilidad','Es la manera como el programa y la institución mantienen en el transcurso del tiempo actividades y acciones encaminadas a que se cumplan las metas y los objetivos trazados para cada programa, lo que debe hacer parte del plan de desarrollo de la institución.');

/*!40000 ALTER TABLE `criterio` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table criterioU
# ------------------------------------------------------------

DROP TABLE IF EXISTS `criterioU`;

CREATE TABLE `criterioU` (
  `caracteristica_id` int(11) NOT NULL,
  `criterio_id` int(11) NOT NULL,
  PRIMARY KEY (`caracteristica_id`,`criterio_id`),
  KEY `IDX_CD89CB55A7300D78` (`caracteristica_id`),
  KEY `IDX_CD89CB5579D49D26` (`criterio_id`),
  CONSTRAINT `FK_10A4607D658D94C1` FOREIGN KEY (`criterio_id`) REFERENCES `criterio` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_10A4607DA7300D78` FOREIGN KEY (`caracteristica_id`) REFERENCES `caracteristica` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `criterioU` WRITE;
/*!40000 ALTER TABLE `criterioU` DISABLE KEYS */;

INSERT INTO `criterioU` (`caracteristica_id`, `criterio_id`)
VALUES
	(1,1),
	(1,2),
	(2,1),
	(2,2),
	(2,3),
	(63,1),
	(63,6),
	(64,1),
	(64,3),
	(64,5),
	(250,1),
	(250,2);

/*!40000 ALTER TABLE `criterioU` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EncuestaDoctorado
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EncuestaDoctorado`;

CREATE TABLE `EncuestaDoctorado` (
  `Timest` varchar(64) NOT NULL,
  `Score` int(11) DEFAULT NULL,
  `Nombre` varchar(128) DEFAULT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `Actproductiva` varchar(256) DEFAULT NULL,
  `Relprograma` varchar(256) DEFAULT NULL,
  `Objprograma` varchar(32) DEFAULT NULL,
  `Perfadmitidos` varchar(32) DEFAULT NULL,
  `Desempeno` varchar(32) DEFAULT NULL,
  `Perfegresado` varchar(32) DEFAULT NULL,
  `Perfprofesores` varchar(32) DEFAULT NULL,
  `Numprofesores` varchar(32) DEFAULT NULL,
  `Proacompanamiento` varchar(32) DEFAULT NULL,
  `Proprofesores` varchar(32) DEFAULT NULL,
  `Propedagogicos` varchar(32) DEFAULT NULL,
  `Planestudios` varchar(32) DEFAULT NULL,
  `Procevaluacion` varchar(32) DEFAULT NULL,
  `Aplconocimiento` varchar(32) DEFAULT NULL,
  `Mecinvestigacion` varchar(32) DEFAULT NULL,
  `Prodinvestigativa` varchar(32) DEFAULT NULL,
  `Interprograma` varchar(32) DEFAULT NULL,
  `Impacinvestigacion` varchar(32) DEFAULT NULL,
  `Articprograma` varchar(32) DEFAULT NULL,
  `Internalprograma` varchar(32) DEFAULT NULL,
  `Mecanlengua` varchar(32) DEFAULT NULL,
  `Bienestudiantil` varchar(32) DEFAULT NULL,
  `Ambienteinsti` varchar(32) DEFAULT NULL,
  `Ambienteconsidera` varchar(32) DEFAULT NULL,
  `Impactoocupacional` varchar(32) DEFAULT NULL,
  `Impactocientifica` varchar(32) DEFAULT NULL,
  `Segvincegresados` varchar(32) DEFAULT NULL,
  `Consecrecursos` varchar(32) DEFAULT NULL,
  `Apoyoadministrativo` varchar(32) DEFAULT NULL,
  `Dedicacionprograma` varchar(64) DEFAULT NULL,
  `Redescientificas` text DEFAULT NULL,
  `Premiosrecibidos` text DEFAULT NULL,
  `Comiteeditorial` text DEFAULT NULL,
  `Freccvlac` varchar(64) DEFAULT NULL,
  `Sugerencias` text DEFAULT NULL,
  PRIMARY KEY (`Timest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `EncuestaDoctorado` WRITE;
/*!40000 ALTER TABLE `EncuestaDoctorado` DISABLE KEYS */;

INSERT INTO `EncuestaDoctorado` (`Timest`, `Score`, `Nombre`, `Email`, `Actproductiva`, `Relprograma`, `Objprograma`, `Perfadmitidos`, `Desempeno`, `Perfegresado`, `Perfprofesores`, `Numprofesores`, `Proacompanamiento`, `Proprofesores`, `Propedagogicos`, `Planestudios`, `Procevaluacion`, `Aplconocimiento`, `Mecinvestigacion`, `Prodinvestigativa`, `Interprograma`, `Impacinvestigacion`, `Articprograma`, `Internalprograma`, `Mecanlengua`, `Bienestudiantil`, `Ambienteinsti`, `Ambienteconsidera`, `Impactoocupacional`, `Impactocientifica`, `Segvincegresados`, `Consecrecursos`, `Apoyoadministrativo`, `Dedicacionprograma`, `Redescientificas`, `Premiosrecibidos`, `Comiteeditorial`, `Freccvlac`, `Sugerencias`)
VALUES
	('Fri Dec 07 2018 16:30:31 GMT-0500 (EST)',1,'Cristhian Figueroa','cfigmart@unicauca.edu.co','Universidad del Cauca - 6 meses','Egresado de Maestría, Egresado de Doctorado','Totalmente de acuerdo','Frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','De acuerdo','Totalmente de acuerdo','De acuerdo','Importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Frecuentemente','Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo','Importante','Muy importante','De acuerdo','Totalmente de acuerdo','Frecuentemente','Dedicación exclusiva','Grupo de Ingeniería Telemática (Universidad del Cauca), GBIO (Universidad Antonio Nariño), COMBA I+D (Universidad Santiago de Cali)','Mención de Honor a la tesis doctoral - Universidad del Cauca','Revisor Journal Knowlege Based Systems (Q1), Revisor Journal IJSWIS (Q2), Par evaluador de Colciencias Convocatorias 808 y 818','Cada vez que publico',NULL),
	('Fri Dec 14 2018 06:19:03 GMT-0500 (EST)',2,'Liseth Viviana Campo Arcos','liscampo@unicauca.edu.com','No laboro','Estudiante de Doctorado, Egresado de Maestría','De acuerdo','Muy frecuentemente','Muy frecuentemente','De acuerdo','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'Ni de acuerdo ni en desacuerdo','De acuerdo','Totalmente de acuerdo','Importante','Frecuentemente','Totalmente de acuerdo','Moderadamente relevante','Moderadamente importante','De acuerdo','Totalmente de acuerdo','Frecuentemente','De acuerdo','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Moderadamente importante','Importante','De acuerdo','Ni de acuerdo ni en desacuerdo','Ocasionalmente','Tres cuartos de tiempo','Grupo de Ingeniería Telemática','no aplico','no aplica','Cada año','Más integración con la empresa'),
	('Fri Dec 14 2018 11:22:11 GMT-0500 (EST)',2,'Cristian Heidelberg Valencia Payán','chpayan@unicauca.edu.co','Investigador proyecto AQUARISC - 2 Años','Estudiante de Doctorado, Egresado de Maestría','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante','Importante','Totalmente de acuerdo','Totalmente de acuerdo','Muy frecuentemente','Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo','Muy importante','Muy importante','De acuerdo','Totalmente de acuerdo','Muy frecuentemente','Tres cuartos de tiempo','Grupo de Ingeniería Telemática - GIT - Línea de e-@mbiente\nGrupo de Óptica y Láser - GOL','','','Cada tres meses',''),
	('Fri Dec 14 2018 15:35:10 GMT-0500 (EST)',2,'IVAN DARIO LOPEZ GOMEZ','ivancholg11@gmail.com','Universidad del Cauca','Estudiante de Doctorado, Egresado de Maestría','De acuerdo','Frecuentemente','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','De acuerdo',NULL,'De acuerdo','De acuerdo','De acuerdo','Muy importante','Frecuentemente','De acuerdo','Relevante','Moderadamente importante','De acuerdo','Ni de acuerdo ni en desacuerdo','Ocasionalmente','Ni de acuerdo ni en desacuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','Muy importante','Muy importante','De acuerdo','De acuerdo','Frecuentemente','Tres cuartos de tiempo','Grupo de Ingeniería Telemática','','','Cada vez que publico','Incrementar los mecanismos y estrategias en el programa para promover el mejoramiento del nivel de dominio en una segunda lengua. Agilizar trámites administrativos.'),
	('Fri Dec 21 2018 08:10:06 GMT-0500 (EST)',2,'Luz Santamaría Granados','luzsantamaria@ucauca.edu.co','Universidad Santo Tomás Seccional Tunja','Estudiante de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Frecuentemente','No soy egresado del programa de ','Totalmente de acuerdo','De acuerdo','De acuerdo',NULL,'De acuerdo','Totalmente de acuerdo','De acuerdo','Muy importante','Frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','No soy egresado del programa de ','Totalmente de acuerdo','Muy frecuentemente','De acuerdo','De acuerdo','De acuerdo','No soy egresado del programa de ','No soy egresado del programa de ','No soy egresado del programa de ','De acuerdo','Frecuentemente','Dedicación exclusiva','','Distinción a mejor docente e investigadora de la Facultad de Ingeniería de Sistemas de la Universidad Santo Tomás Seccional Tunja ','','Cada seis meses',''),
	('Fri Dec 21 2018 08:11:27 GMT-0500 (EST)',2,'Juan Francisco Mendoza Moreno','fmendoza@unicauca.edu.co','Universidad Santo Tomás Seccional Tunja','Estudiante de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','No soy egresado del programa de ','Totalmente de acuerdo','De acuerdo','De acuerdo',NULL,'De acuerdo','Totalmente de acuerdo','De acuerdo','Muy importante','Frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','No soy egresado del programa de ','Totalmente de acuerdo','Muy frecuentemente','De acuerdo','De acuerdo','De acuerdo','No soy egresado del programa de ','No soy egresado del programa de ','No soy egresado del programa de ','De acuerdo','Frecuentemente','Dedicación exclusiva','','','','Cada seis meses',''),
	('Fri Dec 21 2018 11:11:07 GMT-0500 (EST)',1,'Álvaro Rendón Gallón','arendon@unicauca.edu.co','Universidad del Cauca','Egresado de Maestría, Profesor de Maestría (Departamento de Telemática), Profesor de Doctorado (Departamento de Telemática), Coordinador del Doctorado','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Importante','Frecuentemente','De acuerdo','Relevante','Importante','Totalmente de acuerdo','De acuerdo','Muy frecuentemente','De acuerdo','De acuerdo','De acuerdo','Muy importante','Muy importante','De acuerdo','De acuerdo','Ocasionalmente','Un cuarto de tiempo','Red de Cooperación MOOC-Maker (http://www.mooc-maker.org/?page_id=826)','Ninguno','Revisor de la revista IEEE Latin America Transactions\nPresidente del Comité de Programa del VII Congreso Iberoamericano de Telemática (CITA2015)\nMiembro del Comité Científico de la International Conference of ICT for Adapting Agriculture to Climate Change (AACC\'17)\nMiembro del Comité Científico de la Second International Conference of ICT for Adapting Agriculture to Climate Change (AACC\'18)','Cada vez que publico',NULL),
	('Mon Dec 03 2018 16:27:02 GMT-0500 (EST)',2,'Daniel Jaramillo Morillo','dajaramillo@unicauca.edu.co','Universidad del Cauca (4 años)','Estudiante de Doctorado, Egresado de Maestría','De acuerdo','Muy frecuentemente','Muy frecuentemente','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','Muy importante','Frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','De acuerdo','Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','Muy importante','Muy importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Muy frecuentemente','Medio tiempo','','','','Cada vez que publico',''),
	('Mon Dec 10 2018 12:08:24 GMT-0500 (EST)',3,'Juan Carlos Cuéllar Q.','jcuellar@icesi.edu.co','Universidad Icesi - Tiempo completo Dpto TICs - 22 años de antiguedad','Egresado de Doctorado','De acuerdo','Muy frecuentemente','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo',NULL,'De acuerdo','De acuerdo','De acuerdo','Importante','Frecuentemente','De acuerdo','Relevante','Importante','Totalmente de acuerdo','Totalmente de acuerdo','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','Importante','Importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Muy frecuentemente','Medio tiempo','IEEE','','','Cada tres meses',''),
	('Mon Dec 17 2018 05:15:18 GMT-0500 (EST)',2,'Angela María Vargas Arcila','amvargas@unicauca.edu.co','Estudiante de doctorado (Unicauca)','Estudiante de Doctorado, Egresado de Maestría','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Ni de acuerdo ni en desacuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Ni de acuerdo ni en desacuerdo',NULL,'De acuerdo','De acuerdo','De acuerdo','Importante','Frecuentemente','De acuerdo','Muy relevante','Muy importante','De acuerdo','Totalmente de acuerdo','Ocasionalmente','De acuerdo','Totalmente de acuerdo','De acuerdo','Moderadamente importante','Importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Frecuentemente','Dedicación exclusiva','','','','Cuando me acuerdo',''),
	('Mon Feb 04 2019 11:08:14 GMT-0500 (EST)',1,'Rodrigo Cerón','rceron@unicauca.edu.co','Universidad del Cauca','Profesor de Maestría (Departamento de Telemática)','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Frecuentemente','Menos de un cuarto de tiempo','','','','Cuando me acuerdo',NULL),
	('Mon Feb 18 2019 09:51:01 GMT-0500 (EST)',2,'Héctor Fabio Bermúdez Orozco','hfbermudez@uniquindio.edu.co','Universidad del Quindio','Egresado de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Frecuentemente','No soy egresado del programa de ','Totalmente de acuerdo','De acuerdo','De acuerdo',NULL,'Totalmente de acuerdo','De acuerdo','De acuerdo','Muy importante','Frecuentemente','Totalmente de acuerdo','Relevante','Muy importante','No soy egresado del programa de ','De acuerdo','Frecuentemente','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','De acuerdo','Importante','No soy egresado del programa de ','No soy egresado del programa de ','Ni de acuerdo ni en desacuerdo','Frecuentemente','Dedicación exclusiva','IEEE','','','Cada vez que hay convocatoria de grupos',''),
	('Mon Feb 18 2019 11:44:00 GMT-0500 (EST)',2,'Maritza Fernanda Mera Gaona','maritzag@unicauca.edu.co','','Estudiante de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy importante','De acuerdo','Totalmente de acuerdo','Frecuentemente','Dedicación exclusiva','','Premio Nacional de Voluntariado Juvenil 2016','','Cada vez que publico',''),
	('Sat Dec 08 2018 11:37:08 GMT-0500 (EST)',1,'Francisco Martinez','francisco.martinez@taiosystems.com','TaIO Systems (2 años)','Egresado de Doctorado','De acuerdo','Frecuentemente','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','De acuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','Importante','Frecuentemente','De acuerdo','Relevante','Moderadamente importante','De acuerdo','De acuerdo','Frecuentemente','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Importante','Importante','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Ocasionalmente','Tres cuartos de tiempo','','Mención de honor Tesis Doctoral \"Sistema de recomendaciones soportado en un esquema de cooperacio?n Smart TV - Smartphone para entornos de publicidad ubicua\"\nNokia Developer Champion 2014','','Cada vez que publico',NULL),
	('Sat Feb 02 2019 18:00:23 GMT-0500 (EST)',1,'Carlos Alberto Trujillo Solarte ','trujillo@unicauca.edu.co ','Universidad del Cauca ','Profesor colaborador de la Maestría y/o el Doctorado (no perteneciente al Departamento de Telemática)','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','De acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','De acuerdo','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Importante','Frecuentemente','De acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','Importante','Importante','De acuerdo','De acuerdo','Frecuentemente','Un cuarto de tiempo','Red Iberoamericana de Teoría de Números Sociedad Colombiana de Matemáticas ','Director grupo A1 Colciencias','Coordinador Doctorado en Ciencias Matemáticas ','Cada seis meses',NULL),
	('Sat Jan 26 2019 13:23:10 GMT-0500 (EST)',1,'Eduardo Rojas Pineda','erojas@unicauca.edu.co','Departamento Administrativo de Ciencia, Tecnología e Innovación - Colciencias - Director de Fomento a la Investigación - 1 año ','Profesor de Maestría (Departamento de Telemática)','Totalmente de acuerdo','Muy frecuentemente','Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','De acuerdo','De acuerdo','De acuerdo','Importante','Frecuentemente','Totalmente de acuerdo','Relevante','Importante','De acuerdo','De acuerdo','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','Importante','Muy importante','De acuerdo','De acuerdo','Ocasionalmente','Un cuarto de tiempo','','','Comité Organizador VII Congreso Iberoamericano de Ingeniería Telemática - CITA 2015 - Popayán - Colombia','Cada seis meses',NULL),
	('Sun Feb 03 2019 16:00:36 GMT-0500 (EST)',1,'Apolinar Figueroa Casas','Apolinarfigueroa@gmail.com','Universidad del Cauca','Profesor colaborador de la Maestría y/o el Doctorado (no perteneciente al Departamento de Telemática)','Totalmente de acuerdo','Frecuentemente','Frecuentemente','Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','Importante','Frecuentemente','De acuerdo','Relevante','Importante','De acuerdo','De acuerdo','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','Importante','Moderadamente importante','De acuerdo','De acuerdo','Frecuentemente','Un cuarto de tiempo','Ricclisa, ecological and society, ','','Comite doctoral de Ciencias Ambientales, comité doctoral de Etnobiologia','Cada tres meses',NULL),
	('Sun Feb 03 2019 18:06:14 GMT-0500 (EST)',1,'Diego Mauricio López Gutiérrez','dmlopez@unicauca.edu.co','Universidad del Cauca, 18 años, 10 meses','Estudiante de Maestría, Egresado de Maestría, Profesor de Maestría (Departamento de Telemática), Profesor de Doctorado (Departamento de Telemática)','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','Totalmente de acuerdo','De acuerdo','Muy importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','De acuerdo','Ocasionalmente','De acuerdo','De acuerdo','De acuerdo','Importante','Importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Muy frecuentemente','Medio tiempo','HL7 Colombia. Presidente del Capítulo Colombiano, 02.2013- 12.2015.\nIMIA International Medical Informatics Association; Miembro corresponsal por Colombia. 01.2006-Presente.\nIMIA-LAC. Capítulo Latinoamericano de  la asociación internacional de informática médica; Miembro corresponsal por Colombia. 01.2006-Presente.','* Senior Researcher (máxima categoría), Clasificación de investigadores Colombianos, Colciencias, Convocatoria 781, 2017.\n* Premio al mejor artículo, 7 Congreso iberoamericano en Telemática, CITA 2015, Popayán, Colombia, 2015 (Co-autor).\n* Premio al Mejor paper. Conferencia pHealth 2014, Vienna, Austria, 2014. (Co-autor).\n','* Editor Académico. Plos One Journal. ISSN. 1932-6203. 2018-Presente.\n* Editor Asociado. European Journal of Biomedical Informatics. ISSN 1801-5603. 10.2017-Presente.\n* Editor Asociado. Health and Technology Journal. ISSN: 2190-7188 (Print). 06.2012-Present.\n*  Miembro del comité de programa. Congreso iberoamericano en Telemática, CITA 2015, Popayán, Colombia, 2015','Cada vez que hay convocatoria de grupos',NULL),
	('Sun Feb 03 2019 19:09:24 GMT-0500 (EST)',1,'Adolfo Plazas Tenorio','aplazas@unicauca.edu.co','Universidad del Cauca','Profesor de Maestría (Departamento de Telemática)','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','De acuerdo','De acuerdo','Totalmente de acuerdo','Moderadamente importante','Muy frecuentemente','Totalmente de acuerdo','Moderadamente relevante','Moderadamente importante','De acuerdo','Totalmente de acuerdo','Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','Muy importante','Muy importante','De acuerdo','De acuerdo','Muy frecuentemente','Menos de un cuarto de tiempo','','','','Cada año',NULL),
	('Thu Dec 06 2018 07:54:06 GMT-0500 (EST)',1,'Oscar Caicedo','omcaicedo@unicauca.edu.co','Unicauca','Egresado de Maestría, Profesor de Maestría (Departamento de Telemática), Profesor de Doctorado (Departamento de Telemática)','Totalmente de acuerdo','Frecuentemente','Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','De acuerdo','Totalmente de acuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','Moderadamente importante','Muy frecuentemente','De acuerdo','Moderadamente relevante','Moderadamente importante','De acuerdo','De acuerdo','Frecuentemente','De acuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','Importante','Moderadamente importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Ocasionalmente','Medio tiempo','ISOC, IEEE, IEEE Communications Society','IETF Fellow, ACM SIGCOMM Travel Grant, FAPESP Visitor Professor','Miembro de comité editorial International Journal of Computer Theory and Engineering (Since 2016). \nTPC in ISCC (2016), COLCOM (2012,2014,2015,2016), CITA (2015), UbiCoNet (2011), ERRC (2013,2015,2016), I2COMM (2010,2008). \nRevisor en IEEE Access (2017), Revista Facultad de Ingeniería UPTC (2016), IEEE TNSM (2015), Springer Health and Technology (2015), DYNA (2015), ENTRE CIENCIA E INGENIERÍA (2015), and Revista de Ingeniería Uniandes (2015).','Cada vez que publico',NULL),
	('Thu Dec 06 2018 09:17:45 GMT-0500 (EST)',1,'Juan Carlos Corrales','jcorral@unicauca.edu.co','Universidad del Cauac','Profesor de Maestría (Departamento de Telemática), Profesor de Doctorado (Departamento de Telemática)','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo','De acuerdo','De poca importancia','Muy frecuentemente','De acuerdo','Relevante','Importante','Totalmente de acuerdo','De acuerdo','Ocasionalmente','De acuerdo','Totalmente de acuerdo','De acuerdo','Importante','Muy importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Muy frecuentemente','Medio tiempo','RICCLISA - Red Interinstitucional de Cambio Climático y Seguridad Alimentaria','','Springer - Advances in Information and Communication Technologies for Adapting Agriculture to Climate Change ISSN 2194-5357 ; ISBN 978-3-319-70186-8','Cada año',NULL),
	('Thu Dec 13 2018 08:48:50 GMT-0500 (EST)',2,'Julian Andres','jacaicedo@unicauca.edu.co','3 años','Estudiante de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo',NULL,'De acuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','Importante','Ocasionalmente','De acuerdo','Relevante','Importante','De acuerdo','De acuerdo','Ocasionalmente','Ni de acuerdo ni en desacuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','Importante','Importante','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Frecuentemente','Tres cuartos de tiempo','','','','Cada vez que hay convocatoria de grupos',''),
	('Thu Dec 13 2018 10:37:40 GMT-0500 (EST)',2,'Marlon Felipe Burbano Fernández','mfburbano@unicauca.edu.co','Universidad del Cauca - Becario de Doctorado. Vinculado hace 3 años','Estudiante de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo',NULL,'De acuerdo','Totalmente de acuerdo','De acuerdo','Importante','Muy frecuentemente','De acuerdo','Muy relevante','Moderadamente importante','De acuerdo','Totalmente de acuerdo','Ocasionalmente','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','Importante','Importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Ocasionalmente','Tres cuartos de tiempo','GIT','Participación como ponente en el Seminario Internacional de Innovaciones Educativas y MOOC SINNEM con el artículo \"MOOC and Wearable: An architectural proposal\"; con el que se obtuvo un reconocimiento al \"Reto en innovación educativa\".','MoocMaker (Colaborador) ','Cada año',''),
	('Thu Dec 13 2018 12:05:49 GMT-0500 (EST)',2,'Gineth Magaly Cerón Rios ','Gceron@unicauca.edu.co ','Universidad del Cauca 4años','Estudiante de Doctorado','Totalmente de acuerdo','Frecuentemente','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','De acuerdo',NULL,'De acuerdo','De acuerdo','Totalmente de acuerdo','Muy importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Frecuentemente','Totalmente de acuerdo','De acuerdo','De acuerdo','Muy importante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Frecuentemente','Dedicación exclusiva','','','','Cada tres meses',''),
	('Tue Dec 04 2018 22:49:18 GMT-0500 (EST)',1,'Miguel Corchuelo','micorcho@unicauca.edu.co','Unicauca','Profesor colaborador de la Maestría y/o el Doctorado','De acuerdo','Frecuentemente','Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','De acuerdo','Importante','Frecuentemente','Totalmente de acuerdo','Relevante','Importante','De acuerdo','De acuerdo','Ocasionalmente','De acuerdo','De acuerdo','De acuerdo','Importante','Importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Frecuentemente','Menos de un cuarto de tiempo','Asociación Colombiana de Facultades de Ingeniería ACOFI\nAsociación para la Investigación en Educación en Ciencia y Tecnología EDUCYT','','','Cada seis meses',NULL),
	('Tue Dec 11 2018 08:03:18 GMT-0500 (EST)',3,'Martín Monroy Ríos','mmonroyr@unicartagena.edu.co','Universidad de Cartagena, 10 años','Estudiante de Doctorado','De acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','De acuerdo','De acuerdo','De acuerdo',NULL,'De acuerdo','De acuerdo','De acuerdo','Importante','Frecuentemente','De acuerdo','Relevante','Importante','De acuerdo','De acuerdo','Frecuentemente','Ni de acuerdo ni en desacuerdo','De acuerdo','De acuerdo','Importante','Importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Frecuentemente','Tres cuartos de tiempo','','','','Cada seis meses',''),
	('Tue Feb 12 2019 18:49:41 GMT-0500 (EST)',3,'Miguel Angel Niño Zambrano','manzamb@unicauca.edu.co','Universidad del Cauca','Egresado de Doctorado, Codirector Estudiante de Maestría en Telemática','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'De acuerdo','Totalmente de acuerdo','De acuerdo','Moderadamente importante','Frecuentemente','De acuerdo','Relevante','Importante','Totalmente de acuerdo','Ni de acuerdo ni en desacuerdo','Ocasionalmente','De acuerdo','De acuerdo','De acuerdo','Importante','Importante','De acuerdo','Ni de acuerdo ni en desacuerdo','Muy frecuentemente','Tres cuartos de tiempo','Ninguna','Ninguno','2 Revistas nacionales y Programa de Maestría en Computación Unicauca','Cada vez que publico','Buscar la forma de acceso a las principales bases de datos bibliográficas desde la Universidad como JCR. Buscar pasantes en el programa nativos en Ingles que permitan generar espacios de charla entre los mismos estudiantes de programa. Procurar espaciós más adecuados a los estudios doctorales en los cuales existan instalaciones y laboratorios en los que se puedan desarrollar las investigaciones con el nivel de un doctorado. Ejemplo: Los salones son los mismos de pregrado, los laboratorios en áreas específicas como Computación Ubicua u otros no exísten, cada estudiante debe procurar sus propíos recursos para desarrollar las investigaciones, no hay espacios comunes de trabajo para el encuentro de estudiantes de doctorado, maestria etc.'),
	('Wed Dec 05 2018 07:40:18 GMT-0500 (EST)',1,'Jose Luis Arciniegas H','jlarci@unicauca.edu.co','21 años','Profesor de Maestría (Departamento de Telemática), Profesor de Doctorado (Departamento de Telemática), Coordinador y miembro del comité de maestria y/o doctorado','Totalmente de acuerdo','Frecuentemente','Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','Moderadamente importante','Frecuentemente','De acuerdo','Moderadamente relevante','Moderadamente importante','De acuerdo','De acuerdo','Ocasionalmente','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Importante','Muy importante','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Ocasionalmente','Medio tiempo','ACIEM, CONACES, SC2o y SENACYT\n','Best short paper in the 11 Congreso Colombiano de Computación (11CCC), desarrollado en Popayán-Colombia del 27 al 30 de Septiembre de 2016. \nBest paper in the Seminario Internacional de Ciencias de la Computación SICC 2017, desarrollado en Medellin-Colombia del 18 al 20 de Octubre de 2017.\n','ASEA, ICSOFT, DATA, RUTIC y SoftTech','Cada seis meses',NULL),
	('Wed Dec 05 2018 08:30:21 GMT-0500 (EST)',1,'Mario Solarte','msolarte@unicauca.edu.co','Universidad del Cauca - 19 años','Estudiante de Doctorado, Egresado de Maestría, Profesor de Maestría (Departamento de Telemática)','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','De acuerdo','Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','De acuerdo','Importante','Muy frecuentemente','Totalmente de acuerdo','Moderadamente relevante','Importante','De acuerdo','De acuerdo','Frecuentemente','Totalmente de acuerdo','De acuerdo','De acuerdo','Importante','Importante','De acuerdo','De acuerdo','Ocasionalmente','Dedicación exclusiva','Red MOOC Maker','','I Conferencia Latinoamericana y Summer School de Analíticas de Aprendizaje – LALA 2018\nSeminario Internacional de Innovaciones Educativas y MOOC 2018\nII MOOC Maker Conference 2018\n','Cada año',NULL),
	('Wed Dec 05 2018 10:18:31 GMT-0500 (EST)',1,'Andres Lara Silva','alara@unicauca.edu.co','15 años ,  11 meses','Profesor de Maestría (Departamento de Telemática)','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Importante','Frecuentemente','Totalmente de acuerdo','Relevante','Importante','Totalmente de acuerdo','De acuerdo','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','Importante','Muy importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Muy frecuentemente','Menos de un cuarto de tiempo','','','','Cada año',NULL),
	('Wed Dec 12 2018 10:33:18 GMT-0500 (EST)',3,'Gustavo Andrés Uribe Gómez','gaurgo@unicauca.edu.co','Universidad Antonio Nariño/CERN (7 meses)','Egresado de Maestría, Egresado de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Frecuentemente','De acuerdo','Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo',NULL,'De acuerdo','De acuerdo','De acuerdo','Moderadamente importante','Frecuentemente','De acuerdo','Relevante','Importante','De acuerdo','Totalmente de acuerdo','Muy frecuentemente','De acuerdo','De acuerdo','De acuerdo','Moderadamente importante','Importante','De acuerdo','Totalmente de acuerdo','Muy frecuentemente','Tres cuartos de tiempo','','pHealth2014 and pHealth2015 best paper award','Comité de Programa Maestría Ingeniería Telemática, Comité de Programa Programa Ingeniería de Sistemas Unicomfacauca, Editor revista I+T+C editorial Unicomfacauca','Cada seis meses',''),
	('Wed Dec 12 2018 11:24:55 GMT-0500 (EST)',2,'Jesus David Ceron Bravo','jesusceron@unicauca.edu.co','NA','Estudiante de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Moderadamente importante','Muy frecuentemente','Totalmente de acuerdo','Relevante','Muy importante','De acuerdo','Totalmente de acuerdo','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','Importante','Importante','Ni de acuerdo ni en desacuerdo','Totalmente de acuerdo','Muy frecuentemente','Dedicación exclusiva','','','','Cada vez que publico',''),
	('Wed Dec 12 2018 11:50:28 GMT-0500 (EST)',2,'Carolina Rico Olarte','carolinarico@unicauca.edu.co','Universidad del Cauca - 3 años','Estudiante de Doctorado, Egresado de Maestría','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo',NULL,'De acuerdo','Totalmente de acuerdo','De acuerdo','Moderadamente importante','Frecuentemente','De acuerdo','Relevante','Moderadamente importante','De acuerdo','De acuerdo','Frecuentemente','Ni de acuerdo ni en desacuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','Importante','Importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Ocasionalmente','Dedicación exclusiva','Ninguna','Premio al Mejor artículo en \"International Young Researcher Summit on Quality of Experience in Emerging Multimedia Services - QEEMS 2017\".','Representante de los estudiantes al Comité de Programa de Maestría y Doctorado en Ingeniería Telemática. Dos periodos: 2016-2017 y 2017-2018','Cada tres meses',''),
	('Wed Dec 12 2018 12:20:11 GMT-0500 (EST)',2,'Juan Sebastián Rojas Meléndez','jsrojas@unicauca.edu.co','Universidad del Cauca - 3 años','Estudiante de Doctorado, Egresado de Maestría','Totalmente de acuerdo','Frecuentemente','Frecuentemente','De acuerdo','Totalmente de acuerdo','De acuerdo','Totalmente en desacuerdo',NULL,'De acuerdo','En desacuerdo','En desacuerdo','De poca importancia','Muy frecuentemente','De acuerdo','Moderadamente relevante','Moderadamente importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Raramente','Ni de acuerdo ni en desacuerdo','Totalmente en desacuerdo','En desacuerdo','Importante','Muy importante','De acuerdo','Ni de acuerdo ni en desacuerdo','Raramente','Dedicación exclusiva','ResearchGate, Kaggle','Mención de honor al trabajo de grado de pregrado en Ingeniería electrónica y telecomunicaciones','','Cada vez que publico','- Falta de mecanismos que impulsen el mejoramiento de un segundo idioma (inglés, francés, etc) durante el desarrollo del programa de posgrado.\n\n- Falta de claridad y flexibilidad respecto a los creditos, requisitos y el camino que debe seguir un estudiante que ingresa directamente al doctorado sin tener maestría.\n\n- El requerimiento implícito de pasar como ponente por el seminario de grado de maestría I para obtener la aprobación del anteproyecto provoca que no sea posible cumplir con el tiempo nominal de estudio (2 años) para obtener el titulo de magister, ya que atrasa otros requisitos como la pasantía de investigación.'),
	('Wed Dec 12 2018 12:49:53 GMT-0500 (EST)',2,'Julián Eduardo Plazas Pemberthy','jeplazas@unicauca.edu.co','','Estudiante de Doctorado, Egresado de Maestría','Totalmente de acuerdo','Frecuentemente','Frecuentemente','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo',NULL,'De acuerdo','Ni de acuerdo ni en desacuerdo','En desacuerdo','Moderadamente importante','Muy frecuentemente','Totalmente de acuerdo','Relevante','Muy importante','De acuerdo','Totalmente de acuerdo','Raramente','Ni de acuerdo ni en desacuerdo','Totalmente en desacuerdo','En desacuerdo','Importante','Moderadamente importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Nunca','Dedicación exclusiva','ResearchGate','Mejor ICFES Saber Pro en el área (2013); Mención honorífica al trabajo de grado de pregrado (2015)','Parte del comité científico en The Second International Conference of ICT for Adapting Agriculture to Climate Change (AACC\'18). ','Cada vez que publico','Con respecto a la encuesta, me parece que algunas preguntas me parecieron ambiguas o poco claras.\nCon respecto al programa, me parece que hay una deficiencia en cuanto a mecanismos para el mejoramiento de una segunda lengua, son muy escasos y el programa es poco estricto en ese sentido.\nPor último, con respecto al ambiente y gestión institucional, me parece que generalmente es más lo que entorpece los esfuerzos del programa, profesores y estudiantes, que la ayuda o el soporte que realmente otorgan.'),
	('Wed Dec 12 2018 13:00:57 GMT-0500 (EST)',2,'Fabinton Sotelo','fabinton.sotelo@gmail.com','I.E Rafael Pombo','Estudiante de Doctorado, Egresado de Maestría','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo',NULL,'De acuerdo','Totalmente de acuerdo','De acuerdo','Importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Ocasionalmente','De acuerdo','Totalmente de acuerdo','De acuerdo','Muy importante','Muy importante','De acuerdo','De acuerdo','Muy frecuentemente','Dedicación exclusiva','Grupo de Investigacion IMS , Fundación Universitaria de Popayán','Egresado distinuido I. U. Colegio Mayor del Cauca 2016 - Exaltación docente Secretaria de educación de Popayán (2017 y 2018)','','Cada tres meses',''),
	('Wed Dec 12 2018 14:36:13 GMT-0500 (EST)',2,'Emmanuel Lasso','emmanuelasso9@gmail.com','Ninguna','Estudiante de Doctorado, Egresado de Maestría','De acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'De acuerdo','De acuerdo','Totalmente de acuerdo','Muy importante','Frecuentemente','De acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','De acuerdo','Ocasionalmente','De acuerdo','De acuerdo','De acuerdo','Muy importante','Muy importante','De acuerdo','De acuerdo','Frecuentemente','Tres cuartos de tiempo','GIT','','Comité académico AACC17 y AACC18, Comité de Revista Neogranadina, International Journal of Biometeorology de Springer','Cada vez que me lo solicitan actualizado',''),
	('Wed Dec 12 2018 22:26:32 GMT-0500 (EST)',3,'Helder','heldercastrillon@unicauca.edu.co','HISP COLOMBIA y unicomfacauca ','Egresado de Doctorado','Totalmente de acuerdo','Frecuentemente','Frecuentemente','Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo','En desacuerdo',NULL,'De acuerdo','De acuerdo','Totalmente de acuerdo','Muy importante','Frecuentemente','De acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','De acuerdo','Muy frecuentemente','En desacuerdo','En desacuerdo','En desacuerdo','Muy importante','Muy importante','De acuerdo','De acuerdo','Ocasionalmente','Medio tiempo','grupos de invetigación TIC unicomfacauca y GIT Unicauca','','','Cada vez que publico',''),
	('Wed Dec 12 2018 23:01:28 GMT-0500 (EST)',1,'Gustavo Ramirez','gramirez@unicauca.edu.co','U del Cauca 17 años','Egresado de Maestría, Profesor de Doctorado (Departamento de Telemática)','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo','Muy importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante','Importante','Totalmente de acuerdo','Totalmente de acuerdo','Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Muy frecuentemente','Un cuarto de tiempo','Red MOOCMAKER','','Editor asociado de Computers & Electrical Engineering Journal. Elsevier  / \nEditor invitado para Special Isuues de :\nComputers and Electrical Engineering - Elsevier \nInternational Journal of Heavy Vehicle Systems - Inderscience\nInternational Journal of Gird and Utility Computing - Inderscience/\n\nComite académico de:\nSSIC-2019 (2nd International Conference on Smart IoT Systems: Innovations in Computing)\nLALA 2018	First Conference of Learning Analytics in Latin America\nSINNEM18	Seminario Innovaciones Educativas y MOOC\nMOOC-Maker 2018	International Conference MOOC-Maker 2018\nAACC\'17 (International Conference of ICT For Adapting Agriculture To Climate Change)\nEMOOCs 2017 (European MOOCs Stakeholders Symposium 2017)\nmoocmaker2017	International Conference MOOC-Maker 2017\nCITA COngreso IberoAmericano de Telemática 2015\nTIC-@gro 2015 (TIC-@gro: Primer Workshop de Tecnologías de la Información y la Comunicación aplicadas a la Agricultura.)','Cada vez que hay convocatoria de grupos',NULL),
	('Wed Dec 12 2018 23:22:55 GMT-0500 (EST)',2,'Carlos Andrés González Amarillo','caagonzalezam@unal.edu.co','Universidad del Cauca (1 año)','Estudiante de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','Importante','Frecuentemente','De acuerdo','Muy relevante','Muy importante','De acuerdo','Totalmente de acuerdo','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','Moderadamente importante','Importante','De acuerdo','De acuerdo','Muy frecuentemente','Dedicación exclusiva','','','','Cada vez que publico',''),
	('Wed Dec 19 2018 08:58:16 GMT-0500 (EST)',2,'Carlos Hernan Tobar Arteaga','carlost@unicauca.edu.co','Doctorado en Ingeniería Telemática','Estudiante de Doctorado','De acuerdo','Frecuentemente','Ocasionalmente','No soy egresado del programa de ','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','En desacuerdo',NULL,'En desacuerdo','En desacuerdo','Ni de acuerdo ni en desacuerdo','De poca importancia','Raramente','En desacuerdo','Poco relevante','De poca importancia','No soy egresado del programa de ','En desacuerdo','Ocasionalmente','En desacuerdo','En desacuerdo','En desacuerdo','No soy egresado del programa de ','No soy egresado del programa de ','No soy egresado del programa de ','Ni de acuerdo ni en desacuerdo','Frecuentemente','Dedicación exclusiva','','','','Cada seis meses',''),
	('Wed Dec 19 2018 10:00:07 GMT-0500 (EST)',2,'Angela María Rodríguez Vivas','angela.rodriguez.vivas@gmail.com','Unicauca - Estudiante de Doctorado - 2.5 años','Estudiante de Doctorado, Egresado de Maestría','De acuerdo','Frecuentemente','Frecuentemente','De acuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo',NULL,'Ni de acuerdo ni en desacuerdo','De acuerdo','De acuerdo','Moderadamente importante','Frecuentemente','Ni de acuerdo ni en desacuerdo','Poco relevante','De poca importancia','De acuerdo','De acuerdo','Frecuentemente','De acuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','Moderadamente importante','Moderadamente importante','En desacuerdo','De acuerdo','Muy frecuentemente','Medio tiempo','','IETF 99 Fellow','','No actualizo el CvLAC',''),
	('Wed Dec 19 2018 11:17:05 GMT-0500 (EST)',2,'Carlos Felipe Estrada Solano','festradasolano@unicauca.edu.co','Estudiante de Doctorado en Ingeniería Telemática de la Universidad del Cauca por 3 años','Estudiante de Doctorado, Egresado de Maestría','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'De acuerdo','De acuerdo','De acuerdo','Importante','Muy frecuentemente','De acuerdo','Muy relevante','Importante','Totalmente de acuerdo','Totalmente de acuerdo','Ocasionalmente','De acuerdo','De acuerdo','De acuerdo','Muy importante','Muy importante','De acuerdo','De acuerdo','Muy frecuentemente','Tres cuartos de tiempo','Grupo de Ingeniería Telemática, Semillero de Investigación ComsoCauca - Capítulo de Comunicaciones IEEE de UNICAUCA, IEEE Communications Society, IRTF','','','Cada seis meses',''),
	('Wed Dec 19 2018 11:38:22 GMT-0500 (EST)',2,'Fulvio Yesid Vivas Cantero','fyvivas@unicauca.edu.co','Unicauca','Estudiante de Doctorado, Egresado de Maestría','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','De acuerdo','Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo',NULL,'Totalmente de acuerdo','De acuerdo','Totalmente de acuerdo','Muy importante','Frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','De acuerdo','Ocasionalmente','De acuerdo','De acuerdo','Totalmente de acuerdo','Muy importante','Muy importante','De acuerdo','Totalmente de acuerdo','Muy frecuentemente','Tres cuartos de tiempo','','','','Cada mes',''),
	('Wed Feb 13 2019 02:35:20 GMT-0500 (EST)',3,'David Camilo Corrales','dcorrales@unicauca.edu.co','Institut National de Recherche Agronomique (INRA) - 1 año','Estudiante de Maestría, Estudiante de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Muy frecuentemente','Dedicación exclusiva','Institut National de Recherche Agronomique (INRA)','','','Cada tres meses','Poder recibir las clases en ingles'),
	('Wed Feb 13 2019 04:41:43 GMT-0500 (EST)',3,'jose armando ordonez','armandoordonez@gmail.com','Docente investigador, 4 años','Estudiante de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Muy frecuentemente','Tres cuartos de tiempo','Asociación Española de Inteligencia Artificial','','','Cada seis meses',''),
	('Wed Feb 13 2019 08:41:04 GMT-0500 (EST)',3,'Luz Marina Sierra','lsierra@hotmail.com','UNIVERSIDAD DEL CAUCA 17 AÑOS','Egresado de Maestría, Egresado de Doctorado','De acuerdo','Muy frecuentemente','Frecuentemente','Totalmente de acuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','De acuerdo',NULL,'De acuerdo','De acuerdo','De acuerdo','Importante','Frecuentemente','De acuerdo','Relevante','Importante','De acuerdo','De acuerdo','Frecuentemente','De acuerdo','Ni de acuerdo ni en desacuerdo','De acuerdo','Importante','Importante','De acuerdo','Totalmente de acuerdo','Muy frecuentemente','Dedicación exclusiva','AMBA','NINGUNO','NINGUNA','Cada vez que publico','CONSEGUIR ACCESO ILIMITADO A BASES DE DATOS CIENTIFICAS ELSEVIER, SPRINGER, IEEE, ACM, ETC PARA DESCARGAR  ARTICULOS TANTO DURANTE EL PROGRAMA COMO DESPUES DE LA FORMACION'),
	('Wed Feb 13 2019 17:26:48 GMT-0500 (EST)',3,'Hugo Ordoñez','hugoeraso@gmail.com','Universida San  Buenaventura, Cali, 5 años','Egresado de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Muy frecuentemente','Tres cuartos de tiempo','IEEE, ACM','Premio a la Calidad investigativa Guillermo de Ockam,','12 ccc, Revista tecnura, Par evaluador colciencias ','Cada vez que publico',''),
	('Wed Feb 13 2019 18:15:09 GMT-0500 (EST)',3,'wilmar Yesid Campo Muñoz','wycampo@uniquindio.edu.co','4 años 7 meses','Egresado de Maestría, Egresado de Doctorado','Totalmente de acuerdo','Muy frecuentemente','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','De acuerdo',NULL,'Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Frecuentemente','Totalmente de acuerdo','Muy relevante','Muy importante','Totalmente de acuerdo','Totalmente de acuerdo','Frecuentemente','De acuerdo','De acuerdo','De acuerdo','Muy importante','Muy importante','Ni de acuerdo ni en desacuerdo','De acuerdo','Frecuentemente','Tres cuartos de tiempo','par evaluador de colciencias','','ICITS','Cada año','a manera de sugerencia considero se debería incluir un espacio académico de matemáticas (ejemplo matemáticas para ingenieros o probabilidad y procesos estocásticos) con unos contenidos acordados por el programa y desarrollados con profundidad en el espacio académico. \n\n\n');

/*!40000 ALTER TABLE `EncuestaDoctorado` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EncuestaMaestria
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EncuestaMaestria`;

CREATE TABLE `EncuestaMaestria` (
  `Timest` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `Score` int(11) DEFAULT NULL,
  `Nombre` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anioGraduacion` datetime DEFAULT NULL,
  `Actproductiva` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Relprograma` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Objprograma` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Perfadmitidos` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Desempeno` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Perfegresado` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Perfprofesores` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Numprofesores` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Proacompanamiento` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Proprofesores` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Propedagogicos` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Planestudios` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Procevaluacion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Aplconocimiento` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mecinvestigacion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Prodinvestigativa` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Interprograma` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Impacinvestigacion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Articprograma` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Internalprograma` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mecanlengua` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Bienestudiantil` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ambienteinsti` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ambienteconsidera` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Impactoocupacional` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Impactocientifica` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Segvincegresados` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Consecrecursos` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Apoyoadministrativo` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Dedicacionprograma` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Redescientificas` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Premiosrecibidos` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Comiteeditorial` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Freccvlac` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sugerencias` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cursos` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Timest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `EncuestaMaestria` WRITE;
/*!40000 ALTER TABLE `EncuestaMaestria` DISABLE KEYS */;

INSERT INTO `EncuestaMaestria` (`Timest`, `Score`, `Nombre`, `Email`, `anioGraduacion`, `Actproductiva`, `Relprograma`, `Objprograma`, `Perfadmitidos`, `Desempeno`, `Perfegresado`, `Perfprofesores`, `Numprofesores`, `Proacompanamiento`, `Proprofesores`, `Propedagogicos`, `Planestudios`, `Procevaluacion`, `Aplconocimiento`, `Mecinvestigacion`, `Prodinvestigativa`, `Interprograma`, `Impacinvestigacion`, `Articprograma`, `Internalprograma`, `Mecanlengua`, `Bienestudiantil`, `Ambienteinsti`, `Ambienteconsidera`, `Impactoocupacional`, `Impactocientifica`, `Segvincegresados`, `Consecrecursos`, `Apoyoadministrativo`, `Dedicacionprograma`, `Redescientificas`, `Premiosrecibidos`, `Comiteeditorial`, `Freccvlac`, `Sugerencias`, `Cursos`)
VALUES
	('Mon Dec 03 2018 09:38:23 GMT-0500 (EST)',0,'Fabián Andrés Anacona Anacona','fanacona@unicauca.edu.co','0000-00-00 00:00:00','No estoy vinculado actualmente de manera laboral','Estudiante de Maestría','Totalmente de acuerdo',NULL,'Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo','Importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante',NULL,NULL,'Totalmente de acuerdo','Muy frecuentemente','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Totalmente de acuerdo',NULL,'Ni de acuerdo ni en desacuerdo',NULL,NULL,'Muy frecuentemente','Dedicación exclusiva','','','','no tengo cuenta','Algunas preguntas son confusas',NULL),
	('Thu Mar 14 2019 13:23:39 GMT-0400 (EDT)',0,'Edward Alexis Molina Rivera','eamolina@unicauca.edu.co',NULL,'Universidad del Cauca, Investigador - 2 años','Estudiante de Maestría','Totalmente de acuerdo',NULL,'Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'De acuerdo','De acuerdo','Totalmente de acuerdo','Importante','Muy frecuentemente','Totalmente de acuerdo','Relevante',NULL,NULL,'Totalmente de acuerdo','Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Ni de acuerdo ni en desacuerdo',NULL,NULL,NULL,'De acuerdo','Frecuentemente','Medio tiempo','','Nombre de la distinción: Ganador 1er puesto concurso Desarrollo de aplicaciones móviles para Windows Phone.\nLo otorga: Microsoft Mobile Lab (Popayán).\nFecha: Junio 2015.\n\nNombre de la distinción: Ganador 1er puesto de \"Desafío Smart School - Reinventando el Aprendizaje con TIC\" (Obtenido por el desarrollo de la aplicación móvil Construyendo mi Conocimiento).\nLo otorga: Samsung Colombia, Universidad del Cauca, Fundación Emtel.\nFecha: 11 diciembre 2015.','','Cada vez que publico','',''),
	('Tue Mar 12 2019 13:13:41 GMT-0400 (EDT)',0,'Jhonn Pablo Rodríguez','jhonnpablo@unicauca.edu.co',NULL,'Proyecto IoT-Agro financiado por Innovación Cauca (1año)','Estudiante de Maestría','De acuerdo',NULL,'Frecuentemente','De acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','De acuerdo',NULL,'De acuerdo','De acuerdo','De acuerdo','Muy importante','Muy frecuentemente','Totalmente de acuerdo','Muy relevante',NULL,NULL,'De acuerdo','Frecuentemente','Ni de acuerdo ni en desacuerdo','De acuerdo','De acuerdo',NULL,NULL,NULL,'De acuerdo','Frecuentemente','Dedicación exclusiva','Grupo de Ingeniería Telemática (GIT)','','','Cada vez que publico','Como sugerencia, no se cuenta con recursos de publicidad (pendones, folletos, carteles) del programa. Hemos tenido el inconveniente con otros compañeros del programa, cuando tenemos sustentaciones o representaciones del programa en otros lugares, no contamos con los recursos que nos identifique como estudiantes del programa o grupo de ingeniería telemática.','Seminarios: Seminario de Investigación I, del programa de maestría.\nCongresos: Adapting Agriculture to Climate Change (AACC\'18).'),
	('Tue Mar 12 2019 14:01:16 GMT-0400 (EDT)',0,'Juan David Rincón','juanrincon@unicauca.edu.co',NULL,'Ecotecma - 3 años','Estudiante de Maestría, Estudiante de Doctorado','Totalmente de acuerdo',NULL,'Muy frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,'Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo','Muy importante','Muy frecuentemente','Totalmente de acuerdo','Relevante',NULL,NULL,'Totalmente de acuerdo','Frecuentemente','Totalmente de acuerdo','Totalmente de acuerdo','Totalmente de acuerdo',NULL,NULL,NULL,'Totalmente de acuerdo','Muy frecuentemente','Tres cuartos de tiempo','Grupo en Ingeniería Telemática','Mención honorífica trabajo de grado\nMejor Saber Pro en el grupo de referencia de ingeniería','','Cada seis meses','',''),
	('Tue Mar 12 2019 15:54:12 GMT-0400 (EDT)',0,'Alejandra Duque-Torres','aduquet@unicauca.edu.co',NULL,'Universidad del Cauca 2 anos','Estudiante de Maestría','De acuerdo',NULL,'Ocasionalmente','Ni de acuerdo ni en desacuerdo','De acuerdo','De acuerdo','De acuerdo',NULL,'Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','De acuerdo','Importante','Frecuentemente','De acuerdo','Relevante',NULL,NULL,'Totalmente de acuerdo','Ocasionalmente','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','De acuerdo',NULL,NULL,NULL,'De acuerdo','Ocasionalmente','Dedicación exclusiva','','','','Cada vez que publico','',''),
	('Tue Mar 12 2019 19:46:29 GMT-0400 (EDT)',0,'Carlos Rodriguez','carlosdr@unicauca.edu.co',NULL,'1 año','Estudiante de Maestría','De acuerdo',NULL,'Frecuentemente','De acuerdo','De acuerdo','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo',NULL,'Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Moderadamente importante','Frecuentemente','Ni de acuerdo ni en desacuerdo','Moderadamente relevante',NULL,NULL,'Ni de acuerdo ni en desacuerdo','Ocasionalmente','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo','Ni de acuerdo ni en desacuerdo',NULL,NULL,NULL,'Ni de acuerdo ni en desacuerdo','Raramente','Dedicación exclusiva','Grupo de investigacion en ingenieria telematica','','','Cada vez que hay convocatoria de grupos','','');

/*!40000 ALTER TABLE `EncuestaMaestria` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table estudiante
# ------------------------------------------------------------

DROP TABLE IF EXISTS `estudiante`;

CREATE TABLE `estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `identificacion` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `anioIngreso` datetime NOT NULL,
  `estado` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `anioGraduacion` datetime DEFAULT NULL,
  `ciudadOrigen` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudadActual` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;

INSERT INTO `estudiante` (`id`, `nombre`, `identificacion`, `anioIngreso`, `estado`, `anioGraduacion`, `ciudadOrigen`, `correo`, `telefono`, `ciudadActual`)
VALUES
	(1,'Gabriel Orozco','123456789','2018-11-26 20:46:24','Activo','2018-11-26 20:46:24','Popayan','gorozco@unicauca.edu.co','3182342314','Bogotá'),
	(2,'Natalia Arteaga Lopez','123456789','2010-01-01 00:00:00','Activo','2017-01-01 00:00:00','Popayan','nata@unicauca.edu.co','3182342314','Cali'),
	(3,'Omar Ordoñez Portilla','1023443234','2012-11-04 00:00:00','Retirado','2013-01-01 00:00:00','Popayan','omar@unicauca.edu.co','3103103103','Barranquilla');

/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table factor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `factor`;

CREATE TABLE `factor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ponderacion` int(11) DEFAULT NULL,
  `justificacion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `porcentaje` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ED38EC00F0D76C46` (`modelo`),
  CONSTRAINT `FK_ED38EC00F0D76C46` FOREIGN KEY (`modelo`) REFERENCES `modelo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `factor` WRITE;
/*!40000 ALTER TABLE `factor` DISABLE KEYS */;

INSERT INTO `factor` (`id`, `modelo`, `nombre`, `descripcion`, `ponderacion`, `justificacion`, `valor`, `porcentaje`)
VALUES
	(1,1,'Cumplimiento de los objetivos del programa y coherencia con la Visión y Misión de la Universidad','En este factor se analiza el cumplimiento de los objetivos del programa, así como la coherencia entre estos objetivos y la Visión, Misión y proyecto institucional de la universidad.',12,NULL,10,0),
	(2,1,'Estudiantes','Uno de los elementos fundamentales asociados a la calidad de los doctorados es el de la calidad de los estudiantes admitidos, su dedicación al programa, su inmersión en investigación y su productividad académica y científica.',8,'',0,0),
	(3,1,'Profesores - Investigadores','Haciendo énfasis en lo planteado en la sección 4 es conveniente señalar dos aspectos que generan requerimientos especiales para los profesores: su disponibilidad de tiempo y su capacidad tutorial basada en la experiencia directa y activa en el campo de la investigación.',9,'',0,0),
	(4,1,'Procesos académicos y lineamientos curriculares','Los Procesos Académicos de Calidad para programas de Doctorados y Maestrías convergen en la formación y el desarrollo de competencias investigativas.',15,'',0,0),
	(5,1,'Investigación, generación de conocimiento y producción artística','Los programas de maestría y doctorado deben estar basados en la investigación, tanto en lo que atañe a sus propósitos, como en lo que respecta a los presupuestos sobre los cuales se diseñan los programas. El desarrollo y las condiciones relativas a la investigación representan un aspecto esencial para la acreditación de alta calidad en estos tipos de programas de posgrado. La investigación es una de las principales funciones académicas que debe estar presente en todos los niveles de la educación superior. Pero en el caso de las maestrías y los doctorados, el proceso de investigación define la esencia misma del programa.\nUno de los requisitos para asegurar la alta calidad de las maestrías y de los doctorados es la capacidad que tiene el programa para movilizar recursos financieros externos que aseguren la viabilidad de los programas de investigación y su sostenibilidad en el tiempo. La investigación de calidad no se puede hacer sin recursos financieros. Y debido a los costos crecientes de la investigación en el mundo, esto requiere una alta capacidad por parte del programa de movilizar dichos recursos financieros a partir de fuentes nacionales internacionales. Por lo tanto, la capacidad que tiene un programa para efectivamente movilizar dichos recursos es un indicador de su calidad. De ahí la importancia de contar con las cifras de financiación para investigación que un programa logra movilizar durante períodos de tiempo definidos (v.gr. los últimos tres años, o los últimos cinco años).',14,'',0,0),
	(6,1,'Articulación con el entorno y capacidad para generar procesos de innovación','Para poder proyectarse en su entorno y generar procesos de innovación que creen valor a partir del conocimiento, el investigador y el estudiante deben estar preparados para confrontar dicho entorno en su complejidad real, involucrando múltiples variables que no respetan fronteras disciplinarias. Surge la necesidad de desarrollar enfoques transdisciplinarios que puedan analizar y manejar dicha complejidad.\nLa importancia de este factor varía de un campo de la ciencia al otro. No es lo mismo un Doctorado en Ingeniería o en Medicina, que en Física o en Química, o en Sociales o Artes.',0,'',0,0),
	(7,1,'Internacionalización, alianzas estratéticas e inserción en redes científicas globales','La internacionalización es un factor de gran importancia en la evaluación de programas de posgrado. La formación de profesionales al nivel de Maestría y Doctorado requiere el desarrollo de una capacidad para insertarse en la ciencia global y formar parte activa de redes de investigación a nivel regional y mundial. Igualmente la persona tiene que aprender a formar parte de comunidades científicas globales y a interactuar con colegas en diversas partes del mundo.',0,'',0,0),
	(8,1,'Bienestar y ambiente institucional','Este factor para los programas de maestrías y doctorados no se debe centrar en analizar temas relacionados con bienestar en general de la comunidad universitaria. En este factor la evaluación se debe dirigir exclusivamente al bienestar que repercute directamente en los estudiantes de posgrado y en la calidad de estos programas.',0,'',0,0),
	(9,1,'Graduados y análisis de impacto del programa','Como se indicó anteriormente, la calidad de los graduados (egresados con título) representa una síntesis de la calidad de los estudiantes, su capacidad, la calidad misma del programa y la calidad de los profesores.',0,'',0,0),
	(10,1,'Recursos físicos y gestión admiinstrativa y financiera','En este factor la evaluación debe concentrarse en los recursos físicos y de la infraestructura para la docencia y la investigación que el programa de posgrado tiene a su disposición, así como la calidad del apoyo administrativo al programa de posgrado.',0,'',0,0),
	(21,3,'Cumplimiento de los objetivos del programa y coherencia con la Visión y Misión de la Universidad','En este factor se analiza el cumplimiento de los objetivos del programa, así como la coherencia entre estos objetivos y la Visión, Misión y proyecto institucional de la universidad.',5,'Este factor se ha ponderado con el 5 %. La Universidad define su horizonte a través de su visión y misión mostrando el compromiso académico con su entorno a través de la docencia, la investigación y la proyección social.',NULL,0),
	(22,3,'Estudiantes','Uno de los elementos fundamentales asociados a la calidad de los doctorados es el de la calidad de los estudiantes admitidos, su dedicación al programa, su inmersión en investigación y su productividad académica y científica.',15,'Este factor se ha ponderado con el 15 % resaltando la importancia que estos tienen para el pro- grama y para la Universidad. Son vistos como claros actores activos dispuestos a cultivar la disciplina y a compartir sus experiencias con el grupo y sus profesores. Por tal razón es importante que se mantenga un continuo seguimiento a los estudiantes mientras conservan ese estado, y luego cuando pasan a ser egresados del programa, para definir metodologías, estrategias y demás que ayuden a mejorar la calidad de su formación integral en el programa.',NULL,0),
	(23,3,'Profesores - Investigadores','Haciendo énfasis en lo planteado en la sección 4 es conveniente señalar dos aspectos que generan requerimientos especiales para los profesores: su disponibilidad de tiempo y su capacidad tutorial basada en la experiencia directa y activa en el campo de la investigación.',15,'El factor profesores se ponderó con un 15 %, destacando su rol como dinamizadores de los procesos de enseñanza aprendizaje, que a su vez cuentan con la capacidad para provocar la reflexión, el análisis y despertar la curiosidad científica de sus estudiantes. Desde este punto de vista, son quienes dan cabida a las actividades de investigación, innovación y actualización del conocimiento en su rol como intermediarios entre el alumno y el saber, el cual está en permanente cambio o transformación.',NULL,0),
	(24,3,'Procesos académicos y lineamientos curriculares','Los Procesos Académicos de Calidad para programas de Doctorados y Maestrías convergen en la formación y el desarrollo de competencias investigativas.',10,'Este factor ha sido ponderado con el 10 % y tiene el mayor peso dado que en él se conjugan las acciones para llevar a la práctica el currículo. La estructuración de un currículo determina la claridad de las estrategias para la formación de los estudiantes dentro del programa. Igualmente, es la razón de ser de una Universidad, sin desconocer la importancia de las otras actividades académicas como la investigación y la proyección social. Los procesos académicos se hacen visibles mediante las políticas, los objetivos y las estrategias que se proponen desde la Institución y el Programa mismo, y se hacen manifiestos en el currículo, como un espacio donde adquiere su sentido la academia, dada su condición de articulador del conocimiento. De esta manera, se hace posible, entre otras cosas, la formación integral del individuo y la investigación.',NULL,0),
	(25,3,'Investigación, generación de conocimiento y producción artística','Los programas de maestría y doctorado deben estar basados en la investigación, tanto en lo que atañe a sus propósitos, como en lo que respecta a los presupuestos sobre los cuales se diseñan los programas. El desarrollo y las condiciones relativas a la investigación representan un aspecto esencial para la acreditación de alta calidad en estos tipos de programas de posgrado. La investigación es una de las principales funciones académicas que debe estar presente en todos los niveles de la educación superior. Pero en el caso de las maestrías y los doctorados, el proceso de investigación define la esencia misma del programa.\r\nUno de los requisitos para asegurar la alta calidad de las maestrías y de los doctorados es la capacidad que tiene el programa para movilizar recursos financieros externos que aseguren la viabilidad de los programas de investigación y su sostenibilidad en el tiempo. La investigación de calidad no se puede hacer sin recursos financieros. Y debido a los costos crecientes de la investigación en el mundo, esto requiere una alta capacidad por parte del programa de movilizar dichos recursos financieros a partir de fuentes nacionales internacionales. Por lo tanto, la capacidad que tiene un programa para efectivamente movilizar dichos recursos es un indicador de su calidad. De ahí la importancia de contar con las cifras de financiación para investigación que un programa logra movilizar durante períodos de tiempo definidos (v.gr. los últimos tres años, o los últimos cinco años).',20,'Ha sido ponderado con el 20 % dada la importancia que se le da al componente investigativo dentro del plan de formación del programa. Pues un programa de Maestría claramente debe presentar un gran aporte al perfil investigativo del estudiante además, la Universidad y especialmente el Departamento de Telemática, se han preocupado por cultivar un área de conocimiento como la  Telemática en todos sus niveles de formación buscando que el estudiante pueda transitar por cada uno de ellos de la mejor manera posible, y destacando a la investigación como el componente esencial que permite la actualización constante del conocimiento y la interacción con el entorno para conocer sus problemas y plantear soluciones.',0,0),
	(26,3,'Articulación con el entorno y capacidad para generar procesos de innovación','Para poder proyectarse en su entorno y generar procesos de innovación que creen valor a partir del conocimiento, el investigador y el estudiante deben estar preparados para confrontar dicho entorno en su complejidad real, involucrando múltiples variables que no respetan fronteras disciplinarias. Surge la necesidad de desarrollar enfoques transdisciplinarios que puedan analizar y manejar dicha complejidad.\r\nLa importancia de este factor varía de un campo de la ciencia al otro. No es lo mismo un Doctorado en Ingeniería o en Medicina, que en Física o en Química, o en Sociales o Artes.',5,'A este factor se la ha asignado una ponderación del 5 % dado que para el programa es importante que el estudiante cuente con la posibilidad de conocer el medio en el que ejercerá su profesión a través de experiencias de diferente índole a los que puede acceder a través de convenios o eventos dentro de la misma Universidad, o incluso dentro de otros programas de posgrado tal como el seminario permanente de investigación que ofrece el programa.',NULL,0),
	(27,3,'Internacionalización, alianzas estratéticas e inserción en redes científicas globales','La internacionalización es un factor de gran importancia en la evaluación de programas de posgrado. La formación de profesionales al nivel de Maestría y Doctorado requiere el desarrollo de una capacidad para insertarse en la ciencia global y formar parte activa de redes de investigación a nivel regional y mundial. Igualmente la persona tiene que aprender a formar parte de comunidades científicas globales y a interactuar con colegas en diversas partes del mundo.',5,'A este factor se la ha asignado una ponderación del 5 % dado que para el programa es importante que el estudiante cuente con la posibilidad de tener contacto con otros estilos de trabajo y de cooperación con pares extranjeros a través de experiencias de diferente índole a los que puede acceder a través de convenios o eventos.',0,0),
	(28,3,'Bienestar y ambiente institucional','Este factor para los programas de maestrías y doctorados no se debe centrar en analizar temas relacionados con bienestar en general de la comunidad universitaria. En este factor la evaluación se debe dirigir exclusivamente al bienestar que repercute directamente en los estudiantes de posgrado y en la calidad de estos programas.',5,'Este factor fue ponderado con el 10 %. Si bien puede parecer un porcentaje relativamente bajo para el bienestar institucional la intención es no desconocer los servicios que la Universidad ofrece a sus estudiantes. Dada la naturaleza del programa, la población estudiantil es de formación profesional con empleo, razón por la cual su rutina en la Universidad es, generalmente, solo asistir a clase. También se debe destacar que en este factor se condensan las políticas orientadas a mantener un clima adecuado que contribuya al crecimiento personal de la comunidad académica.',0,0),
	(29,3,'Graduados y análisis de impacto del programa','Como se indicó anteriormente, la calidad de los graduados (egresados con título) representa una síntesis de la calidad de los estudiantes, su capacidad, la calidad misma del programa y la calidad de los profesores.',5,'Este factor fue ponderado con el 5 % debido a que los egresados son un reflejo de la calidad de la formación de sus programas académicos. Su desempeño y experiencia en el medio aportan información que permite revisar el currículo y actualizarlo en beneficio de los intereses de la comunidad académica. El papel de los egresados en la sociedad muestra el impacto que el programa realiza sobre el medio.',NULL,0),
	(30,3,'Recursos físicos y gestión admiinstrativa y financiera','En este factor la evaluación debe concentrarse en los recursos físicos y de la infraestructura para la docencia y la investigación que el programa de posgrado tiene a su disposición, así como la calidad del apoyo administrativo al programa de posgrado.',10,'Este factor fue ponderado con el 5 % debido a que los egresados son un reflejo de la calidad de la formación de sus programas académicos. Su desempeño y experiencia en el medio aportan información que permite revisar el currículo y actualizarlo en beneficio de los intereses de la comunidad académica. El papel de los egresados en la sociedad muestra el impacto que el programa realiza sobre el medio.',NULL,0),
	(81,9,'Cumplimiento de los objetivos del programa y coherencia con la Visión y Misión de la Universidad','En este factor se analiza el cumplimiento de los objetivos del programa, así como la coherencia entre estos objetivos y la Visión, Misión y proyecto institucional de la universidad.',0,'',0,0),
	(82,9,'Estudiantes','Uno de los elementos fundamentales asociados a la calidad de los doctorados es el de la calidad de los estudiantes admitidos, su dedicación al programa, su inmersión en investigación y su productividad académica y científica.',0,'',0,0),
	(83,9,'Profesores - Investigadores','Haciendo énfasis en lo planteado en la sección 4 es conveniente señalar dos aspectos que generan requerimientos especiales para los profesores: su disponibilidad de tiempo y su capacidad tutorial basada en la experiencia directa y activa en el campo de la investigación.',0,'',0,0),
	(84,9,'Procesos académicos y lineamientos curriculares','Los Procesos Académicos de Calidad para programas de Doctorados y Maestrías convergen en la formación y el desarrollo de competencias investigativas.',0,'',0,0),
	(85,9,'Investigación, generación de conocimiento y producción artística','Los programas de maestría y doctorado deben estar basados en la investigación, tanto en lo que atañe a sus propósitos, como en lo que respecta a los presupuestos sobre los cuales se diseñan los programas. El desarrollo y las condiciones relativas a la investigación representan un aspecto esencial para la acreditación de alta calidad en estos tipos de programas de posgrado. La investigación es una de las principales funciones académicas que debe estar presente en todos los niveles de la educación superior. Pero en el caso de las maestrías y los doctorados, el proceso de investigación define la esencia misma del programa.\nUno de los requisitos para asegurar la alta calidad de las maestrías y de los doctorados es la capacidad que tiene el programa para movilizar recursos financieros externos que aseguren la viabilidad de los programas de investigación y su sostenibilidad en el tiempo. La investigación de calidad no se puede hacer sin recursos financieros. Y debido a los costos crecientes de la investigación en el mundo, esto requiere una alta capacidad por parte del programa de movilizar dichos recursos financieros a partir de fuentes nacionales internacionales. Por lo tanto, la capacidad que tiene un programa para efectivamente movilizar dichos recursos es un indicador de su calidad. De ahí la importancia de contar con las cifras de financiación para investigación que un programa logra movilizar durante períodos de tiempo definidos (v.gr. los últimos tres años, o los últimos cinco años).',0,'',0,0),
	(86,9,'Articulación con el entorno y capacidad para generar procesos de innovación','Para poder proyectarse en su entorno y generar procesos de innovación que creen valor a partir del conocimiento, el investigador y el estudiante deben estar preparados para confrontar dicho entorno en su complejidad real, involucrando múltiples variables que no respetan fronteras disciplinarias. Surge la necesidad de desarrollar enfoques transdisciplinarios que puedan analizar y manejar dicha complejidad.\nLa importancia de este factor varía de un campo de la ciencia al otro. No es lo mismo un Doctorado en Ingeniería o en Medicina, que en Física o en Química, o en Sociales o Artes.',0,'',0,0),
	(87,9,'Internacionalización, alianzas estratéticas e inserción en redes científicas globales','La internacionalización es un factor de gran importancia en la evaluación de programas de posgrado. La formación de profesionales al nivel de Maestría y Doctorado requiere el desarrollo de una capacidad para insertarse en la ciencia global y formar parte activa de redes de investigación a nivel regional y mundial. Igualmente la persona tiene que aprender a formar parte de comunidades científicas globales y a interactuar con colegas en diversas partes del mundo.',0,'',0,0),
	(88,9,'Bienestar y ambiente institucional','Este factor para los programas de maestrías y doctorados no se debe centrar en analizar temas relacionados con bienestar en general de la comunidad universitaria. En este factor la evaluación se debe dirigir exclusivamente al bienestar que repercute directamente en los estudiantes de posgrado y en la calidad de estos programas.',0,'',0,0),
	(89,9,'Graduados y análisis de impacto del programa','Como se indicó anteriormente, la calidad de los graduados (egresados con título) representa una síntesis de la calidad de los estudiantes, su capacidad, la calidad misma del programa y la calidad de los profesores.',0,'',0,0),
	(90,9,'Recursos físicos y gestión admiinstrativa y financiera','En este factor la evaluación debe concentrarse en los recursos físicos y de la infraestructura para la docencia y la investigación que el programa de posgrado tiene a su disposición, así como la calidad del apoyo administrativo al programa de posgrado.',0,'',0,0);

/*!40000 ALTER TABLE `factor` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table factor_model
# ------------------------------------------------------------

DROP TABLE IF EXISTS `factor_model`;

CREATE TABLE `factor_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ponderacion` int(11) NOT NULL,
  `justificacion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor` double DEFAULT 0,
  `porcentaje` double DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `IDX_ED38EC00F0D76C46` (`modelo`),
  CONSTRAINT `factor_model_ibfk_1` FOREIGN KEY (`modelo`) REFERENCES `modelo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `factor_model` WRITE;
/*!40000 ALTER TABLE `factor_model` DISABLE KEYS */;

INSERT INTO `factor_model` (`id`, `modelo`, `nombre`, `descripcion`, `ponderacion`, `justificacion`, `valor`, `porcentaje`)
VALUES
	(1,NULL,'Cumplimiento de los objetivos del programa y coherencia con la Visión y Misión de la Universidad','En este factor se analiza el cumplimiento de los objetivos del programa, así como la coherencia entre estos objetivos y la Visión, Misión y proyecto institucional de la universidad.',0,'',0,0),
	(2,NULL,'Estudiantes','Uno de los elementos fundamentales asociados a la calidad de los doctorados es el de la calidad de los estudiantes admitidos, su dedicación al programa, su inmersión en investigación y su productividad académica y científica.',0,'',0,0),
	(3,NULL,'Profesores - Investigadores','Haciendo énfasis en lo planteado en la sección 4 es conveniente señalar dos aspectos que generan requerimientos especiales para los profesores: su disponibilidad de tiempo y su capacidad tutorial basada en la experiencia directa y activa en el campo de la investigación.',0,'',0,0),
	(4,NULL,'Procesos académicos y lineamientos curriculares','Los Procesos Académicos de Calidad para programas de Doctorados y Maestrías convergen en la formación y el desarrollo de competencias investigativas.',0,'',0,0),
	(5,NULL,'Investigación, generación de conocimiento y producción artística','Los programas de maestría y doctorado deben estar basados en la investigación, tanto en lo que atañe a sus propósitos, como en lo que respecta a los presupuestos sobre los cuales se diseñan los programas. El desarrollo y las condiciones relativas a la investigación representan un aspecto esencial para la acreditación de alta calidad en estos tipos de programas de posgrado. La investigación es una de las principales funciones académicas que debe estar presente en todos los niveles de la educación superior. Pero en el caso de las maestrías y los doctorados, el proceso de investigación define la esencia misma del programa.\nUno de los requisitos para asegurar la alta calidad de las maestrías y de los doctorados es la capacidad que tiene el programa para movilizar recursos financieros externos que aseguren la viabilidad de los programas de investigación y su sostenibilidad en el tiempo. La investigación de calidad no se puede hacer sin recursos financieros. Y debido a los costos crecientes de la investigación en el mundo, esto requiere una alta capacidad por parte del programa de movilizar dichos recursos financieros a partir de fuentes nacionales internacionales. Por lo tanto, la capacidad que tiene un programa para efectivamente movilizar dichos recursos es un indicador de su calidad. De ahí la importancia de contar con las cifras de financiación para investigación que un programa logra movilizar durante períodos de tiempo definidos (v.gr. los últimos tres años, o los últimos cinco años).',0,'',0,0),
	(6,NULL,'Articulación con el entorno y capacidad para generar procesos de innovación','Para poder proyectarse en su entorno y generar procesos de innovación que creen valor a partir del conocimiento, el investigador y el estudiante deben estar preparados para confrontar dicho entorno en su complejidad real, involucrando múltiples variables que no respetan fronteras disciplinarias. Surge la necesidad de desarrollar enfoques transdisciplinarios que puedan analizar y manejar dicha complejidad.\nLa importancia de este factor varía de un campo de la ciencia al otro. No es lo mismo un Doctorado en Ingeniería o en Medicina, que en Física o en Química, o en Sociales o Artes.',0,'',0,0),
	(7,NULL,'Internacionalización, alianzas estratéticas e inserción en redes científicas globales','La internacionalización es un factor de gran importancia en la evaluación de programas de posgrado. La formación de profesionales al nivel de Maestría y Doctorado requiere el desarrollo de una capacidad para insertarse en la ciencia global y formar parte activa de redes de investigación a nivel regional y mundial. Igualmente la persona tiene que aprender a formar parte de comunidades científicas globales y a interactuar con colegas en diversas partes del mundo.',0,'',0,0),
	(8,NULL,'Bienestar y ambiente institucional','Este factor para los programas de maestrías y doctorados no se debe centrar en analizar temas relacionados con bienestar en general de la comunidad universitaria. En este factor la evaluación se debe dirigir exclusivamente al bienestar que repercute directamente en los estudiantes de posgrado y en la calidad de estos programas.',0,'',0,0),
	(9,NULL,'Graduados y análisis de impacto del programa','Como se indicó anteriormente, la calidad de los graduados (egresados con título) representa una síntesis de la calidad de los estudiantes, su capacidad, la calidad misma del programa y la calidad de los profesores.',0,'',0,0),
	(10,NULL,'Recursos físicos y gestión admiinstrativa y financiera','En este factor la evaluación debe concentrarse en los recursos físicos y de la infraestructura para la docencia y la investigación que el programa de posgrado tiene a su disposición, así como la calidad del apoyo administrativo al programa de posgrado.',0,'',0,0);

/*!40000 ALTER TABLE `factor_model` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table indicador
# ------------------------------------------------------------

DROP TABLE IF EXISTS `indicador`;

CREATE TABLE `indicador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caracteristica` int(11) DEFAULT NULL,
  `nombre` longtext COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CD123EC3999DAE49` (`caracteristica`),
  CONSTRAINT `FK_CD123EC3999DAE49` FOREIGN KEY (`caracteristica`) REFERENCES `caracteristica` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `indicador` WRITE;
/*!40000 ALTER TABLE `indicador` DISABLE KEYS */;

INSERT INTO `indicador` (`id`, `caracteristica`, `nombre`, `descripcion`)
VALUES
	(1,1,'Claridad en los objetivos del programa.',NULL),
	(2,1,'Capacidad demostrada para lograr dichos objetivos.',NULL),
	(3,1,'Coherencia entre los objetivos del programa y la Visión,\r\nMisión y Proyecto Institucional de la Universidad.',NULL),
	(4,2,'Documento que incluye la reglamentación del proceso de admisión.',NULL),
	(5,2,'Rigurosidad del proceso de selección de estudiantes.',NULL),
	(6,2,'Porcentaje de admitidos que cumplen con el nivel de dominio mínimo de una lengua extranjera establecido por el programa.',NULL),
	(7,2,'Estrategia para asegurar un número de estudiantes adecuado en el programa.',NULL),
	(8,2,'Estudiantes de tiempo completo, es decir exclusividad en su dedicación al programa (para el caso de doctorados)',NULL),
	(9,2,'Capacidad del programa de atraer estudiantes de otras instituciones, de otras regiones del país y de otros países.',NULL),
	(10,3,'Tasa de deserción de los estudiantes',NULL),
	(11,3,'No. de publicaciones realizadas por los estudiantes del programa en revistas indexadas nacionales e internacionales',NULL),
	(12,3,'Promedio de estudiantes que asisten a congresos y otros\r\neventos académicos, científicos o de creación artística\r\nnacionales e internacionales',NULL),
	(13,3,'Participación de los estudiantes en grupos de\r\ninvestigación, creación artística, redes de investigación y\r\ncomunidades científicas.',NULL),
	(14,3,'Mecanismo de evaluación del desempeño de los\r\nestudiantes, rigurosidad y transparencia del mismo',NULL),
	(15,4,'Documento en el que se expresa el perfil que se espera\r\nsatisfaga el estudiante al culminar el programa',NULL),
	(16,4,'Tiempo de duración promedio por cohorte para la\r\nobtención del grado.',NULL),
	(17,4,'Tiempo de duración promedio en años, por estudiante,\r\npara la obtención del grado.',NULL),
	(18,5,'Documento sobre políticas de selección, renovación y\r\ncontratación de profesores',NULL),
	(19,5,'Número adecuado de profesores de tiempo completo, con\r\ndoctorado que desarrollan actividades académicas en el\r\nprograma, y capacidad para dirigir tesis de grado (habilitados)',NULL),
	(20,5,'Número de Profesores Visitantes de Universidades\r\nextranjeras o colombianas: cursos, seminarios, investigación o\r\ntutor tesis.',NULL),
	(21,5,'Número de distinciones que Profesores han recibido en\r\núltimos cinco años (premios, pertenencia por invitación a\r\nAcademias nacionales o extranjeros, invitación como\r\nProfesor Visitante).',NULL),
	(22,5,'Porcentaje de profesores por tipo de vinculación que\r\ncumplen el nivel de dominio esperado en un lengua extranjera',NULL),
	(23,5,'Dedicación de los profesores a la investigación.\r\nDistribución semestral de los programas de trabajo académico\r\nde los profesores según su dedicación a la investigación,\r\ndocencia y extensión.',NULL),
	(24,6,'Número de publicaciones científicas de los profesores del\r\nprograma en los últimos cinco años:\r\nNo. de artículos en revistas internacionales indexadas\r\nNo. de artículos en revistas nacionales indexadas\r\nNo. de libros (con ISBN) relacionados con investigación\r\ndesarrollada por el programa\r\nNo. de capítulos en libros (con ISBN) relacionados con\r\ninvestigación desarrollada por el programa.\r\nOtras publicaciones',NULL),
	(25,6,'Impacto de las publicaciones, medido en términos de\r\nindicadores de citas bibliográficas y cocitaciones (v.gr. ISI y\r\nScimago/Scopus)',NULL),
	(26,6,'Número de Patentes, productos tecnológicos u otro tipo de\r\nresultados de las investigaciones realizadas, en los últimos\r\ncinco años',NULL),
	(27,6,'(Cuando sea pertinente) Número de obras musicales o\r\nartísticas sometidas a crítica.',NULL),
	(28,6,'Participación en Comités Editoriales',NULL),
	(29,7,'Relación Estudiante/Tutor en el programa. No. de\r\nestudiantes por tutor (sólo profesores de TC y habilitados para\r\ndirigir tesis)',NULL),
	(30,7,'Flexibilidad del programa para permitir tutores externos:\r\nNo. de tutores externos (sólo pueden ser co-tutores)',NULL),
	(31,7,'Política sobre asignación de profesores como jurados de\r\ntesis.',NULL),
	(32,8,'Política de selección, renovación y contratación de\r\nprofesores',NULL),
	(33,8,'Existencia de políticas de relevo generacional coherentes\r\ncon las Líneas de Investigación existentes o planeadas',NULL),
	(34,8,'Formación continuada de profesores; política sobre años\r\nsabáticos y postdoctorado; Número de profesores que se han\r\nacogido a estas posibilidades en los tres últimos años.',NULL),
	(35,8,'Política y mecanismos de evaluación de profesores y\r\ncoherencia entre remuneración y méritos académicos.',NULL),
	(36,8,'Apreciación de estudiantes y egresados sobre la calidad de\r\nlas competencias pedagógicas del grupo de profesores del\r\nprograma.',NULL),
	(37,8,'. Política de flexibilidad que permita al programa contar\r\ncon tutores externos.',NULL),
	(38,9,'Documento con políticas de acompañamiento estudiantil y tutoría académica.',NULL),
	(39,9,'Desarrollo de competencias básicas de investigación, mediante estrategias propias de cada campo de conocimiento','Desarrollo de competencias básicas de investigación, mediante estrategias propias de cada campo de conocimiento, tales como:\r\n. Capacidad de indagación en los estudiantes.\r\n. Capacidad de pensamiento autónomo y dominio de las técnicas de investigación pertinentes.\r\n. Capacidad de construir estados del arte y tendencias en un campo del conocimiento\r\n. Capacidad de comunicación de avances y resultados de la investigación'),
	(40,9,'Estrategias y mecanismos de seguimiento por parte de los Tutores (Directores de Tesis o de los Trabajos de Grado) de las labores desarrolladas por los estudiantes.',NULL),
	(41,9,'Número de Tesis Doctorales o Trabajos de Grado premiados por fuentes externas a la universidad.',NULL),
	(42,9,'Apreciación de los estudiantes sobre la calidad del proceso de acompañamiento de los tutores en su proceso de formación.',NULL),
	(43,10,'Facilidad de acceso a cursos, seminarios o conferencias en la universidad sobre diversos aspectos relacionados con\r\ncambios en la ciencia mundial y con aspectos relevantes del entorno social y económico del país o de la región, o con\r\ntemas ambientales que definen necesidades de desarrollo que la sociedad confronta.',NULL),
	(44,10,'En los campos del conocimiento que sean pertinentes (v.gr. ingenierías y administración), relación entre el conocimiento generado por la ciencia y su aplicación en el sector productivo, incluyendo aspectos de emprendimiento y desarrollo empresarial.',NULL),
	(45,11,'Oferta académica amplia que suministre opciones al estudiante de temas o líneas de investigación en las que puede trabajar',NULL),
	(46,11,'Aprovechamiento de seminarios y ofertas académicas de otros grupos de investigación y programas, de la propia universidad o de otras universidades nacionales o extranjeras.',NULL),
	(47,11,'Convenios que faciliten, promuevan y garanticen la movilidad de estudiantes y profesores, mediante estadías de investigación en otras universidades nacionales y extranjeras.',NULL),
	(48,12,'Práctica real de procesos periódicos de autoevaluación, conducentes a mejoras en el programa. Existencia de criterios y procedimientos claros que orientes este proceso',NULL),
	(49,12,'Estrategias y evidencias de seguimiento a dicha evaluación.',NULL),
	(50,12,'Grado de participación de profesores, estudiantes, directivos y personal técnico y administrativo en dichos procesos.',NULL),
	(51,13,'Documento con la política institucional sobre la investigación',NULL),
	(52,13,'Estrategias por medio de las cuales la investigación constituye la base del programa, y como ella contribuirá a formar investigadores, en el caso e los doctorados, o generar competencias investigativas en el caso de las maestrías.',NULL),
	(53,13,'Existencia de un o más grupos de investigación, consolidados, con publicaciones científicas o con los productos que sean relevantes en cada campo del conocimiento.',NULL),
	(54,13,'En las líneas de investigación y creación artística existen investigadores activos que pueden suministrar tutorías a los estudiantes en sus respectivos campos.(Número de investigadores, líneas de investigación, producción científica).',NULL),
	(55,13,'Políticas claras de apoyo a la investigación y estrategias que aseguren la implementación de esta (v.gr. reconocimiento de tiempo a profesores, laboratorios adecuados, financiación de proyectos, otros).',NULL),
	(56,13,'Número de Tesis Doctorales o Trabajos de Grado premiados por fuentes externas a la universidad.',NULL),
	(57,13,'Apreciación sobre las estrategias utilizadas por el programa para articular sus líneas de investigación con la formación de los estudiantes.',NULL),
	(58,14,'Número de grupos de investigación y creación artística relacionados con el programa, clasificados en categoría A1, A y B en el ScientiCol de COLCIENCIAS.',NULL),
	(59,14,'Banco de proyectos de investigación y creación artística de cada grupo, constituida por: Número de proyectos terminados en los últimos cinco años; y número de proyectos de investigación y creación artística activos o en ejecución.',NULL),
	(60,14,'Número de investigadores por grupo y línea de investigación.',NULL),
	(61,14,'11. Porcentaje de recursos financieros internos o externos que el programa logró movilizar para el desarrollo del conjunto de proyectos de investigación y creación artística, en los últimos 5 años.',NULL),
	(62,14,'Integración de los grupos de investigación y creación artística en consorcios o redes de conocida trayectoria 29 internacional.',NULL),
	(63,14,'Porcentaje de profesores del programa por grupo de investigación o de creación artística y/o por redes de investigación (centros de excelencia).',NULL),
	(64,14,'Apreciación sobre las estrategias utilizadas por el programa para articular sus líneas de investigación a los\r\ngrupos de investigación de la universidad y de otras universidades nacionales e internacionales.',NULL),
	(65,15,'Número de publicaciones indexadas, en el ScientiCol y en bases de datos internacionales.',NULL),
	(66,15,'Número de citas y co-citaciones (indicador de impacto en la comunidad científica).',NULL),
	(67,15,'Número patentes, productos tecnológicos, obras de arte con reconocimiento público, etc.',NULL),
	(68,15,'Valoración del aporte real de cada grupo de investigación creación artística que apoya el posgrado o del programa mismo.',NULL),
	(69,15,'Número de tesis o trabajos de grado terminados en los últimos ocho años.',NULL),
	(70,16,'Posibilidad de tomar seminarios o cursos en campos complementarios a los del programa de posgrado ya sea en la propia universidad o en otras universidades, vía alianzas estratégicas.',NULL),
	(71,16,'Posibilidad de participar en las actividades de otros grupos de investigación relacionados con el programa de posgrado o con programas complementarios.',NULL),
	(72,16,'Posibilidad de trabajar con Directores de Tesis que sean de otras universidades y programas, que aporten perspectivas diferentes a las del cuerpo docente del programa.',NULL),
	(73,16,'Porcentaje de convenios activos y en funcionamiento firmados con instituciones nacionales e internacionales para el desarrollo del programa.',NULL),
	(74,17,'Documento en el que se exprese el aporte de cada grupo de investigación o de creación artística para el desarrollo del país o de la región.',NULL),
	(75,17,'Existencia de líneas de investigación o de creación artística relacionadas con problemas o temas de desarrollo de la comunidad nacional, regional o local, o con problemas del sector productivo o de otros usuarios del conocimiento.',NULL),
	(76,17,'Innovaciones, cambios o mejoras en el entorno (social o productivo), o innovaciones artísticas y culturales, introducidas a partir de resultados de tesis de grado de estudiantes, de proyectos de investigación realizados por el grupo, o de servicios de extensión ofrecidos por el programa.',NULL),
	(77,17,'Apreciación de la comunidad académica sobre la relevancia de las líneas de investigación y de sus proyectos para el país.',NULL),
	(78,18,'Investigaciones desarrolladas en el Doctorado o en la Maestría sobre problemas o desafíos que se enfrentan a nivel nacional, regional y local.',NULL),
	(79,18,'Número de temas de las tesis de grado que se han realizado sobre aspectos o problemas de interés para el desarrollo nacional, o para el desarrollo regional o local.',NULL),
	(80,18,'Porcentaje de contratos con actores sociales del entorno (v,gr, empresas, gremios, agencias de gobierno, ONGs, etc.) para realizar investigación o servicios de consultorías relacionados con temas de su interés.',NULL),
	(81,19,'Documento en los que se expresen acuerdos para otorgar\r\ndoble titulación con universidades extranjeras.',NULL),
	(82,19,'Requisito de hacer pasantías de seis meses o más en grupos\r\nde investigación en el extranjero, en grupos de reconocida\r\ntrayectoria en su respectivo campo.',NULL),
	(83,19,'Facilidad de homologación con programas de reconocida\r\ncalidad en el extranjero y posibilidad de realizar Programas\r\ncon doble titulación o programas conjuntos.',NULL),
	(84,19,'Oferta de seminarios y cursos de carácter internacional\r\n(temas internacionales).',NULL),
	(85,19,'Requisito de lengua extranjera y cursos o seminarios\r\nofrecidos en otras lenguas',NULL),
	(86,20,'Porcentaje de estudiantes extranjeros en el programa y\r\nexistencia en la universidad de una oficina o servicio\r\nencargado de estudiantes extranjeros, con una clara estrategia\r\npara integrar estos últimos al programa y a la ciudad.',NULL),
	(87,20,'Convenios de intercambio activos con universidades\r\nextranjeras.',NULL),
	(88,20,'Experiencias de homologación de cursos del programa en\r\nprogramas extranjeros.',NULL),
	(89,20,'Profesores visitantes extranjeros en el programa.',NULL),
	(90,20,'Profesores del programa como Profesores Visitantes en\r\nuniversidades extranjeras.',NULL),
	(91,20,'Becas o proyectos de investigación financiadas por fuentes\r\nextranjeras.',NULL),
	(92,20,'Apreciación de estudiantes y egresados sobre la\r\nefectividad de la divulgación de posibilidades para hacer\r\npasantías con grupos de investigación y creación artística en el\r\nextranjero.',NULL),
	(93,21,'Participación en redes internacionales de investigación.',NULL),
	(94,21,'Investigadores del programa que han hecho pasantías en\r\ngrupos de investigación extranjeros.',NULL),
	(95,21,'Proyectos de investigación conjuntos con universidades o\r\ncentros de investigación extranjeros.',NULL),
	(96,21,'Existencia de tesis de Doctorado o de Grado dirigidas por\r\nprofesores en el extranjero.',NULL),
	(97,21,'Acceso a laboratorios u otras facilidades de investigación\r\nen universidades extranjeras.',NULL),
	(98,21,'Trascendencia de la actividad artística de los profesores\r\ndel programa en el ámbito nacional (en los programas en los\r\nque esto es relevante).',NULL),
	(99,22,'Documentos con políticas institucionales orientadas al\r\n\r\nbienestar y la cultura recreativa.',NULL),
	(100,22,'Exigencia de vinculación de los estudiantes a una EPS y en\r\ncaso de ser necesario a una ARP.',NULL),
	(101,22,'Existencia y efectividad de unidades médicas que prestan\r\nservicios básicos y asistencia sicológica.',NULL),
	(102,22,'Existencia y efectividad de mecanismos que garanticen el\r\nbienestar de los estudiantes durante cortas estadías en el\r\nextranjero, como parte de la movilidad estudiantil y de la\r\nparticipación en congresos y eventos científicos (v.gr. tarjetas\r\nde asistencia médica).',NULL),
	(103,22,'Apoyo a la consecución de vivienda para estudiantes\r\ncasados, sobre todo los extranjeros y de otras regiones del país\r\n(mínimo suministro de información).',NULL),
	(104,22,'Apreciación sobre la divulgación, la calidad y la\r\nefectividad de los servicios de bienestar de la universidad.',NULL),
	(105,23,'¿Cuántos graduados tiene el programa? ¿Cuántos egresados\r\ntiene el programa? ¿Hace el programa seguimiento a sus\r\ngraduados? ¿Cómo lo hace? ¿Dónde trabajan los graduados?',NULL),
	(106,23,'Identificar ¿cuántos graduados se quedan en la propia\r\nuniversidad y cuántos en otras, en Colombia y en el exterior?\r\n¿En otras organizaciones? Lo que aquí se plantea es\r\ninformación sobre la “estructura ocupacional”',NULL),
	(107,23,'Producción científica de los graduados: No. de\r\npublicaciones siguiendo la misma clasificación de\r\npublicaciones utilizada en el factor 3 (producción científica de\r\nlos profesores) y en el factor 5 (productos de la investigación)\r\n(secciones 3.2 y 5.3).',NULL),
	(108,23,'Producción científica de los graduados registrada en las\r\nbases de datos internacionales de revistas indexadas (ISI y\r\nSCOPUS).',NULL),
	(109,23,'Premios científicos y otras distinciones obtenidas por los\r\ngraduados.',NULL),
	(110,23,'Apreciación de la efectividad de los mecanismos de\r\nseguimiento del programa de sus egresados.',NULL),
	(111,24,'Evaluación de los resultados científicos del programa y de\r\nsu impacto, así como su utilización para retroalimentar y\r\nmejorar la calidad del programa. ¿Cuál es la producción\r\nacadémica de los graduados? ¿Cómo podemos valorar sus\r\naportes al campo científico del programa?',NULL),
	(112,25,'Capacidad, acondicionamiento y adecuada utilización de\r\nespacios físicos dedicados a la docencia (aulas, etc.) y a la\r\ninvestigación (laboratorios, etc.).',NULL),
	(113,25,'Capacidad, acondicionamiento y adecuada utilización de\r\nespacios físicos dedicados al estudio por parte de los estudiantes,\r\ntales como cubículos u oficinas para ellos.',NULL),
	(114,25,'Dotación suficiente de las instalaciones para el trabajo\r\nindividual y colectivo de los profesores y utilización adecuada de\r\nlos mismos.',NULL),
	(115,25,'Apreciación sobre la calidad de los espacios físicos\r\ndisponibles para el programa.',NULL),
	(116,26,'Documentos con criterios y políticas institucionales y del\r\nprograma en materia de adquisición, actualización y capacitación\r\npara el uso de recursos informáticos y de comunicación; y de\r\nmaterial bibliográfico.',NULL),
	(117,26,'Documentos con criterios y políticas institucionales y del\r\nprograma en materia de adquisición, actualización y capacitación\r\npara el uso de recursos informáticos y de comunicación; y de\r\nmaterial bibliográfico.',NULL),
	(118,26,'Adecuado apoyo en términos de material bibliográfico y bases\r\nde datos para las líneas de investigación del programa.',NULL),
	(119,26,'Disponibilidad de recursos informáticos y estrategias\r\norientadas a facilitar el uso de dichos recursos. Ejm. proporción\r\nentre el número de profesores y estudiantes del programa y el\r\nnúmero de recursos informáticos, tales como computadores,\r\nprogramas de informática, conexiones a redes y multimedia;\r\nincluye capacitación en el uso de estas tecnologías.',NULL),
	(120,26,'Existencia de una plataforma tecnológica que garantice buena\r\nconectividad y acceso a bases de datos o sistemas de información\r\na nivel mundial.',NULL),
	(121,26,'Apreciación de directivos, profesores y estudiantes del\r\nprograma sobre la pertinencia, actualización y suficiencia de los\r\nrecursos informáticos y de comunicación con que cuenta el\r\nprograma.',NULL),
	(122,27,'Proporción adecuada entre el número de personal\r\nadministrativo y de servicio, y el número de docentes y\r\nestudiantes, considerando las exigencias del programa.',NULL),
	(123,27,'Percepción de la calidad del apoyo administrativo por parte\r\nde profesores y estudiantes',NULL),
	(124,28,'Existencia de una estrategia de financiación que plantee\r\nclaramente la viabilidad financiera del programa, proyectando\r\ningresos y egresos para los próximos tres a cinco años.',NULL),
	(125,28,'Apreciación de directivos y profesores del programa sobre lo\r\nadecuado de los recursos presupuestales de que se dispone.',NULL),
	(126,29,'Existencia y funciones del Comité Asesor o Científico del\r\nPrograma, especialmente en el caso de Doctorados. Papel que\r\ndesempeña.',NULL),
	(127,29,'Calidad de los sistemas de información para la gestión\r\nacadémica del programa (v.gr. sistemas de información sobre las\r\nactividades de investigación y divulgación de sus resultados).',NULL),
	(128,30,'Documento con proyección, programación y ejecución del\r\npresupuesto de inversión y de funcionamiento del programa y\r\nmecanismos de control.',NULL),
	(257,63,'Claridad en los objetivos del programa.','REGLAMENTACIÓN \r\nAcuerdo 022/2013 - Artículos: 3, 4\r\nAcuerdo 035/1992 - Artículos: 1, 4, 5, 8, 9'),
	(258,63,'Capacidad demostrada para lograr dichos objetivos.','REGLAMENTACIÓN\r\nAcuerdo 052/2015 - Artículos: 3\r\nAcuerdo 022/2013 - Artículos: 15'),
	(259,63,'Coherencia entre los objetivos del programa y la Visión,Misión y Proyecto Institucional de la Universidad.','REGLAMENTACIÓN\r\nAcuerdo 052/2015 - Artículos: 1, 2, 4\r\nAcuerdo 022/2013 - Artículos: 12'),
	(260,64,'Documento que incluye la reglamentación del proceso de admisión.','REGLAMENTACIÓN\r\nReglamento del Programa 2014 - Artículos: 3'),
	(261,64,'Rigurosidad del proceso de selección de estudiantes.','REGLAMENTACIÓN\r\nAcuerdo 052/2015 - Artículos: 12\r\nAcuerdo 022/2013 - Artículos: 18\r\nAcuerdo 035/1992 - Artículos: 3, 84, 85, 87, 88'),
	(262,64,'Porcentaje de admitidos que cumplen con el nivel de dominio mínimo de una lengua extranjera establecido por el programa.',NULL),
	(263,64,'Estrategia para asegurar un número de estudiantes adecuado en el programa.','REGLAMENTACIÓN\r\nAcuerdo 035/1992 - Artículos: 86, 100'),
	(264,64,'Estudiantes de tiempo completo, es decir exclusividad en su dedicación al programa (para el caso de doctorados)','REGLAMENTACIÓN\r\nAcuerdo 035/1992 - Artículos: 96'),
	(265,64,'Capacidad del programa de atraer estudiantes de otras instituciones, de otras regiones del país y de otros países.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 10\r\nAcuerdo 035/1992 - Artículos: 89'),
	(266,65,'Tasa de deserción de los estudiantes','REGLAMENTACIÓN\r\nReglamento del Programa 2014 - Artículos: 18\r\nAcuerdo 022/2013 - Artículos: 8, 21'),
	(267,65,'No. de publicaciones realizadas por los estudiantes del programa en revistas indexadas nacionales e internacionales','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 47'),
	(268,65,'Promedio de estudiantes que asisten a congresos y otroseventos académicos, científicos o de creación artísticanacionales e internacionales','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 26'),
	(269,65,'Participación de los estudiantes en grupos deinvestigación, creación artística, redes de investigación ycomunidades científicas.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 10, 11, 33'),
	(270,65,'Mecanismo de evaluación del desempeño de losestudiantes, rigurosidad y transparencia del mismo','REGLAMENTACIÓN\r\nReglamento del Programa 2014 - Artículos: 2, 4, 7-16\r\nAcuerdo 022/2013 - Artículos: 17-29\r\nAcuerdo 035/1992 - Artículos: 107, 108, 112, 118, 119'),
	(271,66,'Documento en el que se expresa el perfil que se espera\r\nsatisfaga el estudiante al culminar el programa',NULL),
	(272,66,'Tiempo de duración promedio por cohorte para la\r\nobtención del grado.',NULL),
	(273,66,'Tiempo de duración promedio en años, por estudiante,para la obtención del grado.','REGLAMENTACIÓN\r\nReglamento del Programa 2014 - Artículos: 6, 13, 17\r\nAcuerdo 022/2013 - Artículos: 50'),
	(274,67,'Documento sobre políticas de selección, renovación ycontratación de profesores','REGLAMENTACIÓN\r\nAcuerdo 035/1992 - Artículos: 77'),
	(275,67,'Número adecuado de profesores de tiempo completo, condoctorado que desarrollan actividades académicas en elprograma, y capacidad para dirigir tesis de grado (habilitados)','REGLAMENTACIÓN\r\nAcuerdo 035/1992 - Artículos: 77'),
	(276,67,'Número de Profesores Visitantes de Universidades\r\nextranjeras o colombianas: cursos, seminarios, investigación o\r\ntutor tesis.',NULL),
	(277,67,'Número de distinciones que Profesores han recibido en\r\núltimos cinco años (premios, pertenencia por invitación a\r\nAcademias nacionales o extranjeros, invitación como\r\nProfesor Visitante).',NULL),
	(278,67,'Porcentaje de profesores por tipo de vinculación que\r\ncumplen el nivel de dominio esperado en un lengua extranjera',NULL),
	(279,67,'Dedicación de los profesores a la investigación.\r\nDistribución semestral de los programas de trabajo académico\r\nde los profesores según su dedicación a la investigación,\r\ndocencia y extensión.',NULL),
	(280,68,'Número de publicaciones científicas de los profesores delprograma en los últimos cinco años:No. de artículos en revistas internacionales indexadasNo. de artículos en revistas nacionales indexadasNo. de libros (con ISBN) relacionados con investigacióndesarrollada por el programaNo. de capítulos en libros (con ISBN) relacionados coninvestigación desarrollada por el programa.Otras publicaciones','REGLAMENTACIÓN\r\nAcuerdo 035/1992 - Artículos: 80'),
	(281,68,'Impacto de las publicaciones, medido en términos de\r\nindicadores de citas bibliográficas y cocitaciones (v.gr. ISI y\r\nScimago/Scopus)',NULL),
	(282,68,'Número de Patentes, productos tecnológicos u otro tipo de\r\nresultados de las investigaciones realizadas, en los últimos\r\ncinco años',NULL),
	(283,68,'(Cuando sea pertinente) Número de obras musicales o\r\nartísticas sometidas a crítica.',NULL),
	(284,68,'Participación en Comités Editoriales',NULL),
	(285,69,'Relación Estudiante/Tutor en el programa. No. deestudiantes por tutor (sólo profesores de TC y habilitados paradirigir tesis)','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 31'),
	(286,69,'Flexibilidad del programa para permitir tutores externos:No. de tutores externos (sólo pueden ser co-tutores)','REGLAMENTACIÓN\r\nReglamento del Programa 2014 - Artículos: 11\r\nAcuerdo 022/2013 - Artículos: 31\r\nAcuerdo 035/1992 - Artículos: 73'),
	(287,69,'Política sobre asignación de profesores como jurados detesis.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 31\r\nAcuerdo 035/1992 - Artículos: 68'),
	(288,70,'Política de selección, renovación y contratación deprofesores','REGLAMENTACIÓN\r\nAcuerdo 052/2015 - Artículos: 9, 12, 14'),
	(289,70,'Existencia de políticas de relevo generacional coherentes\r\ncon las Líneas de Investigación existentes o planeadas',NULL),
	(290,70,'Formación continuada de profesores; política sobre añossabáticos y postdoctorado; Número de profesores que se hanacogido a estas posibilidades en los tres últimos años.','REGLAMENTACIÓN\r\nAcuerdo 052/2015 - Artículos: 9'),
	(291,70,'Política y mecanismos de evaluación de profesores ycoherencia entre remuneración y méritos académicos.','REGLAMENTACIÓN\r\nAcuerdo 052/2015 - Artículos: 14'),
	(292,70,'Apreciación de estudiantes y egresados sobre la calidad de\r\nlas competencias pedagógicas del grupo de profesores del\r\nprograma.',NULL),
	(293,70,'. Política de flexibilidad que permita al programa contar\r\ncon tutores externos.',NULL),
	(294,71,'Documento con políticas de acompañamiento estudiantil y tutoría académica.','REGLAMENTACIÓN Acuerdo 022/2013 - Artículos: 4, 5 Acuerdo 035/1992 - Artículos: 6, 7, 44'),
	(295,71,'Desarrollo de competencias básicas de investigación, mediante estrategias propias de cada campo de conocimiento','Desarrollo de competencias básicas de investigación, mediante estrategias propias de cada campo de conocimiento, tales como:\r\n. Capacidad de indagación en los estudiantes.\r\n. Capacidad de pensamiento autónomo y dominio de las técnicas de investigación pertinentes.\r\n. Capacidad de construir estados del arte y tendencias en un campo del conocimiento\r\n. Capacidad de comunicación de avances y resultados de la investigación\r\n\r\nREGLAMENTACIÓN Acuerdo 035/1992 - Artículos: 33, 45  Acuerdo 022/2013 - Artículos: 31'),
	(296,71,'Estrategias y mecanismos de seguimiento por parte de los Tutores (Directores de Tesis o de los Trabajos de Grado) de las labores desarrolladas por los estudiantes.',NULL),
	(297,71,'Número de Tesis Doctorales o Trabajos de Grado premiados por fuentes externas a la universidad.',NULL),
	(298,71,'Apreciación de los estudiantes sobre la calidad del proceso de acompañamiento de los tutores en su proceso de formación.',NULL),
	(299,72,'Facilidad de acceso a cursos, seminarios o conferencias en la universidad sobre diversos aspectos relacionados concambios en la ciencia mundial y con aspectos relevantes del entorno social y económico del país o de la región, o contemas ambientales que definen necesidades de desarrollo que la sociedad confronta.','REGLAMENTACIÓN Acuerdo 022/2013 - Artículos: 4, 3'),
	(300,72,'En los campos del conocimiento que sean pertinentes (v.gr. ingenierías y administración), relación entre el conocimiento generado por la ciencia y su aplicación en el sector productivo, incluyendo aspectos de emprendimiento y desarrollo empresarial.','REGLAMENTACIÓN Acuerdo 022/2013 - Artículos: 4, 3'),
	(301,73,'Oferta académica amplia que suministre opciones al estudiante de temas o líneas de investigación en las que puede trabajar','REGLAMENTACIÓN Acuerdo 052/2015 - Artículos: 7, 9, 12 Acuerdo 022/2013 - Artículo: 4 Acuerdo 035/1992 - Artículo: 36'),
	(302,73,'Aprovechamiento de seminarios y ofertas académicas de otros grupos de investigación y programas, de la propia universidad o de otras universidades nacionales o extranjeras.','REGLAMENTACIÓN Acuerdo 052/2015 - Artículos: 7 Acuerdo 022/2013 - Artículo: 26 Acuerdo 035/1992 - Artículo: 38'),
	(303,73,'Convenios que faciliten, promuevan y garanticen la movilidad de estudiantes y profesores, mediante estadías de investigación en otras universidades nacionales y extranjeras.','REGLAMENTACIÓN Acuerdo 052/2015 - Artículos: 7 Acuerdo 022/2013 - Artículo: 11'),
	(304,74,'Práctica real de procesos periódicos de autoevaluación, conducentes a mejoras en el programa. Existencia de criterios y procedimientos claros que orientes este proceso','REGLAMENTACIÓN  Acuerdo 022/2013 - Artículo: 15'),
	(305,74,'Estrategias y evidencias de seguimiento a dicha evaluación.','REGLAMENTACIÓN Acuerdo 022/2013 - Artículo: 15'),
	(306,74,'Grado de participación de profesores, estudiantes, directivos y personal técnico y administrativo en dichos procesos.','REGLAMENTACIÓN Acuerdo 022/2013 - Artículo: 15'),
	(307,75,'Documento con la política institucional sobre la investigación','REGLAMENTACIÓN Acuerdo 022/2013 - Artículo: 4, 8'),
	(308,75,'Estrategias por medio de las cuales la investigación constituye la base del programa, y como ella contribuirá a formar investigadores, en el caso e los doctorados, o generar competencias investigativas en el caso de las maestrías.',NULL),
	(309,75,'Existencia de un o más grupos de investigación, consolidados, con publicaciones científicas o con los productos que sean relevantes en cada campo del conocimiento.','REGLAMENTACIÓN Acuerdo 035/1992 - Artículo: 100, 103, 105'),
	(310,75,'En las líneas de investigación y creación artística existen investigadores activos que pueden suministrar tutorías a los estudiantes en sus respectivos campos.(Número de investigadores, líneas de investigación, producción científica).',NULL),
	(311,75,'Políticas claras de apoyo a la investigación y estrategias que aseguren la implementación de esta (v.gr. reconocimiento de tiempo a profesores, laboratorios adecuados, financiación de proyectos, otros).',NULL),
	(312,75,'Número de Tesis Doctorales o Trabajos de Grado premiados por fuentes externas a la universidad.',NULL),
	(313,75,'Apreciación sobre las estrategias utilizadas por el programa para articular sus líneas de investigación con la formación de los estudiantes.',NULL),
	(314,76,'Número de grupos de investigación y creación artística relacionados con el programa, clasificados en categoría A1, A y B en el ScientiCol de COLCIENCIAS.','REGLAMENTACIÓN Acuerdo 052/2015 - Artículos: 5  Acuerdo 022/2013 - Artículos: 10, 13, 33'),
	(315,76,'Banco de proyectos de investigación y creación artística de cada grupo, constituida por: Número de proyectos terminados en los últimos cinco años; y número de proyectos de investigación y creación artística activos o en ejecución.','REGLAMENTACIÓN Acuerdo 052/2015 - Artículo: 5'),
	(316,76,'Número de investigadores por grupo y línea de investigación.','REGLAMENTACIÓN Acuerdo 052/2015 - Artículo: 5'),
	(317,76,'Porcentaje de recursos financieros internos o externos que el programa logró movilizar para el desarrollo del conjunto de proyectos de investigación y creación artística, en los últimos 5 años.','REGLAMENTACIÓN Acuerdo 052/2015 - Artículo: 5'),
	(318,76,'Integración de los grupos de investigación y creación artística en consorcios o redes de conocida trayectoria 29 internacional.','REGLAMENTACIÓN Acuerdo 052/2015 - Artículo: 5, 12'),
	(319,76,'Porcentaje de profesores del programa por grupo de investigación o de creación artística y/o por redes de investigación (centros de excelencia).',NULL),
	(320,76,'Apreciación sobre las estrategias utilizadas por el programa para articular sus líneas de investigación a los\r\ngrupos de investigación de la universidad y de otras universidades nacionales e internacionales.',NULL),
	(321,77,'Número de publicaciones indexadas, en el ScientiCol y en bases de datos internacionales.',NULL),
	(322,77,'Número de citas y co-citaciones (indicador de impacto en la comunidad científica).',NULL),
	(323,77,'Número patentes, productos tecnológicos, obras de arte con reconocimiento público, etc.',NULL),
	(324,77,'Valoración del aporte real de cada grupo de investigación creación artística que apoya el posgrado o del programa mismo.',NULL),
	(325,77,'Número de tesis o trabajos de grado terminados en los últimos ocho años.',NULL),
	(326,78,'Posibilidad de tomar seminarios o cursos en campos complementarios a los del programa de posgrado ya sea en la propia universidad o en otras universidades, vía alianzas estratégicas.','REGLAMENTACIÓN\r\nAcuerdo 035/1992 - Artículos: 38'),
	(327,78,'Posibilidad de participar en las actividades de otros grupos de investigación relacionados con el programa de posgrado o con programas complementarios.','REGLAMENTACIÓN \r\nAcuerdo 035/1992 - Artículos: 100d'),
	(328,78,'Posibilidad de trabajar con Directores de Tesis que sean de otras universidades y programas, que aporten perspectivas diferentes a las del cuerpo docente del programa.','REGLAMENTACIÓN\r\nAcuerdo 035/1992 - Artículos: 68'),
	(329,78,'Porcentaje de convenios activos y en funcionamiento firmados con instituciones nacionales e internacionales para el desarrollo del programa.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 16'),
	(330,79,'Documento en el que se exprese el aporte de cada grupo de investigación o de creación artística para el desarrollo del país o de la región.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 4'),
	(331,79,'Existencia de líneas de investigación o de creación artística relacionadas con problemas o temas de desarrollo de la comunidad nacional, regional o local, o con problemas del sector productivo o de otros usuarios del conocimiento.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 4'),
	(332,79,'Innovaciones, cambios o mejoras en el entorno (social o productivo), o innovaciones artísticas y culturales, introducidas a partir de resultados de tesis de grado de estudiantes, de proyectos de investigación realizados por el grupo, o de servicios de extensión ofrecidos por el programa.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 3'),
	(333,79,'Apreciación de la comunidad académica sobre la relevancia de las líneas de investigación y de sus proyectos para el país.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 3'),
	(334,80,'Investigaciones desarrolladas en el Doctorado o en la Maestría sobre problemas o desafíos que se enfrentan a nivel nacional, regional y local.',NULL),
	(335,80,'Número de temas de las tesis de grado que se han realizado sobre aspectos o problemas de interés para el desarrollo nacional, o para el desarrollo regional o local.',NULL),
	(336,80,'Porcentaje de contratos con actores sociales del entorno (v,gr, empresas, gremios, agencias de gobierno, ONGs, etc.) para realizar investigación o servicios de consultorías relacionados con temas de su interés.',NULL),
	(337,81,'Documento en los que se expresen acuerdos para otorgar\r\ndoble titulación con universidades extranjeras.',NULL),
	(338,81,'Requisito de hacer pasantías de seis meses o más en gruposde investigación en el extranjero, en grupos de reconocidatrayectoria en su respectivo campo.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 16'),
	(339,81,'Facilidad de homologación con programas de reconocida\r\ncalidad en el extranjero y posibilidad de realizar Programas\r\ncon doble titulación o programas conjuntos.',NULL),
	(340,81,'Oferta de seminarios y cursos de carácter internacional\r\n(temas internacionales).',NULL),
	(341,81,'Requisito de lengua extranjera y cursos o seminariosofrecidos en otras lenguas','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 19'),
	(342,82,'Porcentaje de estudiantes extranjeros en el programa y\r\nexistencia en la universidad de una oficina o servicio\r\nencargado de estudiantes extranjeros, con una clara estrategia\r\npara integrar estos últimos al programa y a la ciudad.',NULL),
	(343,82,'Convenios de intercambio activos con universidadesextranjeras.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 16'),
	(344,82,'Experiencias de homologación de cursos del programa enprogramas extranjeros.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 26'),
	(345,82,'Profesores visitantes extranjeros en el programa.',NULL),
	(346,82,'Profesores del programa como Profesores Visitantes en\r\nuniversidades extranjeras.',NULL),
	(347,82,'Becas o proyectos de investigación financiadas por fuentes\r\nextranjeras.',NULL),
	(348,82,'Apreciación de estudiantes y egresados sobre la\r\nefectividad de la divulgación de posibilidades para hacer\r\npasantías con grupos de investigación y creación artística en el\r\nextranjero.',NULL),
	(349,83,'Participación en redes internacionales de investigación.',NULL),
	(350,83,'Investigadores del programa que han hecho pasantías en\r\ngrupos de investigación extranjeros.',NULL),
	(351,83,'Proyectos de investigación conjuntos con universidades o\r\ncentros de investigación extranjeros.',NULL),
	(352,83,'Existencia de tesis de Doctorado o de Grado dirigidas por\r\nprofesores en el extranjero.',NULL),
	(353,83,'Acceso a laboratorios u otras facilidades de investigación\r\nen universidades extranjeras.',NULL),
	(354,83,'Trascendencia de la actividad artística de los profesores\r\ndel programa en el ámbito nacional (en los programas en los\r\nque esto es relevante).',NULL),
	(355,84,'Documentos con políticas institucionales orientadas al\r\n\r\nbienestar y la cultura recreativa.',NULL),
	(356,84,'Exigencia de vinculación de los estudiantes a una EPS y en\r\ncaso de ser necesario a una ARP.',NULL),
	(357,84,'Existencia y efectividad de unidades médicas que prestan\r\nservicios básicos y asistencia sicológica.',NULL),
	(358,84,'Existencia y efectividad de mecanismos que garanticen el\r\nbienestar de los estudiantes durante cortas estadías en el\r\nextranjero, como parte de la movilidad estudiantil y de la\r\nparticipación en congresos y eventos científicos (v.gr. tarjetas\r\nde asistencia médica).',NULL),
	(359,84,'Apoyo a la consecución de vivienda para estudiantes\r\ncasados, sobre todo los extranjeros y de otras regiones del país\r\n(mínimo suministro de información).',NULL),
	(360,84,'Apreciación sobre la divulgación, la calidad y la\r\nefectividad de los servicios de bienestar de la universidad.',NULL),
	(361,85,'¿Cuántos graduados tiene el programa? ¿Cuántos egresados\r\ntiene el programa? ¿Hace el programa seguimiento a sus\r\ngraduados? ¿Cómo lo hace? ¿Dónde trabajan los graduados?',NULL),
	(362,85,'Identificar ¿cuántos graduados se quedan en la propia\r\nuniversidad y cuántos en otras, en Colombia y en el exterior?\r\n¿En otras organizaciones? Lo que aquí se plantea es\r\ninformación sobre la “estructura ocupacional”',NULL),
	(363,85,'Producción científica de los graduados: No. de\r\npublicaciones siguiendo la misma clasificación de\r\npublicaciones utilizada en el factor 3 (producción científica de\r\nlos profesores) y en el factor 5 (productos de la investigación)\r\n(secciones 3.2 y 5.3).',NULL),
	(364,85,'Producción científica de los graduados registrada en las\r\nbases de datos internacionales de revistas indexadas (ISI y\r\nSCOPUS).',NULL),
	(365,85,'Premios científicos y otras distinciones obtenidas por los\r\ngraduados.',NULL),
	(366,85,'Apreciación de la efectividad de los mecanismos de\r\nseguimiento del programa de sus egresados.',NULL),
	(367,86,'Evaluación de los resultados científicos del programa y de\r\nsu impacto, así como su utilización para retroalimentar y\r\nmejorar la calidad del programa. ¿Cuál es la producción\r\nacadémica de los graduados? ¿Cómo podemos valorar sus\r\naportes al campo científico del programa?',NULL),
	(368,87,'Capacidad, acondicionamiento y adecuada utilización de\r\nespacios físicos dedicados a la docencia (aulas, etc.) y a la\r\ninvestigación (laboratorios, etc.).',NULL),
	(369,87,'Capacidad, acondicionamiento y adecuada utilización de\r\nespacios físicos dedicados al estudio por parte de los estudiantes,\r\ntales como cubículos u oficinas para ellos.',NULL),
	(370,87,'Dotación suficiente de las instalaciones para el trabajo\r\nindividual y colectivo de los profesores y utilización adecuada de\r\nlos mismos.',NULL),
	(371,87,'Apreciación sobre la calidad de los espacios físicos\r\ndisponibles para el programa.',NULL),
	(372,88,'Documentos con criterios y políticas institucionales y del\r\nprograma en materia de adquisición, actualización y capacitación\r\npara el uso de recursos informáticos y de comunicación; y de\r\nmaterial bibliográfico.',NULL),
	(373,88,'Documentos con criterios y políticas institucionales y del\r\nprograma en materia de adquisición, actualización y capacitación\r\npara el uso de recursos informáticos y de comunicación; y de\r\nmaterial bibliográfico.',NULL),
	(374,88,'Adecuado apoyo en términos de material bibliográfico y bases\r\nde datos para las líneas de investigación del programa.',NULL),
	(375,88,'Disponibilidad de recursos informáticos y estrategias\r\norientadas a facilitar el uso de dichos recursos. Ejm. proporción\r\nentre el número de profesores y estudiantes del programa y el\r\nnúmero de recursos informáticos, tales como computadores,\r\nprogramas de informática, conexiones a redes y multimedia;\r\nincluye capacitación en el uso de estas tecnologías.',NULL),
	(376,88,'Existencia de una plataforma tecnológica que garantice buena\r\nconectividad y acceso a bases de datos o sistemas de información\r\na nivel mundial.',NULL),
	(377,88,'Apreciación de directivos, profesores y estudiantes del\r\nprograma sobre la pertinencia, actualización y suficiencia de los\r\nrecursos informáticos y de comunicación con que cuenta el\r\nprograma.',NULL),
	(378,89,'Proporción adecuada entre el número de personaladministrativo y de servicio, y el número de docentes yestudiantes, considerando las exigencias del programa.','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 12'),
	(379,89,'Percepción de la calidad del apoyo administrativo por partede profesores y estudiantes','REGLAMENTACIÓN\r\nAcuerdo 022/2013 - Artículos: 12'),
	(380,90,'Existencia de una estrategia de financiación que planteeclaramente la viabilidad financiera del programa, proyectandoingresos y egresos para los próximos tres a cinco años.','REGLAMENTACIÓN\r\nAcuerdo 052/2015 - Artículos: 12, 14'),
	(381,90,'Apreciación de directivos y profesores del programa sobre lo\r\nadecuado de los recursos presupuestales de que se dispone.',NULL),
	(382,91,'Existencia y funciones del Comité Asesor o Científico delPrograma, especialmente en el caso de Doctorados. Papel quedesempeña.','REGLAMENTACIÓN\r\nAcuerdo 052/2015 - Artículos: Capítulo 2\r\nReglamento del Programa 2014 - Artículos: 1\r\nAcuerdo 035/1992 - Artículos: 10-15'),
	(383,91,'Calidad de los sistemas de información para la gestión\r\nacadémica del programa (v.gr. sistemas de información sobre las\r\nactividades de investigación y divulgación de sus resultados).',NULL),
	(384,92,'Documento con proyección, programación y ejecución del\r\npresupuesto de inversión y de funcionamiento del programa y\r\nmecanismos de control.',NULL),
	(1025,249,'Claridad en los objetivos del programa.',NULL),
	(1026,249,'Capacidad demostrada para lograr dichos objetivos.',NULL),
	(1027,249,'Coherencia entre los objetivos del programa y la Visión,\r\nMisión y Proyecto Institucional de la Universidad.',NULL),
	(1028,250,'Documento que incluye la reglamentación del proceso de admisión.',NULL),
	(1029,250,'Rigurosidad del proceso de selección de estudiantes.',NULL),
	(1030,250,'Porcentaje de admitidos que cumplen con el nivel de dominio mínimo de una lengua extranjera establecido por el programa.',NULL),
	(1031,250,'Estrategia para asegurar un número de estudiantes adecuado en el programa.',NULL),
	(1032,250,'Estudiantes de tiempo completo, es decir exclusividad en su dedicación al programa (para el caso de doctorados)',NULL),
	(1033,250,'Capacidad del programa de atraer estudiantes de otras instituciones, de otras regiones del país y de otros países.',NULL),
	(1034,251,'Tasa de deserción de los estudiantes',NULL),
	(1035,251,'No. de publicaciones realizadas por los estudiantes del programa en revistas indexadas nacionales e internacionales',NULL),
	(1036,251,'Promedio de estudiantes que asisten a congresos y otros\r\neventos académicos, científicos o de creación artística\r\nnacionales e internacionales',NULL),
	(1037,251,'Participación de los estudiantes en grupos de\r\ninvestigación, creación artística, redes de investigación y\r\ncomunidades científicas.',NULL),
	(1038,251,'Mecanismo de evaluación del desempeño de los\r\nestudiantes, rigurosidad y transparencia del mismo',NULL),
	(1039,252,'Documento en el que se expresa el perfil que se espera\r\nsatisfaga el estudiante al culminar el programa',NULL),
	(1040,252,'Tiempo de duración promedio por cohorte para la\r\nobtención del grado.',NULL),
	(1041,252,'Tiempo de duración promedio en años, por estudiante,\r\npara la obtención del grado.',NULL),
	(1042,253,'Documento sobre políticas de selección, renovación y\r\ncontratación de profesores',NULL),
	(1043,253,'Número adecuado de profesores de tiempo completo, con\r\ndoctorado que desarrollan actividades académicas en el\r\nprograma, y capacidad para dirigir tesis de grado (habilitados)',NULL),
	(1044,253,'Número de Profesores Visitantes de Universidades\r\nextranjeras o colombianas: cursos, seminarios, investigación o\r\ntutor tesis.',NULL),
	(1045,253,'Número de distinciones que Profesores han recibido en\r\núltimos cinco años (premios, pertenencia por invitación a\r\nAcademias nacionales o extranjeros, invitación como\r\nProfesor Visitante).',NULL),
	(1046,253,'Porcentaje de profesores por tipo de vinculación que\r\ncumplen el nivel de dominio esperado en un lengua extranjera',NULL),
	(1047,253,'Dedicación de los profesores a la investigación.\r\nDistribución semestral de los programas de trabajo académico\r\nde los profesores según su dedicación a la investigación,\r\ndocencia y extensión.',NULL),
	(1048,254,'Número de publicaciones científicas de los profesores del\r\nprograma en los últimos cinco años:\r\nNo. de artículos en revistas internacionales indexadas\r\nNo. de artículos en revistas nacionales indexadas\r\nNo. de libros (con ISBN) relacionados con investigación\r\ndesarrollada por el programa\r\nNo. de capítulos en libros (con ISBN) relacionados con\r\ninvestigación desarrollada por el programa.\r\nOtras publicaciones',NULL),
	(1049,254,'Impacto de las publicaciones, medido en términos de\r\nindicadores de citas bibliográficas y cocitaciones (v.gr. ISI y\r\nScimago/Scopus)',NULL),
	(1050,254,'Número de Patentes, productos tecnológicos u otro tipo de\r\nresultados de las investigaciones realizadas, en los últimos\r\ncinco años',NULL),
	(1051,254,'(Cuando sea pertinente) Número de obras musicales o\r\nartísticas sometidas a crítica.',NULL),
	(1052,254,'Participación en Comités Editoriales',NULL),
	(1053,255,'Relación Estudiante/Tutor en el programa. No. de\r\nestudiantes por tutor (sólo profesores de TC y habilitados para\r\ndirigir tesis)',NULL),
	(1054,255,'Flexibilidad del programa para permitir tutores externos:\r\nNo. de tutores externos (sólo pueden ser co-tutores)',NULL),
	(1055,255,'Política sobre asignación de profesores como jurados de\r\ntesis.',NULL),
	(1056,256,'Política de selección, renovación y contratación de\r\nprofesores',NULL),
	(1057,256,'Existencia de políticas de relevo generacional coherentes\r\ncon las Líneas de Investigación existentes o planeadas',NULL),
	(1058,256,'Formación continuada de profesores; política sobre años\r\nsabáticos y postdoctorado; Número de profesores que se han\r\nacogido a estas posibilidades en los tres últimos años.',NULL),
	(1059,256,'Política y mecanismos de evaluación de profesores y\r\ncoherencia entre remuneración y méritos académicos.',NULL),
	(1060,256,'Apreciación de estudiantes y egresados sobre la calidad de\r\nlas competencias pedagógicas del grupo de profesores del\r\nprograma.',NULL),
	(1061,256,'. Política de flexibilidad que permita al programa contar\r\ncon tutores externos.',NULL),
	(1062,257,'Documento con políticas de acompañamiento estudiantil y tutoría académica.',NULL),
	(1063,257,'Desarrollo de competencias básicas de investigación, mediante estrategias propias de cada campo de conocimiento','Desarrollo de competencias básicas de investigación, mediante estrategias propias de cada campo de conocimiento, tales como:\r\n. Capacidad de indagación en los estudiantes.\r\n. Capacidad de pensamiento autónomo y dominio de las técnicas de investigación pertinentes.\r\n. Capacidad de construir estados del arte y tendencias en un campo del conocimiento\r\n. Capacidad de comunicación de avances y resultados de la investigación'),
	(1064,257,'Estrategias y mecanismos de seguimiento por parte de los Tutores (Directores de Tesis o de los Trabajos de Grado) de las labores desarrolladas por los estudiantes.',NULL),
	(1065,257,'Número de Tesis Doctorales o Trabajos de Grado premiados por fuentes externas a la universidad.',NULL),
	(1066,257,'Apreciación de los estudiantes sobre la calidad del proceso de acompañamiento de los tutores en su proceso de formación.',NULL),
	(1067,258,'Facilidad de acceso a cursos, seminarios o conferencias en la universidad sobre diversos aspectos relacionados con\r\ncambios en la ciencia mundial y con aspectos relevantes del entorno social y económico del país o de la región, o con\r\ntemas ambientales que definen necesidades de desarrollo que la sociedad confronta.',NULL),
	(1068,258,'En los campos del conocimiento que sean pertinentes (v.gr. ingenierías y administración), relación entre el conocimiento generado por la ciencia y su aplicación en el sector productivo, incluyendo aspectos de emprendimiento y desarrollo empresarial.',NULL),
	(1069,259,'Oferta académica amplia que suministre opciones al estudiante de temas o líneas de investigación en las que puede trabajar',NULL),
	(1070,259,'Aprovechamiento de seminarios y ofertas académicas de otros grupos de investigación y programas, de la propia universidad o de otras universidades nacionales o extranjeras.',NULL),
	(1071,259,'Convenios que faciliten, promuevan y garanticen la movilidad de estudiantes y profesores, mediante estadías de investigación en otras universidades nacionales y extranjeras.',NULL),
	(1072,260,'Práctica real de procesos periódicos de autoevaluación, conducentes a mejoras en el programa. Existencia de criterios y procedimientos claros que orientes este proceso',NULL),
	(1073,260,'Estrategias y evidencias de seguimiento a dicha evaluación.',NULL),
	(1074,260,'Grado de participación de profesores, estudiantes, directivos y personal técnico y administrativo en dichos procesos.',NULL),
	(1075,261,'Documento con la política institucional sobre la investigación',NULL),
	(1076,261,'Estrategias por medio de las cuales la investigación constituye la base del programa, y como ella contribuirá a formar investigadores, en el caso e los doctorados, o generar competencias investigativas en el caso de las maestrías.',NULL),
	(1077,261,'Existencia de un o más grupos de investigación, consolidados, con publicaciones científicas o con los productos que sean relevantes en cada campo del conocimiento.',NULL),
	(1078,261,'En las líneas de investigación y creación artística existen investigadores activos que pueden suministrar tutorías a los estudiantes en sus respectivos campos.(Número de investigadores, líneas de investigación, producción científica).',NULL),
	(1079,261,'Políticas claras de apoyo a la investigación y estrategias que aseguren la implementación de esta (v.gr. reconocimiento de tiempo a profesores, laboratorios adecuados, financiación de proyectos, otros).',NULL),
	(1080,261,'Número de Tesis Doctorales o Trabajos de Grado premiados por fuentes externas a la universidad.',NULL),
	(1081,261,'Apreciación sobre las estrategias utilizadas por el programa para articular sus líneas de investigación con la formación de los estudiantes.',NULL),
	(1082,262,'Número de grupos de investigación y creación artística relacionados con el programa, clasificados en categoría A1, A y B en el ScientiCol de COLCIENCIAS.',NULL),
	(1083,262,'Banco de proyectos de investigación y creación artística de cada grupo, constituida por: Número de proyectos terminados en los últimos cinco años; y número de proyectos de investigación y creación artística activos o en ejecución.',NULL),
	(1084,262,'Número de investigadores por grupo y línea de investigación.',NULL),
	(1085,262,'11. Porcentaje de recursos financieros internos o externos que el programa logró movilizar para el desarrollo del conjunto de proyectos de investigación y creación artística, en los últimos 5 años.',NULL),
	(1086,262,'Integración de los grupos de investigación y creación artística en consorcios o redes de conocida trayectoria 29 internacional.',NULL),
	(1087,262,'Porcentaje de profesores del programa por grupo de investigación o de creación artística y/o por redes de investigación (centros de excelencia).',NULL),
	(1088,262,'Apreciación sobre las estrategias utilizadas por el programa para articular sus líneas de investigación a los\r\ngrupos de investigación de la universidad y de otras universidades nacionales e internacionales.',NULL),
	(1089,263,'Número de publicaciones indexadas, en el ScientiCol y en bases de datos internacionales.',NULL),
	(1090,263,'Número de citas y co-citaciones (indicador de impacto en la comunidad científica).',NULL),
	(1091,263,'Número patentes, productos tecnológicos, obras de arte con reconocimiento público, etc.',NULL),
	(1092,263,'Valoración del aporte real de cada grupo de investigación creación artística que apoya el posgrado o del programa mismo.',NULL),
	(1093,263,'Número de tesis o trabajos de grado terminados en los últimos ocho años.',NULL),
	(1094,264,'Posibilidad de tomar seminarios o cursos en campos complementarios a los del programa de posgrado ya sea en la propia universidad o en otras universidades, vía alianzas estratégicas.',NULL),
	(1095,264,'Posibilidad de participar en las actividades de otros grupos de investigación relacionados con el programa de posgrado o con programas complementarios.',NULL),
	(1096,264,'Posibilidad de trabajar con Directores de Tesis que sean de otras universidades y programas, que aporten perspectivas diferentes a las del cuerpo docente del programa.',NULL),
	(1097,264,'Porcentaje de convenios activos y en funcionamiento firmados con instituciones nacionales e internacionales para el desarrollo del programa.',NULL),
	(1098,265,'Documento en el que se exprese el aporte de cada grupo de investigación o de creación artística para el desarrollo del país o de la región.',NULL),
	(1099,265,'Existencia de líneas de investigación o de creación artística relacionadas con problemas o temas de desarrollo de la comunidad nacional, regional o local, o con problemas del sector productivo o de otros usuarios del conocimiento.',NULL),
	(1100,265,'Innovaciones, cambios o mejoras en el entorno (social o productivo), o innovaciones artísticas y culturales, introducidas a partir de resultados de tesis de grado de estudiantes, de proyectos de investigación realizados por el grupo, o de servicios de extensión ofrecidos por el programa.',NULL),
	(1101,265,'Apreciación de la comunidad académica sobre la relevancia de las líneas de investigación y de sus proyectos para el país.',NULL),
	(1102,266,'Investigaciones desarrolladas en el Doctorado o en la Maestría sobre problemas o desafíos que se enfrentan a nivel nacional, regional y local.',NULL),
	(1103,266,'Número de temas de las tesis de grado que se han realizado sobre aspectos o problemas de interés para el desarrollo nacional, o para el desarrollo regional o local.',NULL),
	(1104,266,'Porcentaje de contratos con actores sociales del entorno (v,gr, empresas, gremios, agencias de gobierno, ONGs, etc.) para realizar investigación o servicios de consultorías relacionados con temas de su interés.',NULL),
	(1105,267,'Documento en los que se expresen acuerdos para otorgar\r\ndoble titulación con universidades extranjeras.',NULL),
	(1106,267,'Requisito de hacer pasantías de seis meses o más en grupos\r\nde investigación en el extranjero, en grupos de reconocida\r\ntrayectoria en su respectivo campo.',NULL),
	(1107,267,'Facilidad de homologación con programas de reconocida\r\ncalidad en el extranjero y posibilidad de realizar Programas\r\ncon doble titulación o programas conjuntos.',NULL),
	(1108,267,'Oferta de seminarios y cursos de carácter internacional\r\n(temas internacionales).',NULL),
	(1109,267,'Requisito de lengua extranjera y cursos o seminarios\r\nofrecidos en otras lenguas',NULL),
	(1110,268,'Porcentaje de estudiantes extranjeros en el programa y\r\nexistencia en la universidad de una oficina o servicio\r\nencargado de estudiantes extranjeros, con una clara estrategia\r\npara integrar estos últimos al programa y a la ciudad.',NULL),
	(1111,268,'Convenios de intercambio activos con universidades\r\nextranjeras.',NULL),
	(1112,268,'Experiencias de homologación de cursos del programa en\r\nprogramas extranjeros.',NULL),
	(1113,268,'Profesores visitantes extranjeros en el programa.',NULL),
	(1114,268,'Profesores del programa como Profesores Visitantes en\r\nuniversidades extranjeras.',NULL),
	(1115,268,'Becas o proyectos de investigación financiadas por fuentes\r\nextranjeras.',NULL),
	(1116,268,'Apreciación de estudiantes y egresados sobre la\r\nefectividad de la divulgación de posibilidades para hacer\r\npasantías con grupos de investigación y creación artística en el\r\nextranjero.',NULL),
	(1117,269,'Participación en redes internacionales de investigación.',NULL),
	(1118,269,'Investigadores del programa que han hecho pasantías en\r\ngrupos de investigación extranjeros.',NULL),
	(1119,269,'Proyectos de investigación conjuntos con universidades o\r\ncentros de investigación extranjeros.',NULL),
	(1120,269,'Existencia de tesis de Doctorado o de Grado dirigidas por\r\nprofesores en el extranjero.',NULL),
	(1121,269,'Acceso a laboratorios u otras facilidades de investigación\r\nen universidades extranjeras.',NULL),
	(1122,269,'Trascendencia de la actividad artística de los profesores\r\ndel programa en el ámbito nacional (en los programas en los\r\nque esto es relevante).',NULL),
	(1123,270,'Documentos con políticas institucionales orientadas al\r\n\r\nbienestar y la cultura recreativa.',NULL),
	(1124,270,'Exigencia de vinculación de los estudiantes a una EPS y en\r\ncaso de ser necesario a una ARP.',NULL),
	(1125,270,'Existencia y efectividad de unidades médicas que prestan\r\nservicios básicos y asistencia sicológica.',NULL),
	(1126,270,'Existencia y efectividad de mecanismos que garanticen el\r\nbienestar de los estudiantes durante cortas estadías en el\r\nextranjero, como parte de la movilidad estudiantil y de la\r\nparticipación en congresos y eventos científicos (v.gr. tarjetas\r\nde asistencia médica).',NULL),
	(1127,270,'Apoyo a la consecución de vivienda para estudiantes\r\ncasados, sobre todo los extranjeros y de otras regiones del país\r\n(mínimo suministro de información).',NULL),
	(1128,270,'Apreciación sobre la divulgación, la calidad y la\r\nefectividad de los servicios de bienestar de la universidad.',NULL),
	(1129,271,'¿Cuántos graduados tiene el programa? ¿Cuántos egresados\r\ntiene el programa? ¿Hace el programa seguimiento a sus\r\ngraduados? ¿Cómo lo hace? ¿Dónde trabajan los graduados?',NULL),
	(1130,271,'Identificar ¿cuántos graduados se quedan en la propia\r\nuniversidad y cuántos en otras, en Colombia y en el exterior?\r\n¿En otras organizaciones? Lo que aquí se plantea es\r\ninformación sobre la “estructura ocupacional”',NULL),
	(1131,271,'Producción científica de los graduados: No. de\r\npublicaciones siguiendo la misma clasificación de\r\npublicaciones utilizada en el factor 3 (producción científica de\r\nlos profesores) y en el factor 5 (productos de la investigación)\r\n(secciones 3.2 y 5.3).',NULL),
	(1132,271,'Producción científica de los graduados registrada en las\r\nbases de datos internacionales de revistas indexadas (ISI y\r\nSCOPUS).',NULL),
	(1133,271,'Premios científicos y otras distinciones obtenidas por los\r\ngraduados.',NULL),
	(1134,271,'Apreciación de la efectividad de los mecanismos de\r\nseguimiento del programa de sus egresados.',NULL),
	(1135,272,'Evaluación de los resultados científicos del programa y de\r\nsu impacto, así como su utilización para retroalimentar y\r\nmejorar la calidad del programa. ¿Cuál es la producción\r\nacadémica de los graduados? ¿Cómo podemos valorar sus\r\naportes al campo científico del programa?',NULL),
	(1136,273,'Capacidad, acondicionamiento y adecuada utilización de\r\nespacios físicos dedicados a la docencia (aulas, etc.) y a la\r\ninvestigación (laboratorios, etc.).',NULL),
	(1137,273,'Capacidad, acondicionamiento y adecuada utilización de\r\nespacios físicos dedicados al estudio por parte de los estudiantes,\r\ntales como cubículos u oficinas para ellos.',NULL),
	(1138,273,'Dotación suficiente de las instalaciones para el trabajo\r\nindividual y colectivo de los profesores y utilización adecuada de\r\nlos mismos.',NULL),
	(1139,273,'Apreciación sobre la calidad de los espacios físicos\r\ndisponibles para el programa.',NULL),
	(1140,274,'Documentos con criterios y políticas institucionales y del\r\nprograma en materia de adquisición, actualización y capacitación\r\npara el uso de recursos informáticos y de comunicación; y de\r\nmaterial bibliográfico.',NULL),
	(1141,274,'Documentos con criterios y políticas institucionales y del\r\nprograma en materia de adquisición, actualización y capacitación\r\npara el uso de recursos informáticos y de comunicación; y de\r\nmaterial bibliográfico.',NULL),
	(1142,274,'Adecuado apoyo en términos de material bibliográfico y bases\r\nde datos para las líneas de investigación del programa.',NULL),
	(1143,274,'Disponibilidad de recursos informáticos y estrategias\r\norientadas a facilitar el uso de dichos recursos. Ejm. proporción\r\nentre el número de profesores y estudiantes del programa y el\r\nnúmero de recursos informáticos, tales como computadores,\r\nprogramas de informática, conexiones a redes y multimedia;\r\nincluye capacitación en el uso de estas tecnologías.',NULL),
	(1144,274,'Existencia de una plataforma tecnológica que garantice buena\r\nconectividad y acceso a bases de datos o sistemas de información\r\na nivel mundial.',NULL),
	(1145,274,'Apreciación de directivos, profesores y estudiantes del\r\nprograma sobre la pertinencia, actualización y suficiencia de los\r\nrecursos informáticos y de comunicación con que cuenta el\r\nprograma.',NULL),
	(1146,275,'Proporción adecuada entre el número de personal\r\nadministrativo y de servicio, y el número de docentes y\r\nestudiantes, considerando las exigencias del programa.',NULL),
	(1147,275,'Percepción de la calidad del apoyo administrativo por parte\r\nde profesores y estudiantes',NULL),
	(1148,276,'Existencia de una estrategia de financiación que plantee\r\nclaramente la viabilidad financiera del programa, proyectando\r\ningresos y egresos para los próximos tres a cinco años.',NULL),
	(1149,276,'Apreciación de directivos y profesores del programa sobre lo\r\nadecuado de los recursos presupuestales de que se dispone.',NULL),
	(1150,277,'Existencia y funciones del Comité Asesor o Científico del\r\nPrograma, especialmente en el caso de Doctorados. Papel que\r\ndesempeña.',NULL),
	(1151,277,'Calidad de los sistemas de información para la gestión\r\nacadémica del programa (v.gr. sistemas de información sobre las\r\nactividades de investigación y divulgación de sus resultados).',NULL),
	(1152,278,'Documento con proyección, programación y ejecución del\r\npresupuesto de inversión y de funcionamiento del programa y\r\nmecanismos de control.',NULL);

/*!40000 ALTER TABLE `indicador` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table indicador_model
# ------------------------------------------------------------

DROP TABLE IF EXISTS `indicador_model`;

CREATE TABLE `indicador_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caracteristica_model` int(11) DEFAULT NULL,
  `nombre` longtext COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B7A76EBF7055E10` (`caracteristica_model`),
  CONSTRAINT `FK_B7A76EBF7055E10` FOREIGN KEY (`caracteristica_model`) REFERENCES `caracteristica_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `indicador_model` WRITE;
/*!40000 ALTER TABLE `indicador_model` DISABLE KEYS */;

INSERT INTO `indicador_model` (`id`, `caracteristica_model`, `nombre`, `descripcion`)
VALUES
	(1,1,'Claridad en los objetivos del programa.',NULL),
	(2,1,'Capacidad demostrada para lograr dichos objetivos.',NULL),
	(3,1,'Coherencia entre los objetivos del programa y la Visión,\r\nMisión y Proyecto Institucional de la Universidad.',NULL),
	(4,2,'Documento que incluye la reglamentación del proceso de admisión.',NULL),
	(5,2,'Rigurosidad del proceso de selección de estudiantes.',NULL),
	(6,2,'Porcentaje de admitidos que cumplen con el nivel de dominio mínimo de una lengua extranjera establecido por el programa.',NULL),
	(7,2,'Estrategia para asegurar un número de estudiantes adecuado en el programa.',NULL),
	(8,2,'Estudiantes de tiempo completo, es decir exclusividad en su dedicación al programa (para el caso de doctorados)',NULL),
	(9,2,'Capacidad del programa de atraer estudiantes de otras instituciones, de otras regiones del país y de otros países.',NULL),
	(10,3,'Tasa de deserción de los estudiantes',NULL),
	(11,3,'No. de publicaciones realizadas por los estudiantes del programa en revistas indexadas nacionales e internacionales',NULL),
	(12,3,'Promedio de estudiantes que asisten a congresos y otros\r\neventos académicos, científicos o de creación artística\r\nnacionales e internacionales',NULL),
	(13,3,'Participación de los estudiantes en grupos de\r\ninvestigación, creación artística, redes de investigación y\r\ncomunidades científicas.',NULL),
	(14,3,'Mecanismo de evaluación del desempeño de los\r\nestudiantes, rigurosidad y transparencia del mismo',NULL),
	(15,4,'Documento en el que se expresa el perfil que se espera\r\nsatisfaga el estudiante al culminar el programa',NULL),
	(16,4,'Tiempo de duración promedio por cohorte para la\r\nobtención del grado.',NULL),
	(17,4,'Tiempo de duración promedio en años, por estudiante,\r\npara la obtención del grado.',NULL),
	(18,5,'Documento sobre políticas de selección, renovación y\r\ncontratación de profesores',NULL),
	(19,5,'Número adecuado de profesores de tiempo completo, con\r\ndoctorado que desarrollan actividades académicas en el\r\nprograma, y capacidad para dirigir tesis de grado (habilitados)',NULL),
	(20,5,'Número de Profesores Visitantes de Universidades\r\nextranjeras o colombianas: cursos, seminarios, investigación o\r\ntutor tesis.',NULL),
	(21,5,'Número de distinciones que Profesores han recibido en\r\núltimos cinco años (premios, pertenencia por invitación a\r\nAcademias nacionales o extranjeros, invitación como\r\nProfesor Visitante).',NULL),
	(22,5,'Porcentaje de profesores por tipo de vinculación que\r\ncumplen el nivel de dominio esperado en un lengua extranjera',NULL),
	(23,5,'Dedicación de los profesores a la investigación.\r\nDistribución semestral de los programas de trabajo académico\r\nde los profesores según su dedicación a la investigación,\r\ndocencia y extensión.',NULL),
	(24,6,'Número de publicaciones científicas de los profesores del\r\nprograma en los últimos cinco años:\r\nNo. de artículos en revistas internacionales indexadas\r\nNo. de artículos en revistas nacionales indexadas\r\nNo. de libros (con ISBN) relacionados con investigación\r\ndesarrollada por el programa\r\nNo. de capítulos en libros (con ISBN) relacionados con\r\ninvestigación desarrollada por el programa.\r\nOtras publicaciones',NULL),
	(25,6,'Impacto de las publicaciones, medido en términos de\r\nindicadores de citas bibliográficas y cocitaciones (v.gr. ISI y\r\nScimago/Scopus)',NULL),
	(26,6,'Número de Patentes, productos tecnológicos u otro tipo de\r\nresultados de las investigaciones realizadas, en los últimos\r\ncinco años',NULL),
	(27,6,'(Cuando sea pertinente) Número de obras musicales o\r\nartísticas sometidas a crítica.',NULL),
	(28,6,'Participación en Comités Editoriales',NULL),
	(29,7,'Relación Estudiante/Tutor en el programa. No. de\r\nestudiantes por tutor (sólo profesores de TC y habilitados para\r\ndirigir tesis)',NULL),
	(30,7,'Flexibilidad del programa para permitir tutores externos:\r\nNo. de tutores externos (sólo pueden ser co-tutores)',NULL),
	(31,7,'Política sobre asignación de profesores como jurados de\r\ntesis.',NULL),
	(32,8,'Política de selección, renovación y contratación de\r\nprofesores',NULL),
	(33,8,'Existencia de políticas de relevo generacional coherentes\r\ncon las Líneas de Investigación existentes o planeadas',NULL),
	(34,8,'Formación continuada de profesores; política sobre años\r\nsabáticos y postdoctorado; Número de profesores que se han\r\nacogido a estas posibilidades en los tres últimos años.',NULL),
	(35,8,'Política y mecanismos de evaluación de profesores y\r\ncoherencia entre remuneración y méritos académicos.',NULL),
	(36,8,'Apreciación de estudiantes y egresados sobre la calidad de\r\nlas competencias pedagógicas del grupo de profesores del\r\nprograma.',NULL),
	(37,8,'. Política de flexibilidad que permita al programa contar\r\ncon tutores externos.',NULL),
	(38,9,'Documento con políticas de acompañamiento estudiantil y tutoría académica.',NULL),
	(39,9,'Desarrollo de competencias básicas de investigación, mediante estrategias propias de cada campo de conocimiento','Desarrollo de competencias básicas de investigación, mediante estrategias propias de cada campo de conocimiento, tales como:\r\n. Capacidad de indagación en los estudiantes.\r\n. Capacidad de pensamiento autónomo y dominio de las técnicas de investigación pertinentes.\r\n. Capacidad de construir estados del arte y tendencias en un campo del conocimiento\r\n. Capacidad de comunicación de avances y resultados de la investigación'),
	(40,9,'Estrategias y mecanismos de seguimiento por parte de los Tutores (Directores de Tesis o de los Trabajos de Grado) de las labores desarrolladas por los estudiantes.',NULL),
	(41,9,'Número de Tesis Doctorales o Trabajos de Grado premiados por fuentes externas a la universidad.',NULL),
	(42,9,'Apreciación de los estudiantes sobre la calidad del proceso de acompañamiento de los tutores en su proceso de formación.',NULL),
	(43,10,'Facilidad de acceso a cursos, seminarios o conferencias en la universidad sobre diversos aspectos relacionados con\r\ncambios en la ciencia mundial y con aspectos relevantes del entorno social y económico del país o de la región, o con\r\ntemas ambientales que definen necesidades de desarrollo que la sociedad confronta.',NULL),
	(44,10,'En los campos del conocimiento que sean pertinentes (v.gr. ingenierías y administración), relación entre el conocimiento generado por la ciencia y su aplicación en el sector productivo, incluyendo aspectos de emprendimiento y desarrollo empresarial.',NULL),
	(45,11,'Oferta académica amplia que suministre opciones al estudiante de temas o líneas de investigación en las que puede trabajar',NULL),
	(46,11,'Aprovechamiento de seminarios y ofertas académicas de otros grupos de investigación y programas, de la propia universidad o de otras universidades nacionales o extranjeras.',NULL),
	(47,11,'Convenios que faciliten, promuevan y garanticen la movilidad de estudiantes y profesores, mediante estadías de investigación en otras universidades nacionales y extranjeras.',NULL),
	(48,12,'Práctica real de procesos periódicos de autoevaluación, conducentes a mejoras en el programa. Existencia de criterios y procedimientos claros que orientes este proceso',NULL),
	(49,12,'Estrategias y evidencias de seguimiento a dicha evaluación.',NULL),
	(50,12,'Grado de participación de profesores, estudiantes, directivos y personal técnico y administrativo en dichos procesos.',NULL),
	(51,13,'Documento con la política institucional sobre la investigación',NULL),
	(52,13,'Estrategias por medio de las cuales la investigación constituye la base del programa, y como ella contribuirá a formar investigadores, en el caso e los doctorados, o generar competencias investigativas en el caso de las maestrías.',NULL),
	(53,13,'Existencia de un o más grupos de investigación, consolidados, con publicaciones científicas o con los productos que sean relevantes en cada campo del conocimiento.',NULL),
	(54,13,'En las líneas de investigación y creación artística existen investigadores activos que pueden suministrar tutorías a los estudiantes en sus respectivos campos.(Número de investigadores, líneas de investigación, producción científica).',NULL),
	(55,13,'Políticas claras de apoyo a la investigación y estrategias que aseguren la implementación de esta (v.gr. reconocimiento de tiempo a profesores, laboratorios adecuados, financiación de proyectos, otros).',NULL),
	(56,13,'Número de Tesis Doctorales o Trabajos de Grado premiados por fuentes externas a la universidad.',NULL),
	(57,13,'Apreciación sobre las estrategias utilizadas por el programa para articular sus líneas de investigación con la formación de los estudiantes.',NULL),
	(58,14,'Número de grupos de investigación y creación artística relacionados con el programa, clasificados en categoría A1, A y B en el ScientiCol de COLCIENCIAS.',NULL),
	(59,14,'Banco de proyectos de investigación y creación artística de cada grupo, constituida por: Número de proyectos terminados en los últimos cinco años; y número de proyectos de investigación y creación artística activos o en ejecución.',NULL),
	(60,14,'Número de investigadores por grupo y línea de investigación.',NULL),
	(61,14,'11. Porcentaje de recursos financieros internos o externos que el programa logró movilizar para el desarrollo del conjunto de proyectos de investigación y creación artística, en los últimos 5 años.',NULL),
	(62,14,'Integración de los grupos de investigación y creación artística en consorcios o redes de conocida trayectoria 29 internacional.',NULL),
	(63,14,'Porcentaje de profesores del programa por grupo de investigación o de creación artística y/o por redes de investigación (centros de excelencia).',NULL),
	(64,14,'Apreciación sobre las estrategias utilizadas por el programa para articular sus líneas de investigación a los\r\ngrupos de investigación de la universidad y de otras universidades nacionales e internacionales.',NULL),
	(65,15,'Número de publicaciones indexadas, en el ScientiCol y en bases de datos internacionales.',NULL),
	(66,15,'Número de citas y co-citaciones (indicador de impacto en la comunidad científica).',NULL),
	(67,15,'Número patentes, productos tecnológicos, obras de arte con reconocimiento público, etc.',NULL),
	(68,15,'Valoración del aporte real de cada grupo de investigación creación artística que apoya el posgrado o del programa mismo.',NULL),
	(69,15,'Número de tesis o trabajos de grado terminados en los últimos ocho años.',NULL),
	(70,16,'Posibilidad de tomar seminarios o cursos en campos complementarios a los del programa de posgrado ya sea en la propia universidad o en otras universidades, vía alianzas estratégicas.',NULL),
	(71,16,'Posibilidad de participar en las actividades de otros grupos de investigación relacionados con el programa de posgrado o con programas complementarios.',NULL),
	(72,16,'Posibilidad de trabajar con Directores de Tesis que sean de otras universidades y programas, que aporten perspectivas diferentes a las del cuerpo docente del programa.',NULL),
	(73,16,'Porcentaje de convenios activos y en funcionamiento firmados con instituciones nacionales e internacionales para el desarrollo del programa.',NULL),
	(74,17,'Documento en el que se exprese el aporte de cada grupo de investigación o de creación artística para el desarrollo del país o de la región.',NULL),
	(75,17,'Existencia de líneas de investigación o de creación artística relacionadas con problemas o temas de desarrollo de la comunidad nacional, regional o local, o con problemas del sector productivo o de otros usuarios del conocimiento.',NULL),
	(76,17,'Innovaciones, cambios o mejoras en el entorno (social o productivo), o innovaciones artísticas y culturales, introducidas a partir de resultados de tesis de grado de estudiantes, de proyectos de investigación realizados por el grupo, o de servicios de extensión ofrecidos por el programa.',NULL),
	(77,17,'Apreciación de la comunidad académica sobre la relevancia de las líneas de investigación y de sus proyectos para el país.',NULL),
	(78,18,'Investigaciones desarrolladas en el Doctorado o en la Maestría sobre problemas o desafíos que se enfrentan a nivel nacional, regional y local.',NULL),
	(79,18,'Número de temas de las tesis de grado que se han realizado sobre aspectos o problemas de interés para el desarrollo nacional, o para el desarrollo regional o local.',NULL),
	(80,18,'Porcentaje de contratos con actores sociales del entorno (v,gr, empresas, gremios, agencias de gobierno, ONGs, etc.) para realizar investigación o servicios de consultorías relacionados con temas de su interés.',NULL),
	(81,19,'Documento en los que se expresen acuerdos para otorgar\r\ndoble titulación con universidades extranjeras.',NULL),
	(82,19,'Requisito de hacer pasantías de seis meses o más en grupos\r\nde investigación en el extranjero, en grupos de reconocida\r\ntrayectoria en su respectivo campo.',NULL),
	(83,19,'Facilidad de homologación con programas de reconocida\r\ncalidad en el extranjero y posibilidad de realizar Programas\r\ncon doble titulación o programas conjuntos.',NULL),
	(84,19,'Oferta de seminarios y cursos de carácter internacional\r\n(temas internacionales).',NULL),
	(85,19,'Requisito de lengua extranjera y cursos o seminarios\r\nofrecidos en otras lenguas',NULL),
	(86,20,'Porcentaje de estudiantes extranjeros en el programa y\r\nexistencia en la universidad de una oficina o servicio\r\nencargado de estudiantes extranjeros, con una clara estrategia\r\npara integrar estos últimos al programa y a la ciudad.',NULL),
	(87,20,'Convenios de intercambio activos con universidades\r\nextranjeras.',NULL),
	(88,20,'Experiencias de homologación de cursos del programa en\r\nprogramas extranjeros.',NULL),
	(89,20,'Profesores visitantes extranjeros en el programa.',NULL),
	(90,20,'Profesores del programa como Profesores Visitantes en\r\nuniversidades extranjeras.',NULL),
	(91,20,'Becas o proyectos de investigación financiadas por fuentes\r\nextranjeras.',NULL),
	(92,20,'Apreciación de estudiantes y egresados sobre la\r\nefectividad de la divulgación de posibilidades para hacer\r\npasantías con grupos de investigación y creación artística en el\r\nextranjero.',NULL),
	(93,21,'Participación en redes internacionales de investigación.',NULL),
	(94,21,'Investigadores del programa que han hecho pasantías en\r\ngrupos de investigación extranjeros.',NULL),
	(95,21,'Proyectos de investigación conjuntos con universidades o\r\ncentros de investigación extranjeros.',NULL),
	(96,21,'Existencia de tesis de Doctorado o de Grado dirigidas por\r\nprofesores en el extranjero.',NULL),
	(97,21,'Acceso a laboratorios u otras facilidades de investigación\r\nen universidades extranjeras.',NULL),
	(98,21,'Trascendencia de la actividad artística de los profesores\r\ndel programa en el ámbito nacional (en los programas en los\r\nque esto es relevante).',NULL),
	(99,22,'Documentos con políticas institucionales orientadas al\r\n\r\nbienestar y la cultura recreativa.',NULL),
	(100,22,'Exigencia de vinculación de los estudiantes a una EPS y en\r\ncaso de ser necesario a una ARP.',NULL),
	(101,22,'Existencia y efectividad de unidades médicas que prestan\r\nservicios básicos y asistencia sicológica.',NULL),
	(102,22,'Existencia y efectividad de mecanismos que garanticen el\r\nbienestar de los estudiantes durante cortas estadías en el\r\nextranjero, como parte de la movilidad estudiantil y de la\r\nparticipación en congresos y eventos científicos (v.gr. tarjetas\r\nde asistencia médica).',NULL),
	(103,22,'Apoyo a la consecución de vivienda para estudiantes\r\ncasados, sobre todo los extranjeros y de otras regiones del país\r\n(mínimo suministro de información).',NULL),
	(104,22,'Apreciación sobre la divulgación, la calidad y la\r\nefectividad de los servicios de bienestar de la universidad.',NULL),
	(105,23,'¿Cuántos graduados tiene el programa? ¿Cuántos egresados\r\ntiene el programa? ¿Hace el programa seguimiento a sus\r\ngraduados? ¿Cómo lo hace? ¿Dónde trabajan los graduados?',NULL),
	(106,23,'Identificar ¿cuántos graduados se quedan en la propia\r\nuniversidad y cuántos en otras, en Colombia y en el exterior?\r\n¿En otras organizaciones? Lo que aquí se plantea es\r\ninformación sobre la “estructura ocupacional”',NULL),
	(107,23,'Producción científica de los graduados: No. de\r\npublicaciones siguiendo la misma clasificación de\r\npublicaciones utilizada en el factor 3 (producción científica de\r\nlos profesores) y en el factor 5 (productos de la investigación)\r\n(secciones 3.2 y 5.3).',NULL),
	(108,23,'Producción científica de los graduados registrada en las\r\nbases de datos internacionales de revistas indexadas (ISI y\r\nSCOPUS).',NULL),
	(109,23,'Premios científicos y otras distinciones obtenidas por los\r\ngraduados.',NULL),
	(110,23,'Apreciación de la efectividad de los mecanismos de\r\nseguimiento del programa de sus egresados.',NULL),
	(111,24,'Evaluación de los resultados científicos del programa y de\r\nsu impacto, así como su utilización para retroalimentar y\r\nmejorar la calidad del programa. ¿Cuál es la producción\r\nacadémica de los graduados? ¿Cómo podemos valorar sus\r\naportes al campo científico del programa?',NULL),
	(112,25,'Capacidad, acondicionamiento y adecuada utilización de\r\nespacios físicos dedicados a la docencia (aulas, etc.) y a la\r\ninvestigación (laboratorios, etc.).',NULL),
	(113,25,'Capacidad, acondicionamiento y adecuada utilización de\r\nespacios físicos dedicados al estudio por parte de los estudiantes,\r\ntales como cubículos u oficinas para ellos.',NULL),
	(114,25,'Dotación suficiente de las instalaciones para el trabajo\r\nindividual y colectivo de los profesores y utilización adecuada de\r\nlos mismos.',NULL),
	(115,25,'Apreciación sobre la calidad de los espacios físicos\r\ndisponibles para el programa.',NULL),
	(116,26,'Documentos con criterios y políticas institucionales y del\r\nprograma en materia de adquisición, actualización y capacitación\r\npara el uso de recursos informáticos y de comunicación; y de\r\nmaterial bibliográfico.',NULL),
	(117,26,'Documentos con criterios y políticas institucionales y del\r\nprograma en materia de adquisición, actualización y capacitación\r\npara el uso de recursos informáticos y de comunicación; y de\r\nmaterial bibliográfico.',NULL),
	(118,26,'Adecuado apoyo en términos de material bibliográfico y bases\r\nde datos para las líneas de investigación del programa.',NULL),
	(119,26,'Disponibilidad de recursos informáticos y estrategias\r\norientadas a facilitar el uso de dichos recursos. Ejm. proporción\r\nentre el número de profesores y estudiantes del programa y el\r\nnúmero de recursos informáticos, tales como computadores,\r\nprogramas de informática, conexiones a redes y multimedia;\r\nincluye capacitación en el uso de estas tecnologías.',NULL),
	(120,26,'Existencia de una plataforma tecnológica que garantice buena\r\nconectividad y acceso a bases de datos o sistemas de información\r\na nivel mundial.',NULL),
	(121,26,'Apreciación de directivos, profesores y estudiantes del\r\nprograma sobre la pertinencia, actualización y suficiencia de los\r\nrecursos informáticos y de comunicación con que cuenta el\r\nprograma.',NULL),
	(122,27,'Proporción adecuada entre el número de personal\r\nadministrativo y de servicio, y el número de docentes y\r\nestudiantes, considerando las exigencias del programa.',NULL),
	(123,27,'Percepción de la calidad del apoyo administrativo por parte\r\nde profesores y estudiantes',NULL),
	(124,28,'Existencia de una estrategia de financiación que plantee\r\nclaramente la viabilidad financiera del programa, proyectando\r\ningresos y egresos para los próximos tres a cinco años.',NULL),
	(125,30,'Documento con proyección, programación y ejecución del\r\npresupuesto de inversión y de funcionamiento del programa y\r\nmecanismos de control.',NULL),
	(126,28,'Apreciación de directivos y profesores del programa sobre lo\r\nadecuado de los recursos presupuestales de que se dispone.',NULL),
	(127,29,'Existencia y funciones del Comité Asesor o Científico del\r\nPrograma, especialmente en el caso de Doctorados. Papel que\r\ndesempeña.',NULL),
	(128,29,'Calidad de los sistemas de información para la gestión\r\nacadémica del programa (v.gr. sistemas de información sobre las\r\nactividades de investigación y divulgación de sus resultados).',NULL);

/*!40000 ALTER TABLE `indicador_model` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modelo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modelo`;

CREATE TABLE `modelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `programa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F0D76C462F0140D` (`programa`),
  CONSTRAINT `FK_F0D76C462F0140D` FOREIGN KEY (`programa`) REFERENCES `programa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;

INSERT INTO `modelo` (`id`, `nombre`, `programa`)
VALUES
	(1,'Modelo de maestría Junio 2019',2),
	(3,'Modelo de Autoevaluación con fines de Acreditación',1),
	(9,'Modelo de Prueba',NULL);

/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table programa
# ------------------------------------------------------------

DROP TABLE IF EXISTS `programa`;

CREATE TABLE `programa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `norma` longtext COLLATE utf8_unicode_ci NOT NULL,
  `codigo` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nivel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jornada` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metodologia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duracion` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodicidad` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facultad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lugar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `programa` WRITE;
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;

INSERT INTO `programa` (`id`, `nombre`, `titulo`, `norma`, `codigo`, `nivel`, `jornada`, `metodologia`, `duracion`, `periodicidad`, `facultad`, `lugar`)
VALUES
	(1,'Doctorado en Ingeniería Telemática','Doctor en Ingeniería Telemática','Acuerdo 084 de 2007 expedido por el Consejo Superior de la Universidad del Cauca, modificado por el acuerdo número 100 de Diciembre de 2007.','53918','Postgrado','Diurna','Presencial','Diez semestres','Anual','Ingeniería Electrónica y Telecomunicaciones','Popayán'),
	(2,'Maestría en Ingeniería Telemática','Magister en Ingeniería Telemática','Acuerdo No. 25 de 1981 del Consejo Académico (Nueva denominación: Acuerdo 099 de 2007 del Consejo Superior)','90930','Postgrado','Diurna','Presencial','Cuatro semestres','Anual','Ingeniería Electrónica y Telecomunicaciones','Popayan');

/*!40000 ALTER TABLE `programa` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table recurso
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recurso`;

CREATE TABLE `recurso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `enlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `recurso` WRITE;
/*!40000 ALTER TABLE `recurso` DISABLE KEYS */;

INSERT INTO `recurso` (`id`, `nombre`, `tipo`, `enlace`)
VALUES
	(17,'Proyecto Educativo Institucional','Documental','PEI Unicauca-5d1cdaa285eb1.pdf'),
	(18,'Información general del programa','Documental','Información general del Doctorado-5d1cdbeb1c2cc.pdf'),
	(19,'Objetivos del programa','Documental','Información general del Doctorado-5d1cddabc1a75.pdf'),
	(27,'Estatuto de Postgrados (Acuerdo 035/1992)','Documental','Acuerdo-035-1992-5d28f1cc4b6ab.pdf'),
	(28,'Reglamento de Doctorados, Maestrías y Especializaciones (Acuerdo 022/2013)','Documental','Acuerdo-022-2013-5d28f21ea861e.pdf'),
	(29,'Estructura del Sistema de Posgrados (Acuerdo 052/2015)','Documental','Acuerdo-052-2015-5d28f3316c237.pdf'),
	(30,'Reglamento del Programa 2014','Documental','Reglamento-Doctorado-5d28f45b8e473.pdf'),
	(31,'Profesores al servicio del Programa','Documental','Personal docente DocIngTm-5d3b64a0ed737.pdf');

/*!40000 ALTER TABLE `recurso` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table recursoU
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recursoU`;

CREATE TABLE `recursoU` (
  `indicador_id` int(11) NOT NULL,
  `recurso_id` int(11) NOT NULL,
  PRIMARY KEY (`indicador_id`,`recurso_id`),
  KEY `IDX_836E548047D487D1` (`indicador_id`),
  KEY `IDX_836E5480E52B6C4E` (`recurso_id`),
  CONSTRAINT `FK_836E548047D487D1` FOREIGN KEY (`indicador_id`) REFERENCES `indicador` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_836E5480E52B6C4E` FOREIGN KEY (`recurso_id`) REFERENCES `recurso` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `recursoU` WRITE;
/*!40000 ALTER TABLE `recursoU` DISABLE KEYS */;

INSERT INTO `recursoU` (`indicador_id`, `recurso_id`)
VALUES
	(257,19),
	(257,27),
	(257,28),
	(258,28),
	(258,29),
	(259,17),
	(259,18),
	(259,28),
	(259,29),
	(260,30),
	(261,27),
	(261,28),
	(261,29),
	(263,27),
	(264,27),
	(265,27),
	(265,28),
	(266,28),
	(266,30),
	(267,28),
	(268,28),
	(269,28),
	(270,27),
	(270,28),
	(270,30),
	(273,28),
	(273,30),
	(274,27),
	(275,27),
	(275,31),
	(280,27),
	(285,28),
	(286,27),
	(286,28),
	(286,30),
	(287,27),
	(287,28),
	(288,29),
	(290,29),
	(291,29),
	(294,27),
	(294,28),
	(294,29),
	(295,27),
	(295,28),
	(299,28),
	(300,28),
	(301,27),
	(301,28),
	(301,29),
	(302,27),
	(302,28),
	(302,29),
	(303,28),
	(303,29),
	(304,28),
	(305,28),
	(306,28),
	(307,28),
	(309,27),
	(314,28),
	(314,29),
	(315,29),
	(316,29),
	(317,29),
	(318,29),
	(326,27),
	(327,27),
	(328,27),
	(329,28),
	(330,28),
	(331,28),
	(332,28),
	(333,28),
	(338,28),
	(341,28),
	(343,28),
	(344,28),
	(378,28),
	(379,28),
	(380,29),
	(382,27),
	(382,29),
	(382,30);

/*!40000 ALTER TABLE `recursoU` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table usuario
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2265B05DF85E0677` (`username`),
  UNIQUE KEY `UNIQ_2265B05DE7927C74` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;

INSERT INTO `usuario` (`id`, `username`, `password`, `email`, `is_active`, `roles`)
VALUES
	(1,'rodrigobp@unicauca.edu.co','$2y$13$H7In394XBTvrWRu1cEuA.uyO4TNCwndwihSFoMuWKhR29u8cIBmFu','rodrigobp@unicauca.edu.co',1,'[\"ROLE_ADMIN\"]'),
	(2,'asd@asd.com','$2y$13$N9h/YzUydBpBcUz.YxDRouSV18dAKruh.ssPD2lDv8h7m/aDeiRo.','asd@asd.com',1,'[\"ROLE_MONITOR\"]'),
	(3,'prueba@prueba.com','$2y$13$aZXDQEpwVgLdX36Dl6tmbuJ7IRYjwl1drC2qQnQDllGmy28AUoa/O','prueba@prueba.com',1,'[\"ROLE_ADMIN_AUTOEVAL\"]'),
	(6,'rdpatino@unicauca.edu.co','$2y$13$X9e8ZdRhFQFtY22jT3DRlOWobkNG9E4TP7nMjudCCxPH1WH6eLr9W','rdpatino@unicauca.edu.co',1,'[\"ROLE_ADMIN\"]'),
	(7,'jpmurillo@unicauca.edu.co','$2y$13$KpgKyl/gzXfC4xMtoTlXCuD4G/TLgG1VgyU64kXjozjnqmNG5Awfy','jpmurillo@unicauca.edu.co',1,'[\"ROLE_ADMIN\"]'),
	(8,'dianasofi@unicauca.edu.co','$2y$13$BmM2yH4P3vDsHs5t/KJLdOe2CfD5u.92Vzdqs3dWHqhudB3JB5tya','dianasofi@unicauca.edu.co',1,'[\"ROLE_ADMIN\"]'),
	(9,'msolarte@unicauca.edu.co','$2y$13$cZzTNvT3FuxKC.34Qc9O3uvmslIDIedtjhYWnrn/sBAMFFz9rbVwC','msolarte@unicauca.edu.co',1,'[\"ROLE_ADMIN\"]');

/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
