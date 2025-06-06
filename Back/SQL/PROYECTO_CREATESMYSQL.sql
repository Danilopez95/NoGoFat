-- 1. Eliminar tablas (MySQL no soporta CASCADE en DROP TABLE)
DROP TABLE IF EXISTS MONITOR_CLASE;
DROP TABLE IF EXISTS USUARIO_RUTINA;
DROP TABLE IF EXISTS RUTINA_EJERCICIO;

-- 2. Tablas con claves foráneas
DROP TABLE IF EXISTS CLASE;
DROP TABLE IF EXISTS MONITOR;
DROP TABLE IF EXISTS USUARIO;
DROP TABLE IF EXISTS HORARIO;
DROP TABLE IF EXISTS EMPLEADO;
DROP TABLE IF EXISTS TELEFONO;

-- 3. Tablas independientes
DROP TABLE IF EXISTS RUTINA;
DROP TABLE IF EXISTS EJERCICIO;
DROP TABLE IF EXISTS SALA;
DROP TABLE IF EXISTS PERSONA;

-- Creación de tablas
CREATE TABLE PERSONA(
    DNI VARCHAR(20) PRIMARY KEY,
    NOMBRE VARCHAR(20) NOT NULL,
    APELLIDO1 VARCHAR(30) NOT NULL,
    APELLIDO2 VARCHAR(30),
    DIRECCION VARCHAR(100) NOT NULL,
    EMAIL VARCHAR(100) UNIQUE,
    CUENTA_BANCARIA VARCHAR(100),
    FECHA_NAC DATE
) ENGINE=InnoDB;

CREATE TABLE TELEFONO(
    ID_TELEFONO INT AUTO_INCREMENT PRIMARY KEY,
    DNI VARCHAR(20),
    NUMERO INT(9) NOT NULL,
    TIPO VARCHAR(20) CHECK (TIPO IN('MOVIL','TRABAJO','CASA')),
    
    FOREIGN KEY (DNI) REFERENCES PERSONA(DNI)
) ENGINE=InnoDB;

CREATE TABLE EMPLEADO(
    ID_EMPLEADO INT AUTO_INCREMENT PRIMARY KEY,
    DNI VARCHAR(20),
    SALARIO DECIMAL(10,2),
    FECHA_CONTRATACION DATE,
    
    FOREIGN KEY (DNI) REFERENCES PERSONA(DNI)
) ENGINE=InnoDB;

CREATE TABLE HORARIO(
    ID_HORARIO INT AUTO_INCREMENT PRIMARY KEY,
    ID_EMPLEADO INT,
    TIPO VARCHAR(1) CHECK(TIPO IN ('M','T')),
    
    FOREIGN KEY (ID_EMPLEADO) REFERENCES EMPLEADO(ID_EMPLEADO)
) ENGINE=InnoDB;

CREATE TABLE MONITOR(
    ID_MONITOR INT AUTO_INCREMENT PRIMARY KEY,
    ID_EMPLEADO INT,
    
    FOREIGN KEY (ID_EMPLEADO) REFERENCES EMPLEADO(ID_EMPLEADO)
) ENGINE=InnoDB;

CREATE TABLE RUTINA (
    ID_RUTINA INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(30) UNIQUE,
    DESCRIPCION VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE USUARIO(
    ID_USUARIO INT AUTO_INCREMENT PRIMARY KEY,
    DNI VARCHAR(20),
    
    FOREIGN KEY (DNI) REFERENCES PERSONA(DNI)
) ENGINE=InnoDB;

CREATE TABLE USUARIO_RUTINA(
    ID_RUTINA INT,
    ID_USUARIO INT,
    
    PRIMARY KEY(ID_RUTINA, ID_USUARIO),
    FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO(ID_USUARIO),
    FOREIGN KEY (ID_RUTINA) REFERENCES RUTINA(ID_RUTINA)
) ENGINE=InnoDB;

CREATE TABLE EJERCICIO(
    ID_EJERCICIO INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(50) NOT NULL UNIQUE,
    DESCRIPCION VARCHAR(200),
    GRUPO_MUSCULAR VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE RUTINA_EJERCICIO (
    ID_RUTINA_EJERCICIO INT AUTO_INCREMENT PRIMARY KEY,
    ID_RUTINA INT,
    ID_EJERCICIO INT,
    SERIES TINYINT NOT NULL CHECK (SERIES BETWEEN 1 AND 9),
    REPETICIONES SMALLINT NOT NULL,
    DIA_SEMANA VARCHAR(10) CHECK (DIA_SEMANA IN('LUNES','MARTES','MIÉRCOLES','JUEVES','VIERNES','SÁBADO')),
    
    FOREIGN KEY (ID_RUTINA) REFERENCES RUTINA(ID_RUTINA) ON DELETE CASCADE,
    FOREIGN KEY (ID_EJERCICIO) REFERENCES EJERCICIO(ID_EJERCICIO)
) ENGINE=InnoDB;

CREATE TABLE SALA(
    ID_SALA INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(30)
) ENGINE=InnoDB;

CREATE TABLE CLASE(
    ID_CLASE INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(30),
    DESCRIPCION VARCHAR(100),
    FECHA_INICIO DATE,
    FECHA_FIN DATE,
    SALA INT,
    
    FOREIGN KEY (SALA) REFERENCES SALA(ID_SALA)
) ENGINE=InnoDB;

CREATE TABLE MONITOR_CLASE(
    ID_MONITOR INT,
    ID_CLASE INT,
    
    FOREIGN KEY (ID_MONITOR) REFERENCES MONITOR(ID_MONITOR),
    FOREIGN KEY (ID_CLASE) REFERENCES CLASE(ID_CLASE)
) ENGINE=InnoDB;

CREATE TABLE USUARIO_CLASE(
    ID_USUARIO INT,
    ID_CLASE INT,
    FECHA DATE,
    
    PRIMARY KEY(ID_USUARIO, ID_CLASE, FECHA),
    FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO(ID_USUARIO),
    FOREIGN KEY (ID_CLASE) REFERENCES CLASE(ID_CLASE)
) ENGINE=InnoDB;