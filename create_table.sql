CREATE TABLE `cliente` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(80) NOT NULL,
  `CPF` char(11) NOT NULL,
  `Celular` char(11) DEFAULT NULL,
  `EndLogradouro` varchar(100) NOT NULL,
  `EndNumero` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `contareceber` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Cliente_ID` int NOT NULL,
  `FaturaVendaID` int DEFAULT NULL,
  `DataConta` date NOT NULL,
  `DataVencimento` date NOT NULL,
  `Valor` decimal(18,2) NOT NULL,
  `Situacao` enum('1','2','3') NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_ContaReceber_Cliente_idx_idx` (`Cliente_ID`),
  CONSTRAINT `fk_ContaReceber_Cliente_idx` FOREIGN KEY (`Cliente_ID`)
    REFERENCES `cliente` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `estado` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `UF` char(2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `municipio` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Estado_ID` int NOT NULL,
  `Nome` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CodigoBE` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Municipio_Estado1_idx_idx` (`Estado_ID`),
  CONSTRAINT `fk_Municipio_Estado1_idx` FOREIGN KEY (`Estado_ID`) REFERENCES
    `estado` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_as_ci;
