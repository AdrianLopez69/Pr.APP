-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectofinal
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accesos`
--

DROP TABLE IF EXISTS `accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesos` (
  `acs_id` int NOT NULL AUTO_INCREMENT,
  `acs_registros_id` int NOT NULL,
  `acs_correo` varchar(100) DEFAULT NULL,
  `acs_contraseña` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`acs_id`),
  KEY `fk_Accesos_Registros1_idx` (`acs_registros_id`),
  CONSTRAINT `fk_Accesos_Registros1` FOREIGN KEY (`acs_registros_id`) REFERENCES `registros` (`reg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesos`
--

LOCK TABLES `accesos` WRITE;
/*!40000 ALTER TABLE `accesos` DISABLE KEYS */;
INSERT INTO `accesos` VALUES (1,12,'aderx0@addtoany.com','UOII'),(2,9,'dforrington1@hexun.com','AYXP'),(3,11,'tmully2@w3.org','GLNA'),(4,16,'panfusso3@paypal.com','GUKU'),(5,12,'aderx0@addtoany.com','UOII'),(6,9,'dforrington1@hexun.com','AYXP'),(7,11,'tmully2@w3.org','GLNA'),(8,16,'panfusso3@paypal.com','GUKU'),(9,11,'hbrithman4@miibeian.gov.cn','SVTC'),(10,19,'dgreenrodd5@irs.gov',NULL),(11,1,'kdolligon6@clickbank.net','ENKR'),(12,12,'klithgow7@go.com','WITA'),(13,5,'pgosnay8@w3.org','EGGD'),(14,4,'gteague9@last.fm','ZMUB'),(15,16,'cpaternoa@hud.gov','YANL'),(16,5,'jeimb@spotify.com','KUIN'),(17,4,'jkleinplacc@adobe.com','DNPO'),(18,16,'rhowisd@edublogs.org',NULL),(19,5,'glavignee@hibu.com','MWCB'),(20,19,'mduerf@sohu.com','NTGH'),(21,14,'bpurverg@java.com','CYPR'),(22,3,'dcapronh@rediff.com','HTDA'),(23,7,'spercivali@google.com','SKBU'),(24,8,'okillfordj@opensource.org','EPGD');
/*!40000 ALTER TABLE `accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplicaciones`
--

DROP TABLE IF EXISTS `aplicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicaciones` (
  `apl_id` int NOT NULL AUTO_INCREMENT,
  `apl_usuarios_id` int NOT NULL,
  `apl_aplicacion` varchar(50) DEFAULT NULL,
  `apl_version` varchar(20) DEFAULT NULL,
  `apl_descripcion` text,
  `apl_fecha_hora_lanzamiento` date DEFAULT NULL,
  `apl_precio` decimal(10,2) DEFAULT NULL,
  `apl_calificacion` float DEFAULT NULL,
  PRIMARY KEY (`apl_id`),
  KEY `fk_Aplicaciones_Usuarios1_idx` (`apl_usuarios_id`),
  CONSTRAINT `fk_Aplicaciones_Usuarios1` FOREIGN KEY (`apl_usuarios_id`) REFERENCES `usuarios` (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicaciones`
--

LOCK TABLES `aplicaciones` WRITE;
/*!40000 ALTER TABLE `aplicaciones` DISABLE KEYS */;
INSERT INTO `aplicaciones` VALUES (1,1,'GrooveMaster','1.0.0','Plataforma para crear y compartir listas de reproducción','2023-01-15',4.99,4.2),(2,2,'BeatBoxer','2.1.0','Secuenciador de ritmos y bucles','2023-02-10',3.99,4.5),(3,3,'TuneWave','3.5.2','Explorador de música con recomendaciones personalizadas','2023-03-05',0.00,4.8),(4,4,'MeloMix','1.3.0','Mezclador de música en tiempo real con efectos','2023-04-20',6.99,4.3),(5,5,'RhythmoJam','4.0.1','App para crear y compartir ritmos y melodías','2023-05-12',2.99,4.6),(6,6,'SoundScape','2.7.0','Crea paisajes sonoros únicos con efectos especiales','2023-06-18',1.99,4.1),(7,7,'HarmoniCloud','1.1.0','Almacenamiento en la nube para partituras y composiciones','2023-07-21',3.49,4.4),(8,8,'TempoTuner','3.2.0','Afinador de instrumentos con ajuste de tempo','2023-08-04',0.99,4.7),(9,9,'EchoSync','2.0.0','Sincroniza tus dispositivos para reproducir música en todas partes','2023-09-09',5.99,4.2),(10,10,'LyricLab','1.5.0','Herramienta para escribir letras de canciones con sugerencias de rimas','2023-10-30',4.49,4.6),(11,11,'ChordCraft','2.0.0','Generador de acordes y progresiones musicales','2023-11-15',1.99,4.4),(12,12,'PulsePlay','1.2.0','App para descubrir eventos musicales en tu área','2023-12-20',0.00,4.8),(13,13,'MelodyMaker','4.3.1','Creador de melodías con instrumentos virtuales','2024-01-05',7.99,4.3),(14,14,'AudioAura','2.1.0','Generador de ambientes sonoros para relajación y concentración','2024-02-10',2.49,4.7),(15,15,'HarmonyHub','3.0.0','Plataforma para colaboración musical en línea','2024-03-15',5.99,4.2),(16,16,'TrackTron','1.7.0','Editor de pistas de audio con herramientas de mezcla','2024-04-20',4.99,4.6),(17,17,'NoteNest','2.5.0','Organizador de ideas musicales y composiciones','2024-05-12',3.49,4.5),(18,18,'MixMaster','3.1.0','App para mezclar y remezclar canciones','2024-06-18',6.99,4.1),(19,19,'RiffRanger','1.2.0','Generador de riffs de guitarra con patrones personalizables','2024-07-21',2.99,4.8),(20,20,'SerenadeSync','2.0.1','Sincroniza letras de canciones con reproducción de música en tiempo real','2024-08-04',4.49,4.3),(21,21,'VibraVerse','1.0.0','Explora música en realidad virtual con amigos','2024-09-09',9.99,4.6),(22,22,'BeatBuddy','2.3.0','App de acompañamiento de batería para practicar y ensayar','2024-10-30',3.99,4.2),(23,23,'MeloMeld','1.5.0','Editor de melodías con funciones avanzadas de armonización','2024-11-15',5.49,4.7),(24,24,'GrooveGenius','2.0.0','Generador automático de grooves y ritmos','2024-12-20',7.99,4.4),(25,25,'SoundSpot','1.2.0','Encuentra los mejores lugares para escuchar música en tu ciudad','2025-01-05',0.00,4.9),(26,26,'HarmonyHive','2.1.0','Red social para músicos y compositores','2025-02-10',1.99,4.5),(27,27,'ToneTribe','3.0.0','Comunidad en línea para amantes del sonido y la música','2025-03-15',5.99,4.1),(28,28,'RhythmRider','1.7.0','Juego musical de ritmo y coordinación','2025-04-20',4.99,4.8),(29,29,'JamJunction','2.5.0','Encuentra músicos y forma bandas en tu área','2025-05-12',3.49,4.3),(30,30,'Melodify','3.1.0','App para convertir tus ideas melódicas en partituras','2025-06-18',6.99,4.6),(31,31,'BeatBliss','1.2.0','Plataforma de música en vivo con conciertos exclusivos','2025-07-21',2.99,4.2),(32,32,'TuneTroop','2.0.1','Crea y comparte listas de reproducción colaborativas','2025-08-04',4.49,4.7),(33,33,'EchoEnsemble','1.5.0','App para grabar y sobregrabar pistas de audio','2025-09-09',9.49,4.4),(34,34,'RiffRealm','2.0.0','Comunidad de guitarristas para compartir riffs y solos','2025-10-30',7.99,4.9),(35,35,'SoundSculptor','1.2.0','Editor de sonido para esculpir y modificar audio','2025-11-15',0.00,4.5),(36,36,'HarmonizeHub','3.0.0','Plataforma de armonización vocal y colaboración musical','2025-12-20',3.99,4.1),(37,37,'TempoTrek','2.1.0','Metronomo para llevar con ajustes de tempo y ritmo','2026-01-05',1.99,4.8),(38,38,'LyricLoom','1.7.0','Generador de letras de canciones con patrones y sugerencias','2026-02-10',5.99,4.3),(39,39,'ChordCrafter','2.5.0','Creador de acordes y progresiones musicales personalizadas','2026-03-15',4.49,4.6),(40,40,'PulsePilot','3.1.0','App para descubrir y comprar entradas para conciertos','2026-04-20',6.99,4.2),(41,41,'MelodyMeld','1.2.0','Herramienta para fusionar melodías y crear arreglos musicales','2026-05-12',2.99,4.7),(42,42,'AudioAlley','2.0.1','Explora y descubre nuevas bandas y artistas emergentes','2026-06-18',8.99,4.4),(43,43,'HarmonyHarbor','2.0.0','Plataforma para encontrar colaboradores musicales','2026-07-21',1.99,4.9),(44,44,'TrackTrekker','1.2.0','App para registrar y guardar tus caminatas mientras escuchas música','2026-08-04',0.00,4.5),(45,45,'NoteNexus','3.0.0','Red social para compartir ideas y notas musicales','2026-09-09',3.99,4.1),(46,46,'MixMagic','2.1.0','Estudio de grabación virtual con herramientas de mezcla avanzadas','2026-10-30',7.99,4.8),(47,47,'RiffRover','1.7.0','Explorador de riffs de guitarra con biblioteca de recursos','2026-11-15',4.49,4.3),(48,48,'SerenadeSonic','2.5.0','App para enviar serenatas musicales a tus amigos y seres queridos','2026-12-20',6.99,4.6),(49,49,'VibraVoyage','1.2.0','Viaje musical interactivo a través de diferentes géneros y estilos','2027-01-05',2.99,4.2),(50,50,'BeatBooster','2.0.1','Boostea tus beats con esta app de edición de audio','2027-02-10',5.99,4.7);
/*!40000 ALTER TABLE `aplicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistas` (
  `art_id` int NOT NULL AUTO_INCREMENT,
  `art_nombre_completo` varchar(100) DEFAULT NULL,
  `art_canciones` varchar(45) DEFAULT NULL,
  `art_calificacion` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`art_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'Taylor Swift','Shake It Off, Love Story',9.50),(2,'Ed Sheeran','Shape of You, Thinking Out Loud',9.20),(3,'Adele','Hello, Someone Like You',9.80),(4,'Beyoncé','Single Ladies, Halo',9.70),(5,'Drake','Hotline Bling, God\'s Plan',9.40),(6,'Rihanna','Umbrella, Diamonds',9.60),(7,'Bruno Mars','Just the Way You Are, Uptown Funk',9.30),(8,'The Weeknd','Blinding Lights, Starboy',9.50),(9,'Lady Gaga','Bad Romance, Poker Face',9.70),(10,'Justin Bieber','Sorry, Love Yourself',9.10),(11,'Katy Perry','Firework, Roar',9.20),(12,'Ariana Grande','Thank U, Next, Problem',9.60),(13,'Coldplay','Viva la Vida, Fix You',9.40),(14,'Eminem','Lose Yourself, Stan',9.30),(15,'Kanye West','Stronger, Gold Digger',9.20),(16,'Michael Jackson','Thriller, Billie Jean',9.90),(17,'Queen','Bohemian Rhapsody, We Will Rock You',9.80),(18,'Elton John','Your Song, Rocket Man',9.60),(19,'BTS','Dynamite, Butter',9.50),(20,'Shakira','Hips Don\'t Lie, Waka Waka',9.40),(21,'Bob Marley','No Woman, No Cry, One Love',9.70),(22,'Pink Floyd','Comfortably Numb, Wish You Were Here',9.80),(23,'Whitney Houston','I Will Always Love You, Greatest Love of All',9.70),(24,'David Bowie','Space Oddity, Heroes',9.60),(25,'John Legend','All of Me, Ordinary People',9.30),(26,'Sia','Chandelier, Cheap Thrills',9.20),(27,'The Beatles','Hey Jude, Let It Be',9.90),(28,'Imagine Dragons','Radioactive, Believer',9.10),(29,'Nicki Minaj','Super Bass, Anaconda',9.40),(30,'Maroon 5','Sugar, Moves Like Jagger',9.50),(31,'U2','With or Without You, Beautiful Day',9.60),(32,'Alicia Keys','Fallin\', No One',9.30),(33,'Fleetwood Mac','Go Your Own Way, Dreams',9.70),(34,'Linkin Park','In the End, Numb',9.20),(35,'Guns N\' Roses','Sweet Child o\' Mine, November Rain',9.80),(36,'Celine Dion','My Heart Will Go On, The Power of Love',9.70),(37,'Jay-Z','Empire State of Mind, 99 Problems',9.40),(38,'Eagles','Hotel California, Take It Easy',9.50),(39,'Red Hot Chili Peppers','Under the Bridge, Californication',9.30),(40,'Oasis','Wonderwall, Don\'t Look Back in Anger',9.20),(41,'Miley Cyrus','Wrecking Ball, Party in the USA',9.10),(42,'AC/DC','Highway to Hell, Back in Black',9.70),(43,'The Rolling Stones','Paint It Black, Sympathy for the Devil',9.60),(44,'Ella Fitzgerald','Summertime, At Last',9.80),(45,'Sam Smith','Stay with Me, Writing\'s on the Wall',9.30),(46,'Frank Sinatra','My Way, Fly Me to the Moon',9.90),(47,'Lana Del Rey','Summertime Sadness, Video Games',9.60),(48,'Billie Eilish','Bad Guy, Ocean Eyes',9.40),(49,'George Michael','Careless Whisper, Faith',9.50),(50,'Blur','Song 2, Parklife',9.20);
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artistas_usuarios`
--

DROP TABLE IF EXISTS `artistas_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistas_usuarios` (
  `art_usu_id` int NOT NULL AUTO_INCREMENT,
  `art_usu_artistas_id` int NOT NULL,
  `art_usu_usuarios_id` int NOT NULL,
  PRIMARY KEY (`art_usu_id`),
  KEY `fk_Artistas_Usuarios_Artistas1_idx` (`art_usu_artistas_id`),
  KEY `fk_Artistas_Usuarios_Usuarios1_idx` (`art_usu_usuarios_id`),
  CONSTRAINT `fk_Artistas_Usuarios_Artistas1` FOREIGN KEY (`art_usu_artistas_id`) REFERENCES `artistas` (`art_id`),
  CONSTRAINT `fk_Artistas_Usuarios_Usuarios1` FOREIGN KEY (`art_usu_usuarios_id`) REFERENCES `usuarios` (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas_usuarios`
--

LOCK TABLES `artistas_usuarios` WRITE;
/*!40000 ALTER TABLE `artistas_usuarios` DISABLE KEYS */;
INSERT INTO `artistas_usuarios` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50);
/*!40000 ALTER TABLE `artistas_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `com_id` int NOT NULL AUTO_INCREMENT,
  `com_respuesta` varchar(200) DEFAULT NULL,
  `com_contenido` varchar(200) DEFAULT NULL,
  `com_fecha_hora` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,'¡Gracias por tu comentario!','Me alegra que disfrutes de la música tanto como yo. ¿Has escuchado el último álbum de nuestro artista favorito?','2024-02-07 09:00:00'),(2,'¡Exactamente! La energía en ese concierto fue asombrosa.','Me pregunto qué canción del nuevo álbum te gustó más. ¡Cuéntame tus favoritas!','2024-02-07 10:15:00'),(3,'¡Vaya! Parece que tuviste una experiencia increíble en el festival.','Me encantaría escuchar más sobre tus momentos destacados. ¿Cuál fue tu actuación favorita?','2024-02-07 11:30:00'),(4,'Estoy de acuerdo. La canción es realmente adictiva.','¿Has explorado otras canciones del mismo artista? Podría haber más joyas escondidas.','2024-02-07 12:45:00'),(5,'¡Esa lista de reproducción es genial! ¡Tan ecléctica!','Siempre es emocionante descubrir nueva música. ¿Alguna recomendación para mí?','2024-02-07 14:00:00'),(6,'Definitivamente, ese músico tiene un talento excepcional.','¿Has asistido a alguno de sus conciertos en persona? La experiencia en vivo es incomparable.','2024-02-07 15:15:00'),(7,'¡Me encantaría ir a ese evento! ¿Cómo consigo boletos?','El afiche del evento suena emocionante. ¿Qué otros artistas estarán allí?','2024-02-07 16:30:00'),(8,'¡Gracias! La foto es de una sesión reciente en el estudio.','¿Te gustaría escuchar una vista previa exclusiva del próximo sencillo? ¡Estoy emocionado por ello!','2024-02-07 17:45:00'),(9,'¡Exacto! A veces, las joyas ocultas son las mejores.','Si te gustó ese álbum, te recomendaría explorar más sobre ese género. ¿Te gustaría alguna sugerencia?','2024-02-07 19:00:00'),(10,'¡Gracias por tu comentario positivo!','¿Cuál fue tu canción favorita del álbum? ¡Siempre es genial compartir opiniones sobre música!','2024-02-07 20:15:00'),(11,'Esa portada es increíble. ¿Quién es el artista?','Las canciones pop siempre tienen un toque especial. ¿Hay alguna que te haya dejado impactado últimamente?','2024-02-07 21:30:00'),(12,'¡Buena suerte en el concurso! ¿Cuál es la canción que estás interpretando?','Participar en concursos es una excelente manera de mostrar tu talento. ¡Espero que tengas una gran actuación!','2024-02-07 22:45:00'),(13,'¡Gracias por compartir tu opinión sobre el lanzamiento!','La música tiene la capacidad de crear conexiones emocionales. ¿Hay alguna canción que te haya emocionado especialmente?','2024-02-08 08:00:00'),(14,'¡Me alegra que lo hayas notado! Fue un placer tocar esa pieza.','¿Hay alguna otra canción en particular que te haya llamado la atención durante el concierto?','2024-02-08 09:15:00'),(15,'¡La música clásica siempre tiene esa magia atemporal!','¿Hay algún compositor o período en particular que prefieras dentro de la música clásica?','2024-02-08 10:30:00'),(16,'¡Buena perspectiva! ¿Qué género musical esperas ver más en el próximo evento?','La anticipación antes de un evento musical es una sensación emocionante. ¿Ya tienes tus boletos?','2024-02-08 11:45:00'),(17,'¡Eso es tan hermoso! ¿Cómo fue tu primera vez escuchando esa canción?','Las primeras experiencias musicales siempre tienen un lugar especial en nuestros corazones. ¿Algún otro recuerdo musical que desees compartir?','2024-02-08 13:00:00'),(18,'¡La versión acústica realmente le da una nueva vida a la canción!','¿Hay otras versiones de canciones que te hayan sorprendido positivamente?','2024-02-08 14:15:00'),(19,'¡Esa banda en vivo en el club suena genial!','¿Cuál fue tu canción favorita del set en vivo? A veces, esas versiones son aún mejores que las grabadas.','2024-02-08 15:30:00'),(20,'¡Gracias por tus amables palabras sobre la lista de reproducción!','Explorar nuevos géneros siempre es divertido. ¿Hay algún género musical que estés deseando descubrir más?','2024-02-08 16:45:00'),(21,'¡Exactamente! La música es un viaje que nunca termina.','¿Cuál fue el último descubrimiento musical que realmente te sorprendió?','2024-02-08 18:00:00'),(22,'¡Esa ilustración es fascinante! ¿Quién es el artista detrás de ella?','¿Hay algún otro artista cuyo trabajo visual te haya dejado una impresión duradera?','2024-02-08 19:15:00'),(23,'¡Esa foto en el estudio es increíble! ¿Cómo fue la experiencia?','La magia detrás de escena en el estudio es siempre interesante. ¿Alguna anécdota para compartir?','2024-02-08 20:30:00'),(24,'¡Esa portada del podcast se ve genial! ¿De qué trata?','Los podcasts musicales son una excelente manera de descubrir nueva música. ¿Algún favorito que puedas recomendar?','2024-02-08 21:45:00'),(25,'¡Increíble! ¿Cómo fue la experiencia en el festival de música indie?','Los festivales son una aventura musical. ¿Qué otros festivales has disfrutado en el pasado?','2024-02-08 23:00:00'),(26,'¡Esa ilustración del evento de música electrónica es alucinante!','¿Alguna vez has asistido a un evento de música electrónica? La atmósfera es única.','2024-02-09 08:15:00'),(27,'¡Ese podcast de música latina suena emocionante! ¿De qué se trata?','La diversidad en la música latina es asombrosa. ¿Algún artista o género específico que disfrutes más?','2024-02-09 09:30:00'),(28,'¡El álbum experimental tiene una cubierta fascinante! ¿Qué esperas de él?','La experimentación musical a menudo lleva a descubrimientos sorprendentes. ¿Alguna canción experimental que te haya cautivado últimamente?','2024-02-09 10:45:00'),(29,'¡Esa portada de álbum es intrigante! ¿Qué estilo musical esperas encontrar?','Las portadas de álbum a menudo son una obra de arte en sí mismas. ¿Tienes alguna otra favorita?','2024-02-09 12:00:00'),(30,'¡Esa ilustración del evento de música clásica es impresionante! ¿Qué piezas se presentarán?','La música clásica siempre tiene un encanto especial. ¿Tienes una pieza clásica favorita?','2024-02-09 13:15:00'),(31,'¡Ese collage visual del álbum de rock alternativo es genial!','¿Qué bandas de rock alternativo te inspiran más? Siempre estoy buscando nuevas recomendaciones.','2024-02-09 14:30:00'),(32,'¡La fotografía del músico principal en el escenario es épica! ¿Cómo fue el concierto?','Las experiencias en vivo son inolvidables. ¿Tienes alguna otra anécdota de conciertos que quieras compartir?','2024-02-09 15:45:00'),(33,'¡La portada del sencillo de pop es llamativa! ¿Cuál es tu canción favorita del pop actual?','La escena del pop siempre está llena de éxitos pegajosos. ¿Algún guilty pleasure pop que disfrutes?','2024-02-09 17:00:00'),(34,'¡El podcast de música clásica suena fascinante! ¿Cuál es el enfoque del programa?','La música clásica tiene una riqueza de historia. ¿Hay algún período o compositor en particular que te interese más?','2024-02-09 18:15:00'),(35,'¡Esa foto del backstage del festival de música indie es genial! ¿Cómo fue la experiencia?','Los momentos detrás del escenario son únicos. ¿Alguna interacción o encuentro especial durante el festival?','2024-02-09 19:30:00'),(36,'¡Esa ilustración del evento de música electrónica es alucinante! ¿Cómo fue la atmósfera?','La música electrónica tiene una energía única. ¿Cuál fue tu momento favorito del evento?','2024-02-09 20:45:00'),(37,'¡Ese collage visual del álbum de rap es impresionante! ¿Cuál es tu pista favorita?','El rap siempre tiene un mensaje poderoso. ¿Hay alguna letra de rap que te haya impactado profundamente?','2024-02-09 22:00:00'),(38,'¡La portada del álbum de reggae es relajante! ¿Qué te llevó a explorar ese género?','La vibra relajada del reggae es única. ¿Alguna otra canción de reggae que te transmita buenas vibras?','2024-02-09 23:15:00'),(39,'¡Esa foto del ensayo de la banda indie es auténtica! ¿Cómo fue la sesión?','El proceso creativo en el estudio es fascinante. ¿Tienes alguna anécdota interesante de la grabación?','2024-02-10 08:30:00'),(40,'¡El podcast de música rock suena emocionante! ¿De qué época se centra?','La diversidad en el rock es asombrosa. ¿Hay algún subgénero específico que te atraiga más?','2024-02-10 09:45:00'),(41,'¡Esa ilustración del próximo evento de música latina es vibrante! ¿Qué artistas participarán?','La música latina tiene una rica mezcla de ritmos. ¿Cuál es tu género latino favorito?','2024-02-10 11:00:00'),(42,'¡Ese collage visual del álbum experimental es intrigante! ¿Qué esperas de la experiencia auditiva?','La música experimental a menudo desafía las expectativas. ¿Algún otro álbum experimental que te haya dejado impactado?','2024-02-10 12:15:00'),(43,'¡La fotografía del estudio de grabación es auténtica! ¿Cómo fue la sesión de grabación?','La magia detrás de la grabación es única. ¿Alguna historia divertida o desafío que enfrentaron durante la grabación?','2024-02-10 13:30:00'),(44,'¡La portada del nuevo sencillo de rock es llamativa! ¿Cuál es la inspiración detrás de ella?','La creatividad visual en el rock es fascinante. ¿Tienes alguna otra portada de álbum de rock que te haya dejado impresionado?','2024-02-10 14:45:00'),(45,'¡La imagen promocional del festival de música indie es cautivadora! ¿Cómo fue el evento?','Los festivales indie tienen una vibra única. ¿Cuál fue tu actuación favorita durante el festival?','2024-02-10 16:00:00'),(46,'¡La cubierta del podcast de música clásica es elegante! ¿De qué temas se discute?','La música clásica tiene tanto que explorar. ¿Hay algún compositor o obra maestra que hayas descubierto recientemente?','2024-02-10 17:15:00'),(47,'¡La fotografía del músico principal en el escenario es épica! ¿Cómo fue el concierto?','La conexión entre el artista y la audiencia es mágica. ¿Cuál fue tu momento favorito del concierto?','2024-02-10 18:30:00'),(48,'¡El collage visual del álbum de pop es colorido! ¿Qué expectativas tienes del álbum?','La diversidad en el pop siempre es emocionante. ¿Hay algún artista pop que te haya sorprendido recientemente?','2024-02-10 19:45:00'),(49,'¡La ilustración del evento de música reggae es relajante! ¿Quiénes serán los artistas?','El reggae siempre transmite buenas vibras. ¿Cuál es tu canción de reggae favorita?','2024-02-10 21:00:00'),(50,'¡La foto del ensayo de la orquesta sinfónica es majestuosa! ¿Cómo fue la preparación para el concierto?','La orquesta sinfónica tiene un poder único. ¿Hay alguna pieza clásica que te haya dejado sin palabras?','2024-02-10 22:15:00');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios_publicaciones`
--

DROP TABLE IF EXISTS `comentarios_publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios_publicaciones` (
  `com_pub_id` int NOT NULL AUTO_INCREMENT,
  `com_pub_comentarios_id` int NOT NULL,
  `com_pub_publicaciones_id` int NOT NULL,
  PRIMARY KEY (`com_pub_id`),
  KEY `fk_Comentarios_Publicaciones_Comentarios1_idx` (`com_pub_comentarios_id`),
  KEY `fk_Comentarios_Publicaciones_Publicaciones1_idx` (`com_pub_publicaciones_id`),
  CONSTRAINT `fk_Comentarios_Publicaciones_Comentarios1` FOREIGN KEY (`com_pub_comentarios_id`) REFERENCES `comentarios` (`com_id`),
  CONSTRAINT `fk_Comentarios_Publicaciones_Publicaciones1` FOREIGN KEY (`com_pub_publicaciones_id`) REFERENCES `publicaciones` (`pub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios_publicaciones`
--

LOCK TABLES `comentarios_publicaciones` WRITE;
/*!40000 ALTER TABLE `comentarios_publicaciones` DISABLE KEYS */;
INSERT INTO `comentarios_publicaciones` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50);
/*!40000 ALTER TABLE `comentarios_publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenes` (
  `ima_id` int NOT NULL AUTO_INCREMENT,
  `ima_publicaciones_id` int NOT NULL,
  `ima_ruta_imagen` varchar(200) DEFAULT NULL,
  `ima_descripcion` varchar(100) DEFAULT NULL,
  `ima_fecha_hora` datetime DEFAULT NULL,
  PRIMARY KEY (`ima_id`),
  KEY `fk_Imagenes_Publicaciones1_idx` (`ima_publicaciones_id`),
  CONSTRAINT `fk_Imagenes_Publicaciones1` FOREIGN KEY (`ima_publicaciones_id`) REFERENCES `publicaciones` (`pub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
INSERT INTO `imagenes` VALUES (1,1,'/imagenes/imagen1.jpg','Portada del nuevo álbum de Jazz','2024-02-03 09:00:00'),(2,2,'/imagenes/imagen2.jpg','Espectacular concierto en vivo','2024-02-03 10:15:00'),(3,3,'/imagenes/imagen3.jpg','Ilustración del artista destacado del mes','2024-02-03 11:30:00'),(4,4,'/imagenes/imagen4.jpg','Imagen promocional del festival de música','2024-02-03 12:45:00'),(5,5,'/imagenes/imagen5.jpg','Cubierta del podcast semanal','2024-02-03 14:00:00'),(6,6,'/imagenes/imagen6.jpg','Fotografía de estudio del músico principal','2024-02-03 15:15:00'),(7,7,'/imagenes/imagen7.jpg','Afiche del evento musical en la ciudad','2024-02-03 16:30:00'),(8,8,'/imagenes/imagen8.jpg','Imagen de perfil del nuevo grupo indie','2024-02-03 17:45:00'),(9,9,'/imagenes/imagen9.jpg','Collage visual del álbum clásico','2024-02-03 19:00:00'),(10,10,'/imagenes/imagen10.jpg','Fotografía del estudio de grabación','2024-02-03 20:15:00'),(11,11,'/imagenes/imagen11.jpg','Portada del sencillo del mes','2024-02-03 21:30:00'),(12,12,'/imagenes/imagen12.jpg','Ilustración del evento de música electrónica','2024-02-03 22:45:00'),(13,13,'/imagenes/imagen13.jpg','Foto del backstage del concierto','2024-02-04 08:00:00'),(14,14,'/imagenes/imagen14.jpg','Collage visual del álbum de rock','2024-02-04 09:15:00'),(15,15,'/imagenes/imagen15.jpg','Fotografía de la banda durante la grabación','2024-02-04 10:30:00'),(16,16,'/imagenes/imagen16.jpg','Ilustración del evento de música clásica','2024-02-04 11:45:00'),(17,17,'/imagenes/imagen17.jpg','Cubierta del nuevo podcast de entrevistas','2024-02-04 13:00:00'),(18,18,'/imagenes/imagen18.jpg','Imagen de perfil del DJ invitado','2024-02-04 14:15:00'),(19,19,'/imagenes/imagen19.jpg','Collage visual del álbum de rap','2024-02-04 15:30:00'),(20,20,'/imagenes/imagen20.jpg','Fotografía del estudio de grabación','2024-02-04 16:45:00'),(21,21,'/imagenes/imagen21.jpg','Portada del nuevo sencillo de pop','2024-02-04 18:00:00'),(22,22,'/imagenes/imagen22.jpg','Imagen promocional del festival de música','2024-02-04 19:15:00'),(23,23,'/imagenes/imagen23.jpg','Foto del ensayo de la orquesta sinfónica','2024-02-04 20:30:00'),(24,24,'/imagenes/imagen24.jpg','Collage visual del álbum de reggae','2024-02-04 21:45:00'),(25,25,'/imagenes/imagen25.jpg','Fotografía del evento de música indie','2024-02-04 23:00:00'),(26,26,'/imagenes/imagen26.jpg','Ilustración del próximo concierto de jazz','2024-02-05 08:15:00'),(27,27,'/imagenes/imagen27.jpg','Cubierta del nuevo podcast de música latina','2024-02-05 09:30:00'),(28,28,'/imagenes/imagen28.jpg','Portada del álbum experimental','2024-02-05 10:45:00'),(29,29,'/imagenes/imagen29.jpg','Fotografía del estudio de grabación','2024-02-05 12:00:00'),(30,30,'/imagenes/imagen30.jpg','Imagen promocional del evento de música clásica','2024-02-05 13:15:00'),(31,31,'/imagenes/imagen31.jpg','Collage visual del álbum de rock alternativo','2024-02-05 14:30:00'),(32,32,'/imagenes/imagen32.jpg','Fotografía del músico principal en el escenario','2024-02-05 15:45:00'),(33,33,'/imagenes/imagen33.jpg','Portada del nuevo sencillo de pop','2024-02-05 17:00:00'),(34,34,'/imagenes/imagen34.jpg','Cubierta del podcast de música clásica','2024-02-05 18:15:00'),(35,35,'/imagenes/imagen35.jpg','Foto del backstage del festival de música','2024-02-05 19:30:00'),(36,36,'/imagenes/imagen36.jpg','Ilustración del evento de música electrónica','2024-02-05 20:45:00'),(37,37,'/imagenes/imagen37.jpg','Collage visual del álbum de rap','2024-02-05 22:00:00'),(38,38,'/imagenes/imagen38.jpg','Portada del nuevo álbum de reggae','2024-02-05 23:15:00'),(39,39,'/imagenes/imagen39.jpg','Foto del ensayo de la banda indie','2024-02-06 08:30:00'),(40,40,'/imagenes/imagen40.jpg','Cubierta del podcast de música rock','2024-02-06 09:45:00'),(41,41,'/imagenes/imagen41.jpg','Ilustración del próximo evento de música latina','2024-02-06 11:00:00'),(42,42,'/imagenes/imagen42.jpg','Collage visual del álbum experimental','2024-02-06 12:15:00'),(43,43,'/imagenes/imagen43.jpg','Fotografía del estudio de grabación','2024-02-06 13:30:00'),(44,44,'/imagenes/imagen44.jpg','Portada del nuevo sencillo de rock','2024-02-06 14:45:00'),(45,45,'/imagenes/imagen45.jpg','Imagen promocional del festival de música indie','2024-02-06 16:00:00'),(46,46,'/imagenes/imagen46.jpg','Cubierta del nuevo podcast de música clásica','2024-02-06 17:15:00'),(47,47,'/imagenes/imagen47.jpg','Fotografía del músico principal en el escenario','2024-02-06 18:30:00'),(48,48,'/imagenes/imagen48.jpg','Collage visual del álbum de pop','2024-02-06 19:45:00'),(49,49,'/imagenes/imagen49.jpg','Ilustración del evento de música reggae','2024-02-06 21:00:00'),(50,50,'/imagenes/imagen50.jpg','Foto del ensayo de la orquesta sinfónica','2024-02-06 22:15:00');
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interacciones`
--

DROP TABLE IF EXISTS `interacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interacciones` (
  `int_id` int NOT NULL AUTO_INCREMENT,
  `int_tipo` varchar(45) NOT NULL,
  `int_fecha` date NOT NULL,
  `int_objeto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`int_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interacciones`
--

LOCK TABLES `interacciones` WRITE;
/*!40000 ALTER TABLE `interacciones` DISABLE KEYS */;
INSERT INTO `interacciones` VALUES (1,'No me Gusta','2023-10-22','45'),(2,'Me Gusta','2023-11-29','34'),(3,'Me Gusta','2023-02-06','35'),(4,'Me Gusta','2023-05-23','15'),(5,'Me Gusta','2023-04-03','34'),(6,'Me Gusta','2023-09-28','36'),(7,'No me Gusta','2023-02-28','11'),(8,'Me Gusta','2023-08-11','39'),(9,'No me Gusta','2024-01-25','48'),(10,'No me Gusta','2023-12-06','17'),(11,'Me Gusta','2023-05-31','35'),(12,'Me Gusta','2023-02-21','9'),(13,'Me Gusta','2023-07-16','46'),(14,'No me Gusta','2023-07-14','45'),(15,'Me Gusta','2023-06-12','13'),(16,'No me Gusta','2023-02-07','19'),(17,'Me Gusta','2023-07-12','49'),(18,'No me Gusta','2023-06-02','29'),(19,'No me Gusta','2023-10-07','32'),(20,'Me Gusta','2023-02-12','10'),(21,'Me Gusta','2023-07-25','32'),(22,'No me Gusta','2023-10-04','46'),(23,'Me Gusta','2023-04-30','10'),(24,'Me Gusta','2023-05-25','17'),(25,'No me Gusta','2024-01-16','15'),(26,'Me Gusta','2023-07-31','42'),(27,'Me Gusta','2023-05-13','21'),(28,'Me Gusta','2023-06-15','5'),(29,'Me Gusta','2023-11-08','37'),(30,'No me Gusta','2023-03-08','36'),(31,'Me Gusta','2023-09-18','9'),(32,'Me Gusta','2023-12-31','5'),(33,'Me Gusta','2023-12-04','20'),(34,'No me Gusta','2023-08-07','3'),(35,'No me Gusta','2023-11-22','6'),(36,'No me Gusta','2023-10-31','38'),(37,'Me Gusta','2023-07-28','28'),(38,'No me Gusta','2023-01-30','37'),(39,'Me Gusta','2023-03-21','5'),(40,'Me Gusta','2023-11-23','14'),(41,'Me Gusta','2023-12-03','4'),(42,'Me Gusta','2023-09-27','50'),(43,'No me Gusta','2023-07-11','8'),(44,'Me Gusta','2023-12-08','3'),(45,'No me Gusta','2023-04-17','2'),(46,'No me Gusta','2023-12-20','27'),(47,'Me Gusta','2024-01-25','27'),(48,'Me Gusta','2023-08-05','28'),(49,'Me Gusta','2023-09-19','12'),(50,'No me Gusta','2023-03-24','7');
/*!40000 ALTER TABLE `interacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interacciones_publicaciones`
--

DROP TABLE IF EXISTS `interacciones_publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interacciones_publicaciones` (
  `int_pub_id` int NOT NULL AUTO_INCREMENT,
  `int_pub_publicaciones_id` int NOT NULL,
  `int_pub_interacciones_id` int NOT NULL,
  PRIMARY KEY (`int_pub_id`),
  KEY `fk_Interacciones_Publicaciones_Interacciones1_idx` (`int_pub_publicaciones_id`),
  KEY `fk_Interacciones_Publicaciones_Publicaciones1_idx` (`int_pub_interacciones_id`),
  CONSTRAINT `fk_Interacciones_Publicaciones_Interacciones1` FOREIGN KEY (`int_pub_publicaciones_id`) REFERENCES `interacciones` (`int_id`),
  CONSTRAINT `fk_Interacciones_Publicaciones_Publicaciones1` FOREIGN KEY (`int_pub_interacciones_id`) REFERENCES `publicaciones` (`pub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interacciones_publicaciones`
--

LOCK TABLES `interacciones_publicaciones` WRITE;
/*!40000 ALTER TABLE `interacciones_publicaciones` DISABLE KEYS */;
INSERT INTO `interacciones_publicaciones` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50);
/*!40000 ALTER TABLE `interacciones_publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listas_reproducciones`
--

DROP TABLE IF EXISTS `listas_reproducciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listas_reproducciones` (
  `lir_id` int NOT NULL,
  `lir_usuarios_id` int NOT NULL,
  `lir_nombre` varchar(45) DEFAULT NULL,
  `lir_descripcion` varchar(100) DEFAULT NULL,
  `lir_orden_cancion` int DEFAULT NULL,
  `lir_genero` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`lir_id`),
  KEY `fk_Listas_Reproducciones_Usuarios1_idx` (`lir_usuarios_id`),
  CONSTRAINT `fk_Listas_Reproducciones_Usuarios1` FOREIGN KEY (`lir_usuarios_id`) REFERENCES `usuarios` (`usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas_reproducciones`
--

LOCK TABLES `listas_reproducciones` WRITE;
/*!40000 ALTER TABLE `listas_reproducciones` DISABLE KEYS */;
INSERT INTO `listas_reproducciones` VALUES (1,1,'Adi','Acc cut/hem in injection',11,'Cisgender Female'),(2,2,'Petra','Keratitis NEC',40,'Bigender'),(3,3,'Jacquenette','Late eff exter cause NEC',42,'Transfeminine'),(4,4,'Myrle','Compl marrow transplant',30,'Cisgender Woman'),(5,5,'Fina','Paralytic lagophthalmos',40,'Cisgender Man'),(6,6,'Dorita','Hematospermia',36,'Male to Female'),(7,7,'Starlene','Chr mucoid OM NEC',14,'Cis Man'),(8,8,'Lorelle','TB of mastoid-histo dx',33,'Gender Variant'),(9,9,'Letisha','Perforation of esophagus',20,'Bigender'),(10,10,'Sharleen','Malig neo pituitary',28,'Cis'),(11,11,'Miriam','Acc poison-cleanser NEC',37,'Cis Man'),(12,12,'Jana','Loose body in knee',31,'Trans Person'),(13,13,'Gerianne','Post-trauma headache NOS',11,'MTF'),(14,14,'Aloise','Congenital hydrocele',19,'Cis Male'),(15,15,'Letty','Malposition of uterus',28,'Pangender'),(16,16,'Pierrette','Opn skul/oth fx-coma NOS',17,'Non-binary'),(17,17,'Layla','Adv eff vasodilators NEC',45,'Transmasculine'),(18,18,'Florie','Oth multiple sb-nonhosp',50,'Trans Female'),(19,19,'Bernadina','Pulsating exophthalmos',33,'FTM'),(20,20,'Randa','Abnorm vagina-delivered',5,'Neither'),(21,21,'Sigrid','Dermatophytosis of groin',30,'Genderqueer'),(22,22,'Theda','Family history glaucoma',2,'Transsexual Man'),(23,23,'Robinett','Assault-antiperson bomb',43,'Transgender'),(24,24,'Hana','Late effect of contusion',31,'Androgyne'),(25,25,'Shandee','Dis urea cycle metabol',43,'Gender Fluid'),(26,26,'Gusta','Open posterior occlusion',11,'Transsexual'),(27,27,'Cassey','Oth spcf paralytic synd',23,'Transgender Male'),(28,28,'Dorthea','Syphilis-delivered',15,'Androgyne'),(29,29,'Corliss','Prim TB complex-micro dx',47,'Intersex'),(30,30,'Viki','Benign neoplasm NEC',29,'Cis'),(31,31,'Saundra','Mental problems NEC',49,'Trans Female'),(32,32,'Tiffi','Traumatic spondylopathy',35,'Transgender Female'),(33,33,'Kerry','Disloc vertebra NOS-open',5,'Pangender'),(34,34,'Gwendolyn','Supracondyl fx femur-opn',48,'Cisgender Female'),(35,35,'Eustacia','Aseptic necrosis humerus',23,'Gender Nonconforming'),(36,36,'Lind','Epidem hem conjunctivit',17,'Pangender'),(37,37,'Guenevere','Terrorism, firearms',35,'Cis Female'),(38,38,'Marina','DMI neuro uncntrld',13,'Transfeminine'),(39,39,'Farah','Chr inversion of uterus',50,'Transsexual'),(40,40,'Eve','AMI inferior wall, init',7,'Female to Male'),(41,41,'Jannel','Trnspl status-pancreas',5,'Transgender Male'),(42,42,'Beverlee','Gal&bil cal w/ac&chr w/o',28,'Trans Man'),(43,43,'Kessia','Uterine leiomyoma NOS',3,'Non-binary'),(44,44,'Carmina','Interstit keratitis NOS',39,'Gender Questioning'),(45,45,'Norine','Chr factitious illness',34,'Trans Man'),(46,46,'Fred','Blister NEC-infected',45,'Transgender Female'),(47,47,'Kary','Herpetic vulvovaginitis',17,'Transsexual Female'),(48,48,'Olimpia','W/craft fall NOS-skier',30,'Intersex'),(49,49,'Berenice','Fail sterile heart cath',41,'Transsexual'),(50,50,'Mable','Benign neo nerv sys NEC',42,'Gender Nonconforming');
/*!40000 ALTER TABLE `listas_reproducciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificaciones` (
  `not_id` int NOT NULL AUTO_INCREMENT,
  `not_usuarios_id` int NOT NULL,
  `not_mensaje` varchar(100) DEFAULT NULL,
  `not_fecha_envio` date DEFAULT NULL,
  PRIMARY KEY (`not_id`),
  KEY `fk_Notificaciones_Usuarios1_idx` (`not_usuarios_id`),
  CONSTRAINT `fk_Notificaciones_Usuarios1` FOREIGN KEY (`not_usuarios_id`) REFERENCES `usuarios` (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (1,1,'¡Nuevo álbum disponible!','2023-01-15'),(2,2,'Tu lista de reproducción semanal está lista.','2023-02-10'),(3,3,'Actualización de la aplicación disponible.','2023-03-05'),(4,4,'¡Descubre nuestras nuevas funciones!','2023-04-20'),(5,5,'Concierto en tu área este fin de semana.','2023-05-12'),(6,6,'Revisa nuestras últimas ofertas.','2023-06-18'),(7,7,'Promoción especial para suscriptores premium.','2023-07-21'),(8,8,'Gana puntos de recompensa con cada reproducción.','2023-08-04'),(9,9,'¡Feliz cumpleaños! Aquí tienes un regalo especial.','2023-09-09'),(10,10,'Nuevos artistas emergentes para descubrir.','2023-10-30'),(11,11,'Recibe un descuento exclusivo en tu próximo concierto.','2023-11-15'),(12,12,'¡Participa en nuestro concurso y gana grandes premios!','2023-12-20'),(13,13,'¡Te echamos de menos! Vuelve a escuchar tus canciones favoritas.','2024-01-05'),(14,14,'Recomendaciones personalizadas solo para ti.','2024-02-10'),(15,15,'¡Disfruta de música sin anuncios con tu suscripción premium!','2024-03-15'),(16,16,'Descarga nuestras nuevas pistas exclusivas.','2024-04-20'),(17,17,'Nuevas funciones de colaboración disponibles.','2024-05-12'),(18,18,'¡Sigue a tus artistas favoritos para no perderte ninguna novedad!','2024-06-18'),(19,19,'¡Descubre nuestras listas de reproducción curadas por expertos!','2024-07-21'),(20,20,'Actualización importante: revisa las notas de la versión.','2024-08-04'),(21,21,'Escucha nuestro podcast exclusivo con entrevistas.','2024-09-09'),(22,22,'¡Consigue acceso anticipado a eventos y conciertos!','2024-10-30'),(23,23,'Sugerencias de canciones basadas en tus gustos musicales.','2024-11-15'),(24,24,'¡Reproduce música en alta calidad con nuestras nuevas configuraciones de audio!','2024-12-20'),(25,25,'Únete a nuestra comunidad y comparte tus playlists.','2025-01-05'),(26,26,'Recibe notificaciones instantáneas sobre lanzamientos de artistas.','2025-02-10'),(27,27,'¡Ahorra en tu próxima compra con nuestro código de descuento!','2025-03-15'),(28,28,'Nuevas canciones destacadas en nuestra plataforma.','2025-04-20'),(29,29,'Descubre nuestras estaciones de radio temáticas.','2025-05-12'),(30,30,'Recibe alertas sobre próximos conciertos de tus artistas favoritos.','2025-06-18'),(31,31,'¡Obtén acceso exclusivo a eventos VIP!','2025-07-21'),(32,32,'Nuevos podcasts disponibles cada semana.','2025-08-04'),(33,33,'Comparte tus opiniones sobre nuestras nuevas funciones en nuestra encuesta.','2025-09-09'),(34,34,'¡Descubre nuestra selección de música relajante para meditar!','2025-10-30'),(35,35,'Actualización importante: asegúrate de actualizar tu app.','2025-11-15'),(36,36,'¡Recibe un regalo sorpresa al renovar tu suscripción!','2025-12-20'),(37,37,'¡Participa en nuestro programa de referidos y gana premios!','2026-01-05'),(38,38,'Recibe notificaciones sobre eventos musicales en tu área.','2026-02-10'),(39,39,'¡Descubre nuestras listas de reproducción para entrenar!','2026-03-15'),(40,40,'Nuevos artistas destacados en nuestra plataforma.','2026-04-20'),(41,41,'¡Recibe actualizaciones sobre la gira de tu banda favorita!','2026-05-12'),(42,42,'Promoción especial: ¡2 meses de suscripción premium al precio de 1!','2026-06-18'),(43,43,'¡Participa en nuestro concurso de covers y gana premios!','2026-07-21'),(44,44,'Nuevos artistas emergentes para descubrir.','2026-08-04'),(45,45,'Descubre nuestra selección de música para fiestas.','2026-09-09'),(46,46,'¡Descarga nuestras pistas exclusivas gratis por tiempo limitado!','2026-10-30'),(47,47,'Recibe notificaciones sobre eventos musicales en tu área.','2026-11-15'),(48,48,'¡Participa en nuestro sorteo y gana entradas para conciertos!','2026-12-20'),(49,49,'¡Descubre nuestras listas de reproducción para relajarse!','2027-01-05'),(50,50,'Actualización importante: corrección de errores y mejoras de rendimiento.','2027-02-10');
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `pla_id` int NOT NULL,
  `pla_nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pla_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'Waelchi-Schowalter'),(2,'Koch, Towne and Koepp'),(3,'Mitchell, Blick and Sauer'),(4,'Christiansen, Keebler and Kautzer'),(5,'Ryan-Jakubowski'),(6,'Hoppe-Gutkowski'),(7,'Stokes, Hudson and Olson'),(8,'Balistreri-Rohan'),(9,'Connelly, Ledner and Ullrich'),(10,'Simonis and Sons'),(11,'Hansen-Crona'),(12,'Johnston, Kiehn and Dickens'),(13,'Hagenes Group'),(14,'Koss Group'),(15,'Predovic and Sons'),(16,'Bartoletti Inc'),(17,'Gerhold Group'),(18,'Hyatt, Christiansen and Stehr'),(19,'Wunsch Group'),(20,'Dicki, Beier and Dietrich'),(21,'Schimmel, Kunze and Goldner'),(22,'Bradtke and Sons'),(23,'Emard Group'),(24,'Wilkinson, Daniel and Mosciski'),(25,'Gutkowski Group'),(26,'Wilderman Group'),(27,'Kassulke-McCullough'),(28,'Lubowitz, Kessler and Ankunding'),(29,'Reilly, Deckow and Bergnaum'),(30,'Watsica-Carter'),(31,'Brakus, Weber and Lakin'),(32,'Lang, Heathcote and Funk'),(33,'Lebsack Group'),(34,'Murphy, Hintz and Miller'),(35,'Nienow, Morissette and Senger'),(36,'Bayer Group'),(37,'Boehm-O\'Kon'),(38,'Schinner Group'),(39,'Purdy-Donnelly'),(40,'Schiller, Runte and Roob'),(41,'Luettgen, Robel and Dietrich'),(42,'Gutkowski-Kunze'),(43,'Tremblay-Bogisich'),(44,'Murray-Mueller'),(45,'Bernhard-Lehner'),(46,'Wuckert-Miller'),(47,'Dicki, Murphy and Reynolds'),(48,'Kozey, Bashirian and Schiller'),(49,'Wunsch, Metz and Dietrich'),(50,'Jast Group');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferencias`
--

DROP TABLE IF EXISTS `preferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferencias` (
  `pfs_id` int NOT NULL AUTO_INCREMENT,
  `pfs_usuarios_id` int NOT NULL,
  `pfs_nombre_artista` varchar(50) DEFAULT NULL,
  `pfs_genero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pfs_id`),
  KEY `fk_Preferencias_Usuarios1_idx` (`pfs_usuarios_id`),
  CONSTRAINT `fk_Preferencias_Usuarios1` FOREIGN KEY (`pfs_usuarios_id`) REFERENCES `usuarios` (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferencias`
--

LOCK TABLES `preferencias` WRITE;
/*!40000 ALTER TABLE `preferencias` DISABLE KEYS */;
INSERT INTO `preferencias` VALUES (1,1,'Ed Sheeran','Pop'),(2,2,'Beyoncé','R&B'),(3,3,'Coldplay','Pop/Rock'),(4,4,'Drake','Hip Hop'),(5,5,'Taylor Swift','Pop/Country'),(6,6,'Eminem','Hip Hop'),(7,7,'Ariana Grande','Pop'),(8,8,'The Weeknd','R&B'),(9,9,'Queen','Rock'),(10,10,'Kendrick Lamar','Hip Hop'),(11,11,'Billie Eilish','Pop/Indie'),(12,12,'Justin Bieber','Pop/R&B'),(13,13,'Foo Fighters','Rock'),(14,14,'Rihanna','R&B/Pop'),(15,15,'Linkin Park','Rock/Alternative'),(16,16,'Kanye West','Hip Hop'),(17,17,'Shawn Mendes','Pop'),(18,18,'Adele','Pop/Soul'),(19,19,'Maroon 5','Pop/Rock'),(20,20,'Bruno Mars','Pop/R&B'),(21,21,'Lady Gaga','Pop/Dance'),(22,22,'Post Malone','Hip Hop'),(23,23,'Imagine Dragons','Pop/Rock'),(24,24,'Nicki Minaj','Hip Hop'),(25,25,'Sia','Pop'),(26,26,'The Beatles','Rock'),(27,27,'Eagles','Rock'),(28,28,'Travis Scott','Hip Hop'),(29,29,'Red Hot Chili Peppers','Rock'),(30,30,'Alicia Keys','R&B/Soul'),(31,31,'U2','Rock'),(32,32,'Twenty One Pilots','Pop/Rock'),(33,33,'Katy Perry','Pop'),(34,34,'Jay-Z','Hip Hop'),(35,35,'Metallica','Metal'),(36,36,'Dr. Dre','Hip Hop'),(37,37,'Green Day','Rock/Punk'),(38,38,'Sam Smith','Pop/R&B'),(39,39,'Pink','Pop/Rock'),(40,40,'Guns N Roses','Rock'),(41,41,'The Chainsmokers','Electronic/Pop'),(42,42,'The Weeknd','R&B/Pop'),(43,43,'Billie Joel','Rock/Pop'),(44,44,'Frank Ocean','R&B/Soul'),(45,45,'Madonna','Pop'),(46,46,'The Notorious B.I.G.','Hip Hop'),(47,47,'Paramore','Rock/Pop Punk'),(48,48,'John Legend','R&B/Soul'),(49,49,'Ariana Grande','Pop'),(50,50,'Rihanna','R&B/Pop');
/*!40000 ALTER TABLE `preferencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicaciones`
--

DROP TABLE IF EXISTS `publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicaciones` (
  `pub_id` int NOT NULL AUTO_INCREMENT,
  `pub_usuarios_id` int NOT NULL,
  `pub_titulo` varchar(50) DEFAULT NULL,
  `pub_contenido` text,
  `pub_fecha_hora` datetime DEFAULT NULL,
  `pub_etiquetas` varchar(100) DEFAULT NULL,
  `pub_ubicaciones` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pub_id`),
  KEY `fk_Publicaciones_Usuarios1_idx` (`pub_usuarios_id`),
  CONSTRAINT `fk_Publicaciones_Usuarios1` FOREIGN KEY (`pub_usuarios_id`) REFERENCES `usuarios` (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones`
--

LOCK TABLES `publicaciones` WRITE;
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
INSERT INTO `publicaciones` VALUES (1,1,'Seven Days in Utopia','Sinus punct for lavage','2023-08-22 00:00:00','Mv coll NOS-ped cycl','Asia/Makassar'),(2,2,'Scorched','Aortocoronary bypass NOS','2023-04-16 00:00:00','Poison-mineral salts NEC','Africa/Kampala'),(3,3,'Alice Upside Down (Alice)','Incision uterine septum','2028-09-19 00:00:00','H zoster nerv syst NEC','Asia/Jayapura'),(4,4,'Impulse','Other resp procedures','2027-10-25 00:00:00','Mycosis fungoides mult','Europe/Stockholm'),(5,5,'Bill Hicks: Sane Man','Periton pneumogram NEC','2028-01-05 00:00:00','E coli septicemia','Europe/Tirane'),(6,6,'Cabaret','Heart countershock NEC','2028-10-26 00:00:00','Myelofi w myelo metaplas','Europe/Stockholm'),(7,7,'Labor Pains','Abdominal endarterectomy','2024-05-01 00:00:00','Cryst arthrop NOS-ankle','Asia/Manila'),(8,8,'Battling Butler','Destruc hepatic les NEC','2023-03-07 00:00:00','Osteoarthros NOS-pelvis','Asia/Harbin'),(9,9,'Toy Story Toons: Partysaurus Rex','Intra-abdomin shunt NEC','2027-03-29 00:00:00','Watercraft explos-crew','Asia/Chongqing'),(10,10,'Year Zero: The Silent Death of Cambodia','Cord bld stem cell trans','2021-08-20 00:00:00','Aortic aneurysm NOS','Asia/Tokyo'),(11,11,'Flame and the Arrow, The','Oth cerv fusion ant/ant','2028-09-03 00:00:00','Adv eff penicillins','Europe/Rome'),(12,12,'Let No Man Write My Epitaph','Other C.A.T. scan','2025-07-27 00:00:00','3rd deg burn head NOS','Asia/Muscat'),(13,13,'Capture of Bigfoot, The','Clo endosc bx bile duct','2023-02-20 00:00:00','Respirator depend status','Europe/Paris'),(14,14,'House That Dripped Blood, The','Control of epistaxis NOS','2026-05-15 00:00:00','Ac pericardit in oth dis','Asia/Chongqing'),(15,15,'Monsieur Lazhar','Cl reduc disloc-hand/fng','2027-12-24 00:00:00','Fx upper humerus NOS-opn','Europe/Stockholm'),(16,16,'Undertaking Betty (Plots with a View)','Bilateral breast implant','2027-11-04 00:00:00','Malig neo pancreas NEC','Asia/Jakarta'),(17,17,'Faces of Death 6','Cyclodiathermy','2026-03-06 00:00:00','Behcet arthritis NEC','Asia/Chongqing'),(18,18,'O Amor das Três Romãs','Limb shorten-radius/ulna','2028-02-10 00:00:00','Drug persist amnestc dis','America/Argentina/Salta'),(19,19,'Poetry (Shi)','Knee structure division','2026-02-08 00:00:00','Ebstein\'s anomaly','America/Sao_Paulo'),(20,20,'Bad Biology','Thyr/parathy dx proc NEC','2024-07-07 00:00:00','Status amput above elbow','Africa/Casablanca'),(21,21,'American Ninja 4: The Annihilation','Culture-ent/larynx','2026-01-01 00:00:00','Thyroiditis NOS','Europe/Minsk'),(22,22,'Black Roses ','Electron teleradiotherap','2025-12-26 00:00:00','Puerp compl NOS-postpart','Asia/Almaty'),(23,23,'The Young Savages','Incision of palate','2026-03-13 00:00:00','Boat submers-pers NEC','Europe/Stockholm'),(24,24,'Lawless Frontier, The','Sphenoidectomy','2022-03-02 00:00:00','Hyperestrogenism','Europe/Moscow'),(25,25,'Before the Fall (NaPolA - Elite für den Führer)','Endosc inser stent bile','2027-09-30 00:00:00','Mixed hearing loss NOS','Africa/Lagos'),(26,26,'Zig Zag','Insert indwelling cath','2025-11-27 00:00:00','Acc pois-synth detergent','America/Fortaleza'),(27,27,'Hell to Eternity','Remov pancreatic tube','2021-11-03 00:00:00','Breast neoplasm NOS','Asia/Chongqing'),(28,28,'Bear\'s Kiss','Esophageal graft NEC','2027-08-31 00:00:00','Reentrant coll-pers NEC','Asia/Ulaanbaatar'),(29,29,'B*A*P*S','Reattach amputated ear','2025-01-11 00:00:00','Joint pain-pelvis','Asia/Ulaanbaatar'),(30,30,'Deadgirl','Anesthesia acupuncture','2024-07-16 00:00:00','Multiple sclerosis','Europe/Paris'),(31,31,'Lilian\'s Story','Removal vas ligature','2023-03-17 00:00:00','Rectal & anal hemorrhage','Asia/Harbin'),(32,32,'Event, The','Cyclophotocoagulation','2022-11-04 00:00:00','Arenaviral hem fever','America/St_Kitts'),(33,33,'Something in the Wind','Head & neck endarter NEC','2026-02-08 00:00:00','Sec mal neo mediastinum','Asia/Shanghai'),(34,34,'Local Hero','Inject ca chemother NEC','2022-04-28 00:00:00','Screen for leishmaniasis','Europe/Warsaw'),(35,35,'Seeking Asian Female','Reduction genioplasty','2028-04-09 00:00:00','Family disruption NEC','Asia/Jakarta'),(36,36,'Deep Red (Profondo rosso)','Muscle thermography','2028-03-22 00:00:00','Genetic screening NEC','Africa/Dar_es_Salaam'),(37,37,'Angels Fall','Rem extratub ectop preg','2025-09-30 00:00:00','Mult crushing injury leg','Asia/Yakutsk'),(38,38,'Faust','Eyeball enucleation NEC','2027-10-02 00:00:00','Malignant neo larynx NEC','Asia/Chongqing'),(39,39,'Network','Remov intralum uter FB','2023-04-02 00:00:00','Furnit w/o sub fall','America/Sao_Paulo'),(40,40,'Objective, Burma!','Cervical spine x-ray NEC','2028-02-08 00:00:00','Mech com pros jt implant','Asia/Colombo'),(41,41,'What Men Talk About','Hemorrhoid cryotherapy','2022-08-09 00:00:00','Scrn mal neo-small intes','Europe/Warsaw'),(42,42,'Fast Times at Ridgemont High','Biliary tract op NEC','2021-05-08 00:00:00','2nd deg burn eye','Asia/Jakarta'),(43,43,'Sailor Who Fell from Grace with the Sea, The','Fixed bridge insertion','2027-01-04 00:00:00','Fam hx-diabetes mellitus','Asia/Manila'),(44,44,'Caprice','Phonocardiogram','2028-07-22 00:00:00','Vertebral artery syndrom','Asia/Jakarta'),(45,45,'Across the Tracks','Simple sut-common duct','2023-08-30 00:00:00','Asymptomat neurosyphilis','America/New_York'),(46,46,'Turandot Project, The','Pharyngectomy','2023-03-08 00:00:00','Multiple contusion arm','America/New_York'),(47,47,'Tea For Two','Anal sphincterotomy NEC','2022-07-19 00:00:00','Prim prg TB NEC-histo dx','Europe/Kiev'),(48,48,'Fade to Black','Perc ins intracran stent','2026-07-06 00:00:00','Duodenum injury-closed','Europe/Uzhgorod'),(49,49,'Strip Search','Type 2 tympanoplasty','2024-07-22 00:00:00','Dvrtclo colon w/o hmrhg','Asia/Yekaterinburg'),(50,50,'Grudge, The','Occlude arm vessel NEC','2028-02-13 00:00:00','Comp-periton dialys cath','America/Argentina/Cordoba');
/*!40000 ALTER TABLE `publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reacciones`
--

DROP TABLE IF EXISTS `reacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reacciones` (
  `lik_id` int NOT NULL AUTO_INCREMENT,
  `lik_valoracion` varchar(10) DEFAULT NULL,
  `lik_fecha_hora` datetime DEFAULT NULL,
  `lik_reaccion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lik_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reacciones`
--

LOCK TABLES `reacciones` WRITE;
/*!40000 ALTER TABLE `reacciones` DISABLE KEYS */;
INSERT INTO `reacciones` VALUES (1,'5','2021-09-21 00:00:00','Other operations on carotid body, carotid sinus and other vascular bodies'),(2,'6','2019-03-04 00:00:00','Endoscopic excision or destruction of lesion or tissue of pancreatic duct'),(3,'9','2023-12-21 00:00:00','Other repair of diaphragm'),(4,'3','2023-03-12 00:00:00','Other cardiovascular stress test'),(5,'6','2022-11-23 00:00:00','Diagnostic procedures on bone, not elsewhere classified, radius and ulna'),(6,'9','2026-03-27 00:00:00','Repair of cystocele and rectocele with graft or prosthesis'),(7,'9','2019-04-08 00:00:00','Other repair of urethra'),(8,'6','2022-08-28 00:00:00','Transluminal coronary atherectomy'),(9,'2','2019-05-23 00:00:00','Implantation of cardiomyostimulation system'),(10,'7','2020-10-01 00:00:00','Fitting of prosthesis of leg, not otherwise specified'),(11,'7','2027-04-13 00:00:00','Biopsy of joint structure, ankle'),(12,'3','2024-05-24 00:00:00','Culdoscopy'),(13,'8','2022-03-20 00:00:00','Unspecified operation on bone injury, tibia and fibula'),(14,'1','2019-09-06 00:00:00','Disarticulation of elbow'),(15,'9','2023-12-11 00:00:00','Other cystoscopy'),(16,'5','2021-12-20 00:00:00','Vasectomy'),(17,'9','2020-05-17 00:00:00','Other auditory and vestibular function tests'),(18,'1','2020-06-21 00:00:00','Removal of implanted devices from bone, patella'),(19,'7','2026-09-18 00:00:00','Iris/ciliary dis NOS'),(20,'9','2024-03-06 00:00:00','Renal sclerosis NOS'),(21,'10','2024-07-17 00:00:00','Diphtheritic myocarditis'),(22,'3','2026-04-21 00:00:00','Disorders acid oxidation'),(23,'8','2024-01-22 00:00:00','Calcaneal spur'),(24,'2','2019-12-23 00:00:00','Cl skull fx NEC-brf coma'),(25,'1','2026-05-18 00:00:00','Observ-inflicted inj NEC'),(26,'8','2027-03-31 00:00:00','Tight hymenal ring'),(27,'9','2019-07-19 00:00:00','Hemangioma intracranial'),(28,'3','2021-07-05 00:00:00','Adv eff antibiotics NEC'),(29,'7','2023-09-30 00:00:00','Op skl base fx-deep coma'),(30,'4','2020-11-24 00:00:00','TB ovary & tube-cult dx'),(31,'8','2020-02-19 00:00:00','Malignant neo trachea'),(32,'6','2023-10-26 00:00:00','Hx failed mod sedation'),(33,'1','2023-09-11 00:00:00','Limbar keratoconjunctiv'),(34,'1','2025-12-25 00:00:00','Influenza with pneumonia'),(35,'6','2019-08-05 00:00:00','Acute angl-clos glaucoma'),(36,'7','2026-04-15 00:00:00','Cauda equina injury'),(37,'5','2024-05-28 00:00:00','Contusion of toe'),(38,'4','2019-09-21 00:00:00','Alcoholic polyneuropathy'),(39,'2','2023-08-24 00:00:00','Alt exotropia w a pattrn'),(40,'3','2028-05-24 00:00:00','Esophagus injury-open'),(41,'3','2024-04-03 00:00:00','Personality disorder NEC'),(42,'7','2027-04-02 00:00:00','Injury-moving object'),(43,'5','2026-07-08 00:00:00','Traum hemothorax-open'),(44,'8','2028-03-29 00:00:00','Meckel\'s diverticulum'),(45,'7','2025-04-24 00:00:00','Leukodystrophy'),(46,'7','2027-07-10 00:00:00','Tick-borne hem fever NEC'),(47,'8','2028-09-07 00:00:00','Iatrogenic carnitine def'),(48,'10','2020-09-08 00:00:00','Hpt C w hepatic coma NOS'),(49,'3','2024-03-28 00:00:00','Malig neo main bronchus'),(50,'4','2019-03-08 00:00:00','Open wnd nose NOS-compl');
/*!40000 ALTER TABLE `reacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reacciones_publicaciones`
--

DROP TABLE IF EXISTS `reacciones_publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reacciones_publicaciones` (
  `rea_pub_id` int NOT NULL AUTO_INCREMENT,
  `rea_pub_reacciones_id` int NOT NULL,
  `rea_pub_publicaciones_id` int NOT NULL,
  PRIMARY KEY (`rea_pub_id`),
  KEY `fk_Reacciones_Publicaciones_Reacciones1_idx` (`rea_pub_reacciones_id`),
  KEY `fk_Reacciones_Publicaciones_Publicaciones1_idx` (`rea_pub_publicaciones_id`),
  CONSTRAINT `fk_Reacciones_Publicaciones_Publicaciones1` FOREIGN KEY (`rea_pub_publicaciones_id`) REFERENCES `publicaciones` (`pub_id`),
  CONSTRAINT `fk_Reacciones_Publicaciones_Reacciones1` FOREIGN KEY (`rea_pub_reacciones_id`) REFERENCES `reacciones` (`lik_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reacciones_publicaciones`
--

LOCK TABLES `reacciones_publicaciones` WRITE;
/*!40000 ALTER TABLE `reacciones_publicaciones` DISABLE KEYS */;
INSERT INTO `reacciones_publicaciones` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50);
/*!40000 ALTER TABLE `reacciones_publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros` (
  `reg_id` int NOT NULL AUTO_INCREMENT,
  `reg_usuarios_id` int NOT NULL,
  `reg_nombre` varchar(45) DEFAULT NULL,
  `reg_apellido` varchar(45) DEFAULT NULL,
  `reg_cedula` varchar(10) DEFAULT NULL,
  `reg_correo` varchar(100) DEFAULT NULL,
  `reg_contraseña` varchar(10) DEFAULT NULL,
  `reg_telefono` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`reg_id`),
  KEY `fk_Registros_Usuarios1_idx` (`reg_usuarios_id`),
  CONSTRAINT `fk_Registros_Usuarios1` FOREIGN KEY (`reg_usuarios_id`) REFERENCES `usuarios` (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
INSERT INTO `registros` VALUES (1,12,'Anallise','Derx','52426-520','aderx0@addtoany.com','UOII','5901829646'),(2,9,'Diannne','Forrington','0268-1192','dforrington1@hexun.com','AYXP','9742191239'),(3,11,'Tracie','Mully','41163-140','tmully2@w3.org','GLNA','4869566214'),(4,16,'Poul','Anfusso','42507-517','panfusso3@paypal.com','GUKU','9438131728'),(5,11,'Hamil','Brithman','24236-609','hbrithman4@miibeian.gov.cn','SVTC','0216938627'),(6,19,'Denis','Greenrodd','41268-490','dgreenrodd5@irs.gov',NULL,'7024866047'),(7,1,'Kally','Dolligon','13537-199','kdolligon6@clickbank.net','ENKR','0009840702'),(8,12,'Krysta','Lithgow','49035-080','klithgow7@go.com','WITA','8494821423'),(9,5,'Pia','Gosnay','55714-2003','pgosnay8@w3.org','EGGD','1012483800'),(10,4,'Gustavo','Teague','68382-188','gteague9@last.fm','ZMUB','7681279105'),(11,16,'Courtnay','Paterno','0051-0021','cpaternoa@hud.gov','YANL','4766805453'),(12,5,'Jasmina','Eim','55312-733','jeimb@spotify.com','KUIN','4952252760'),(13,4,'Jedidiah','Kleinplac','24236-590','jkleinplacc@adobe.com','DNPO','3372143604'),(14,16,'Ricki','Howis','55310-001','rhowisd@edublogs.org',NULL,'9746305883'),(15,5,'Geralda','La Vigne','54569-6100','glavignee@hibu.com','MWCB','3366278285'),(16,19,'Maurene','Duer','23155-115','mduerf@sohu.com','NTGH','2678943089'),(17,14,'Bertine','Purver','53645-1080','bpurverg@java.com','CYPR','6598991323'),(18,3,'Domingo','Capron','0781-3208','dcapronh@rediff.com','HTDA','0095459383'),(19,7,'Shayna','Percival','0603-7781','spercivali@google.com','SKBU','8826192952'),(20,8,'Orlan','Killford','0781-3172','okillfordj@opensource.org','EPGD','3419056400');
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguidores`
--

DROP TABLE IF EXISTS `seguidores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguidores` (
  `seg_id` int NOT NULL,
  `seg_sobrenombre` varchar(50) DEFAULT NULL,
  `seg_fecha_seguimiento` date NOT NULL,
  `seg_nombre` varchar(50) DEFAULT NULL,
  `seg_apellido` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguidores`
--

LOCK TABLES `seguidores` WRITE;
/*!40000 ALTER TABLE `seguidores` DISABLE KEYS */;
INSERT INTO `seguidores` VALUES (1,'cwooding0','2021-03-16','Chiquia','Wooding'),(2,'nhammant1','2024-08-16','Nola','Hammant'),(3,'schastey2','2019-10-20','Sharleen','Chastey'),(4,'fmarnes3','2024-05-25','Fan','Marnes'),(5,'jgilliam4','2024-06-06','Janeczka','Gilliam'),(6,'ajerrold5','2020-09-22','Aldus','Jerrold'),(7,'wroseby6','2024-10-18','Walker','Roseby'),(8,'csomerbell7','2025-11-01','Cleveland','Somerbell'),(9,'cskett8','2021-03-02','Cullie','Skett'),(10,'hizak9','2020-10-19','Hope','Izak'),(11,'msturridgea','2023-07-09','Melisenda','Sturridge'),(12,'fdaudrayb','2021-07-04','Filip','Daudray'),(13,'hmusgrovec','2019-02-22','Hyacintha','Musgrove'),(14,'kmongind','2021-06-06','Kleon','Mongin'),(15,'fstarmonte','2025-02-12','Francyne','Starmont'),(16,'jronchkaf','2025-06-18','Justina','Ronchka'),(17,'mburnyeatg','2019-08-14','Marji','Burnyeat'),(18,'bworvillh','2019-02-22','Bettina','Worvill'),(19,'kriefi','2020-01-28','Kris','Rief'),(20,'mpilgerj','2019-09-12','Meredithe','Pilger'),(21,'hcolhounk','2021-03-08','Hamnet','Colhoun'),(22,'kslatefordl','2020-08-20','Korella','Slateford'),(23,'eallsupm','2020-02-26','Ermengarde','Allsup'),(24,'dpellingarn','2025-05-24','Daryle','Pellingar'),(25,'dmccomiskieo','2022-11-23','Dee','McComiskie'),(26,'kjankowskip','2024-10-05','Kandy','Jankowski'),(27,'lbouldeq','2019-01-20','Lilia','Boulde'),(28,'pisleyr','2020-06-23','Patsy','Isley'),(29,'lshillings','2019-05-08','Larisa','Shilling'),(30,'pprimroset','2020-07-21','Pembroke','Primrose'),(31,'kgiraudelu','2025-08-03','Karlene','Giraudel'),(32,'mbemandv','2020-04-12','Marje','Bemand'),(33,'cmceniryw','2024-04-28','Consuela','McEniry'),(34,'pduguidx','2023-03-24','Phyllys','Duguid'),(35,'vboarleysony','2023-05-18','Vite','Boarleyson'),(36,'cdownsz','2021-08-26','Calley','Downs'),(37,'moshaughnessy10','2025-10-23','Morris','O\'Shaughnessy'),(38,'ccamps11','2024-02-10','Cristiano','Camps'),(39,'aairs12','2020-06-11','Annadiana','Airs'),(40,'pliversidge13','2019-06-08','Pen','Liversidge'),(41,'nkeaveny14','2019-08-02','Nissie','Keaveny'),(42,'fdolby15','2019-01-18','Franklyn','Dolby'),(43,'fdanet16','2022-07-15','Forster','Danet'),(44,'rstothart17','2021-11-19','Rosemonde','Stothart'),(45,'amacafee18','2024-02-05','Aurelia','MacAfee'),(46,'rmulvy19','2020-09-18','Roxanne','Mulvy'),(47,'kmiddiff1a','2022-05-10','Kirstyn','Middiff'),(48,'ahebborne1b','2019-12-03','Arel','Hebborne'),(49,'cleys1c','2025-01-26','Corrinne','Leys'),(50,'lhalvorsen1d','2025-01-27','Leandra','Halvorsen');
/*!40000 ALTER TABLE `seguidores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sesiones`
--

DROP TABLE IF EXISTS `sesiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sesiones` (
  `ses_id` int NOT NULL,
  `ses_usuarios_id` int NOT NULL,
  `ses_fecha_ingreso` date DEFAULT NULL,
  `ses_fecha_salida` date DEFAULT NULL,
  PRIMARY KEY (`ses_id`),
  KEY `fk_Sesiones_Usuarios1_idx` (`ses_usuarios_id`),
  CONSTRAINT `fk_Sesiones_Usuarios1` FOREIGN KEY (`ses_usuarios_id`) REFERENCES `usuarios` (`usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesiones`
--

LOCK TABLES `sesiones` WRITE;
/*!40000 ALTER TABLE `sesiones` DISABLE KEYS */;
INSERT INTO `sesiones` VALUES (1,1,'2022-06-03','2026-08-20'),(2,2,'2022-12-22','2026-06-18'),(3,3,'2022-03-10','2026-08-19'),(4,4,'2022-04-11','2027-01-05'),(5,5,'2021-12-23','2027-03-28'),(6,6,'2024-03-07','2026-08-10'),(7,7,'2021-03-13','2026-04-09'),(8,8,'2023-01-19','2027-12-08'),(9,9,'2021-01-28','2026-08-04'),(10,10,'2023-12-02','2027-10-25'),(11,11,'2021-06-06','2026-04-29'),(12,12,'2022-09-01','2026-05-14'),(13,13,'2025-08-09','2027-05-26'),(14,14,'2022-04-17','2027-04-15'),(15,15,'2021-12-01','2027-02-10'),(16,16,'2024-09-17','2026-05-28'),(17,17,'2025-12-08','2026-10-29'),(18,18,'2022-01-02','2027-05-05'),(19,19,'2025-07-22','2026-01-22'),(20,20,'2025-09-06','2026-04-22'),(21,21,'2023-04-20','2027-12-20'),(22,22,'2022-10-15','2027-12-27'),(23,23,'2022-05-02','2026-03-22'),(24,24,'2021-08-02','2027-06-20'),(25,25,'2023-02-27','2027-06-12'),(26,26,'2022-06-16','2027-04-12'),(27,27,'2025-12-13','2027-08-20'),(28,28,'2022-03-23','2027-08-24'),(29,29,'2025-02-21','2027-07-12'),(30,30,'2024-08-15','2027-04-10'),(31,31,'2021-04-15','2026-08-04'),(32,32,'2022-04-15','2027-09-06'),(33,33,'2024-06-24','2026-06-30'),(34,34,'2025-07-19','2027-10-03'),(35,35,'2024-06-17','2027-05-07'),(36,36,'2025-06-22','2027-03-01'),(37,37,'2023-04-15','2027-12-08'),(38,38,'2021-07-13','2027-11-29'),(39,39,'2024-11-30','2026-03-12'),(40,40,'2023-09-24','2026-03-29'),(41,41,'2025-03-27','2027-07-22'),(42,42,'2025-10-25','2027-01-03'),(43,43,'2021-03-30','2026-03-18'),(44,44,'2025-03-03','2026-05-12'),(45,45,'2023-04-02','2026-08-14'),(46,46,'2024-02-27','2027-03-03'),(47,47,'2024-12-20','2027-04-04'),(48,48,'2021-04-26','2027-04-22'),(49,49,'2021-02-05','2026-12-04'),(50,50,'2022-03-10','2027-08-20'),(51,51,'2023-02-04','2026-06-22'),(52,52,'2021-12-07','2027-01-16'),(53,53,'2025-09-21','2027-11-23'),(54,54,'2023-03-25','2027-08-12'),(55,55,'2022-05-19','2027-07-19'),(56,56,'2024-10-12','2026-05-17'),(57,57,'2025-12-29','2026-09-14'),(58,58,'2021-07-11','2026-09-19'),(59,59,'2024-06-09','2027-11-23'),(60,60,'2024-08-12','2026-08-03'),(61,61,'2021-08-12','2027-11-13'),(62,62,'2021-02-16','2027-03-22'),(63,63,'2024-06-02','2026-09-16'),(64,64,'2025-02-08','2027-06-01'),(65,65,'2023-08-19','2027-03-05'),(66,66,'2021-12-25','2027-08-23'),(67,67,'2023-09-16','2026-01-22'),(68,68,'2023-06-29','2027-02-27'),(69,69,'2021-05-11','2026-06-19'),(70,70,'2023-12-18','2026-02-21'),(71,71,'2021-01-30','2027-05-29'),(72,72,'2024-06-26','2026-08-15'),(73,73,'2021-01-19','2027-07-23'),(74,74,'2025-07-14','2027-11-29'),(75,75,'2025-03-22','2026-10-08'),(76,76,'2024-11-26','2026-07-21'),(77,77,'2025-01-23','2026-01-01'),(78,78,'2022-07-11','2026-02-17'),(79,79,'2023-02-07','2026-09-09'),(80,80,'2024-11-14','2026-03-14'),(81,81,'2023-02-23','2027-10-26'),(82,82,'2024-04-08','2026-10-24'),(83,83,'2024-07-11','2026-06-29'),(84,84,'2024-10-27','2027-10-20'),(85,85,'2024-11-15','2026-12-31'),(86,86,'2022-02-09','2026-07-17'),(87,87,'2021-10-23','2026-03-25'),(88,88,'2025-05-12','2027-09-21'),(89,89,'2023-09-07','2026-10-05'),(90,90,'2023-04-03','2027-08-06'),(91,91,'2023-09-30','2026-01-15'),(92,92,'2023-01-27','2026-07-15'),(93,93,'2025-10-16','2027-07-04'),(94,94,'2023-09-14','2027-12-20'),(95,95,'2025-03-17','2027-10-28'),(96,96,'2025-12-28','2027-01-20'),(97,97,'2024-02-10','2027-09-16'),(98,98,'2021-03-14','2026-01-26'),(99,99,'2025-12-06','2027-05-30'),(100,100,'2025-07-29','2027-04-01');
/*!40000 ALTER TABLE `sesiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `usu_id` int NOT NULL AUTO_INCREMENT,
  `usu_nombre` varchar(45) DEFAULT NULL,
  `usu_apellido` varchar(45) DEFAULT NULL,
  `usu_cedula` varchar(10) DEFAULT NULL,
  `usu_correo` varchar(100) DEFAULT NULL,
  `usu_contraseña` varchar(10) DEFAULT NULL,
  `usu_telefono` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Anallise','Derx','52426-520','aderx0@addtoany.com','UOII','5901829646'),(2,'Diannne','Forrington','0268-1192','dforrington1@hexun.com','AYXP','9742191239'),(3,'Tracie','Mully','41163-140','tmully2@w3.org','GLNA','4869566214'),(4,'Poul','Anfusso','42507-517','panfusso3@paypal.com','GUKU','9438131728'),(5,'Hamil','Brithman','24236-609','hbrithman4@miibeian.gov.cn','SVTC','0216938627'),(6,'Denis','Greenrodd','41268-490','dgreenrodd5@irs.gov',NULL,'7024866047'),(7,'Kally','Dolligon','13537-199','kdolligon6@clickbank.net','ENKR','0009840702'),(8,'Krysta','Lithgow','49035-080','klithgow7@go.com','WITA','8494821423'),(9,'Pia','Gosnay','55714-2003','pgosnay8@w3.org','EGGD','1012483800'),(10,'Gustavo','Teague','68382-188','gteague9@last.fm','ZMUB','7681279105'),(11,'Courtnay','Paterno','0051-0021','cpaternoa@hud.gov','YANL','4766805453'),(12,'Jasmina','Eim','55312-733','jeimb@spotify.com','KUIN','4952252760'),(13,'Jedidiah','Kleinplac','24236-590','jkleinplacc@adobe.com','DNPO','3372143604'),(14,'Ricki','Howis','55310-001','rhowisd@edublogs.org',NULL,'9746305883'),(15,'Geralda','La Vigne','54569-6100','glavignee@hibu.com','MWCB','3366278285'),(16,'Maurene','Duer','23155-115','mduerf@sohu.com','NTGH','2678943089'),(17,'Bertine','Purver','53645-1080','bpurverg@java.com','CYPR','6598991323'),(18,'Domingo','Capron','0781-3208','dcapronh@rediff.com','HTDA','0095459383'),(19,'Shayna','Percival','0603-7781','spercivali@google.com','SKBU','8826192952'),(20,'Orlan','Killford','0781-3172','okillfordj@opensource.org','EPGD','3419056400'),(21,'Diego','Fernández','1122334455','diego.fernandez@email.com','159753abc','1122334455'),(22,'Eva','Gómez','2233445566','eva.gomez@email.com','abc159753','2233445566'),(23,'Raúl','López','3344556677','raul.lopez@email.com','753159abc','3344556677'),(24,'Beatriz','Sánchez','4455667788','beatriz.sanchez@email.com','abc753159','4455667788'),(25,'Manuel','Rodríguez','5566778899','manuel.rodriguez@email.com','369abc852','5566778899'),(26,'Elena','Torres','6677889900','elena.torres@email.com','abc369852','6677889900'),(27,'Adrián','Gómez','7788990011','adrian.gomez@email.com','258abc147','7788990011'),(28,'Laura','Martínez','8899001122','laura.martinez@email.com','abc258147','8899001122'),(29,'Francisco','Fernández','9900112233','francisco.fernandez@email.com','147abc369','9900112233'),(30,'Clara','Sánchez','0011223344','clara.sanchez@email.com','abc147369','0011223344'),(31,'Alberto','Hernández','1122334455','alberto.hernandez@email.com','654abc321','1122334455'),(32,'Cristina','Pérez','2233445566','cristina.perez@email.com','abc654321','2233445566'),(33,'Pablo','Martínez','3344556677','pablo.martinez@email.com','987abc654','3344556677'),(34,'Lucía','Ruiz','4455667788','lucia.ruiz@email.com','abc987654','4455667788'),(35,'David','Sánchez','5566778899','david.sanchez@email.com','321abc987','5566778899'),(36,'Sara','García','6677889900','sara.garcia@email.com','abc321987','6677889900'),(37,'Javier','Romero','7788990011','javier.romero@email.com','753abc159','7788990011'),(38,'Eva','Pérez','8899001122','eva.perez@email.com','abc753159','8899001122'),(39,'Miguel','Hernández','9900112233','miguel.hernandez@email.com','159abc753','9900112233'),(40,'Laura','Gómez','0011223344','laura.gomez@email.com','abc159753','0011223344'),(41,'José','Fernández','1122334455','jose.fernandez@email.com','852abc369','1122334455'),(42,'María','López','2233445566','maria.lopez@email.com','abc852369','2233445566'),(43,'Alejandro','Sánchez','3344556677','alejandro.sanchez@email.com','147abc258','3344556677'),(44,'Ana','Martínez','4455667788','ana.martinez@email.com','abc147258','4455667788'),(45,'David','Hernández','5566778899','david.hernandez@email.com','369abc147','5566778899'),(46,'Isabel','Gómez','6677889900','isabel.gomez@email.com','abc369147','6677889900'),(47,'Jorge','Ruiz','7788990011','jorge.ruiz@email.com','258abc987','7788990011'),(48,'Lucía','Sánchez','8899001122','lucia.sanchez@email.com','abc258987','8899001122'),(49,'Daniel','Pérez','9900112233','daniel.perez@email.com','987abc654','9900112233'),(50,'Carmen','Hernández','0011223344','carmen.hernandez@email.com','abc987654','0011223344');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_seguidores`
--

DROP TABLE IF EXISTS `usuarios_seguidores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_seguidores` (
  `usu_seg_id` int NOT NULL AUTO_INCREMENT,
  `usu_seg_usuarios_id` int NOT NULL,
  `usu_seg_seguidores_id` int NOT NULL,
  PRIMARY KEY (`usu_seg_id`),
  KEY `fk_Usuarios_Seguidores_Usuarios1_idx` (`usu_seg_usuarios_id`),
  KEY `fk_Usuarios_Seguidores_Seguidores1_idx` (`usu_seg_seguidores_id`),
  CONSTRAINT `fk_Usuarios_Seguidores_Seguidores1` FOREIGN KEY (`usu_seg_seguidores_id`) REFERENCES `seguidores` (`seg_id`),
  CONSTRAINT `fk_Usuarios_Seguidores_Usuarios1` FOREIGN KEY (`usu_seg_usuarios_id`) REFERENCES `usuarios` (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_seguidores`
--

LOCK TABLES `usuarios_seguidores` WRITE;
/*!40000 ALTER TABLE `usuarios_seguidores` DISABLE KEYS */;
INSERT INTO `usuarios_seguidores` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50);
/*!40000 ALTER TABLE `usuarios_seguidores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyectofinal'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-31  9:15:38
