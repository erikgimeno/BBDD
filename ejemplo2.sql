CREATE TABLE ASIGNATURA(
	CODASIG NUMBER(3),
	NOMBRE VARCHAR(30),
	NUMHORAS NUMBER(3),
	CONSTRAINT pk_asignatura PRIMARY KEY (CODASIG)
	);


CREATE TABLE ALUMNO (
	DNI VARCHAR2(9),
	NOMBRE VARCHAR2(30),
	APELLIDO1 VARCHAR2(50),
	APELLIDO2 VARCHAR2(50) NULL,
	CONSTRAINT pk_alumno PRIMARY KEY (DNI)
);

-- tabla de relaciones --
CREATE TABLE INSCRIPCION (
	CODASIG NUMBRER(3),
	DNI VARCHAR2(9),
	CALIFICACION NUMBER (2),
	CONSTRAINT pk_inscripcion PRIMARY KEY (CODASIG,DNI),
	CONSTRAINT fk_asignatura FOREIGN KEY (CODASIG) REFERENCES ASIGNATURA(CODASIG),
	CONSTRAINT fk_alumno FOREIGN KEY (DNI) REFERENCES ALUMNO(DNI)
);