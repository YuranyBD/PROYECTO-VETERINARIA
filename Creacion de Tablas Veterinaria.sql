/* TABLA: CLIENTE*/
create table Cliente (
	id_cliente int4 primary key NOT NULL,
	dni_cliente varchar(10) NULL,
	apellido_cliente VARCHAR(30) NULL,
	nombre_cliente VARCHAR(30) NULL,
	direccion_cliente VARCHAR(40) NULL,
	telefono_cliente VARCHAR(10) NULL,
	numero_mascotas int4 NULL
);

/* TABLA: MASCOTA*/
create table Mascota (
	id_mascota int4 primary key NOT NULL,
	especie_mascota varchar(30) NULL,
	edad_mascota INT4 NULL
);

/* TABLA: VACUNACIÓN*/
create table Vacunacion (
	id_vacuna int4 primary key NOT NULL,
	nombre_vacuna varchar(50) NULL
);

/* TABLA: ENFERMEDAD*/
create table Enfermedad (
	id_enfermedad	int4 primary key NOT NULL,
	nombre_enfermedad varchar(50) NULL
);

/* TABLA: VETERINARIO*/
create table Veterinario (
	id_veterinario int4 primary key NOT NULL,
	nombre_veterinario varchar(30) NULL
);

/* TABLA: HISTORIAL CLINICO*/
create table Historial_Clinico (
	id_his_cli int4 primary key NOT NULL,
	id_cliente int4 NOT NULL,
	id_mascota int4 NOT NULL,
	raza_his_cli VARCHAR(30) NULL,
	color_his_cli VARCHAR(30) NULL,
	fecha_nacimiento_his_cli DATE NULL,
	CONSTRAINT fk_Cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	CONSTRAINT fk_Mascota FOREIGN KEY (id_mascota) REFERENCES Mascota(id_mascota)
);

/* TABLA: DETALLE HISTORIAL CLINICO*/
create table Detalle_Historial_Clinico (
	id_det_his_cli int4 primary key NOT NULL,
	id_his_cli int4 NOT NULL,
	id_veterinario int4 NOT NULL,
	id_enfermedad int4 NOT NULL,
	peso_det_his_cli DECIMAL(8,4) NULL,
	fecha_consulta_det_his_cli DATE NULL,
	CONSTRAINT fk_Historial_Clinico FOREIGN KEY (id_his_cli) REFERENCES Historial_Clinico(id_his_cli),
	CONSTRAINT fk_Veterinario FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id_veterinario),
	CONSTRAINT fk_Enfermedad FOREIGN KEY (id_enfermedad) REFERENCES Enfermedad(id_enfermedad)
);

/* TABLA: DETALLE VACUNACIÓN*/
create table Detalle_Vacunacion (
	id_det_vacuna int4 primary key NOT NULL,
	id_vacuna int4 NOT NULL,
	id_his_cli int4 NOT NULL,
	dosis_det_vacuna DECIMAL(8,4) NULL,
	fecha_det_vacuna DATE NULL,
	CONSTRAINT fk_Historial_Clinico_2 FOREIGN KEY (id_his_cli) REFERENCES Historial_Clinico(id_his_cli),
	CONSTRAINT fk_Vacunacion FOREIGN KEY (id_vacuna) REFERENCES Vacunacion(id_vacuna)
);