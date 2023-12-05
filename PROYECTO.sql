CREATE DATABASE IF NOT EXISTS secretaria_academica;
 CREATE TABLE Carreras (
    codigo_carrera INT PRIMARY KEY,
	nombre VARCHAR(100),
	descripcion TEXT
 );
 CREATE TABLE Alumnos (
    matricula INT PRIMARY KEY,
	nombre VARCHAR(50),
    apellido_paterno VARCHAR(50),
    apellido_materno VARCHAR(50),
    email VARCHAR(100),
    edad INT,
    codigo_carrera INT,
    FOREIGN KEY (codigo_carrera) REFERENCES Carreras(codigo_carrera)
	);
    CREATE TABLE Profesores (
    numero_personal INT PRIMARY KEY,
    nombre_completo VARCHAR(100),
    email VARCHAR(100),
    grado_maximo_estudios VARCHAR(50)
    );
    CREATE TABLE Materias (
    codigo_materia INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    creditos INT,
    bloque INT
	);
    CREATE TABLE AreasFormacion (
    codigo_area INT PRIMARY KEY,
	nombre VARCHAR(50)
     );
     CREATE TABLE Materias_Areas (
    codigo_materia INT,
    codigo_area INT,
	PRIMARY KEY (codigo_materia, codigo_area),
	FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia),
	FOREIGN KEY (codigo_area) REFERENCES AreasFormacion(codigo_area)
     );
     CREATE TABLE PeriodosEscolares (
    codigo_periodo INT PRIMARY KEY,
    nombre VARCHAR(20),
    fecha_inicio DATE,
    fecha_fin DATE
	);
    CREATE TABLE Calificaciones (
    matricula INT,
    codigo_materia INT,
    numero_personal_profesor INT,
    periodo_escolar INT,
    calificacion FLOAT,
     PRIMARY KEY (matricula, codigo_materia, periodo_escolar),
     FOREIGN KEY (matricula) REFERENCES Alumnos(matricula),
    FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia),
	FOREIGN KEY (numero_personal_profesor) REFERENCES Profesores(numero_personal),
    FOREIGN KEY (periodo_escolar) REFERENCES PeriodosEscolares(codigo_periodo)
	);
    