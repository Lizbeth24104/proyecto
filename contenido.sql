 INSERT INTO Alumnos (matricula, nombre, apellido_paterno, apellido_materno, email, edad, codigo_carrera)
 VALUES
 (1001, 'Juan', 'García', 'Pérez', 'juangarcia@example.com', 20, 1),
 (1002, 'María', 'López', 'González', 'marialopez@example.com', 22, 2);

INSERT INTO Carreras (codigo_carrera, nombre, descripcion)
 VALUES
 (1, 'Licenciatura en Ingenieria de software', 'Programar, deseñar y construir software.'),
 (2, 'Licenciatura en Ingeniería de Ciberseguridad e Infraestructura de Cómputo', 'Ciberseguridad, redes y servicios de computo.'),
 (3, 'Licenciatura en Ingeniería en Sistemas y Tecnologías de la Información', 'tecnologias de la informacio.'),
 (4, 'Licenciatura en Estadistica', 'Estadistica.'),
(5, 'Licenciatura en Redes y Servicios de Cómputo', 'Redes y administración de servicios de cómputo.'),
(6, 'Licenciatura en Tecnologias computacionales', 'Soluciones sustentables basadas en tecnologías computacionales.');

INSERT INTO Profesores (numero_personal, nombre_completo, email, grado_maximo_estudios)
VALUES
(5001, 'Carlos Martínez', 'carlosmartinez@example.com', 'Maestría en Ingeniería'),
(5002, 'Laura Sánchez', 'laurasanchez@example.com', 'Doctorado en Administración');

INSERT INTO Materias (codigo_materia, nombre, descripcion, creditos, bloque)
VALUES
     (101, 'Programación Avanzada', 'Estudio de programación orientada a objetos.', 6, 1),
     (103, 'Bases de Datos', 'Diseño y administración de bases de datos.', 5, 2),
     (104, 'Diseño de Interfaces de Usuario', 'Creación de interfaces amigables y funcionales.', 4, 1),
      (105, 'Inteligencia Artificial', 'Estudio de técnicas de IA y aprendizaje automático.', 6, 2),
      (106, 'Redes de Computadoras', 'Configuración y mantenimiento de redes.', 5, 2);

INSERT INTO AreasFormacion (codigo_area, nombre)
    VALUES
     (1, 'Disciplinarias'),
     (2, 'Básicas');

INSERT INTO PeriodosEscolares (codigo_periodo, nombre, fecha_inicio, fecha_fin)
VALUES
    (2023, 'Tercer Semestre', '2023-08-01', '2023-12-15'),
    (2024, 'Cuarto Semestre', '2024-01-15', '2024-06-30');

 INSERT INTO Calificaciones (matricula, codigo_materia, numero_personal_profesor, periodo_escolar, calificacion)
    VALUES
     (1001, 101, 5001, 2023, 95),
      (1002, 102, 5002, 2023, 88);