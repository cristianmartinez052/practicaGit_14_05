DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carreras` (
 `cod_carrera` int NOT NULL,
 `sexo` varchar(10) DEFAULT NULL,
 `hora` time DEFAULT NULL,
 `reglas` varchar(60) DEFAULT NULL,
 `corredor_persona_cod_persona` int NOT NULL,
 `corredor_club_cod_club` int NOT NULL,
 `corredor_numero_dorsal` int NOT NULL,
 `categoria_cod_categoria` int NOT NULL,
 PRIMARY KEY
(`cod_carrera`,`corredor_persona_cod_persona`,`corredor_club_cod_club`,`corredor_numero_d
orsal`),
 KEY `fk_carreras_corredor1_idx`
(`corredor_persona_cod_persona`,`corredor_club_cod_club`,`corredor_numero_dorsal`),
 KEY `fk_carreras_categoria1_idx` (`categoria_cod_categoria`),
 CONSTRAINT `fk_carreras_categoria1` FOREIGN KEY (`categoria_cod_categoria`)
REFERENCES `categoria` (`cod_categoria`) ON DELETE RESTRICT ON UPDATE CASCADE,
 CONSTRAINT `fk_carreras_corredor1` FOREIGN KEY (`corredor_persona_cod_persona`,
`corredor_club_cod_club`, `corredor_numero_dorsal`) REFERENCES `corredor`
(`persona_cod_persona`, `club_cod_club`, `numero_dorsal`) ON DELETE RESTRICT ON UPDATE
CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;