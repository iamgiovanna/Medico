CREATE DATABASE MEDICO;

use MEDICO;

CREATE TABLE M_EDICO(
	CRM VARCHAR(10) PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	especializãcao VARCHAR(20) NOT NULL
);

CREATE TABLE exame(
		CRM VARCHAR(10),
		foreign key (CRM) references M_EDICO,
		cod_consulta VarChar(10),
		data_exame date NOT NULL,
		cod_exame VarChar(10) PRIMARY KEY
);

CREATE TABLE consulta(
	CRM VARCHAR(10),
	foreign key (CRM) references M_EDICO,
	data_consulta date NOT NULL,
	cod_paciente VarChar(10)
	foreign key (cod_paciente) references  paciente
	
);

DROP TABLE consulta;

CREATE TABLE consulta(
	CRM VARCHAR(10),
	foreign key (CRM) references M_EDICO,
	data_consulta date NOT NULL,
	cod_paciente VarChar(10),
	foreign key (cod_paciente) references  paciente,
	cod_consulta VarChar(10) PRIMARY KEY
);

CREATE TABLE paciente(
	cod_paciente VarChar(10) PRIMARY KEY,
	sexo VarChar(10) NOT NULL,
	estado_civil VarChar(20) NOT NULL,
	rg VarChar(40) NOT NULL,
	endreco VarChar(40) NOT NULL,
	mat_convenio VarChar(40) NOT NULL
);

CREATE TABLE diagnostico(
	laudo VarChar(150) NOT NULL,
	cod_consulta VarChar(10),
	foreign key (cod_consulta) references  consulta,
);

CREATE TABLE telefone(
	cod_paciente VarChar(10),
	foreign key (cod_paciente) references  paciente,
	cod_telefone VarChar(10) PRIMARY KEY,
	comentario VarChar(50)	NOT NULL, 
	numero_tel VarChar(10)
	);

	CREATE TABLE tipo_telefone(
	cod_telefone VarChar(10),
	foreign key (cod_telefone) references  telefone,
	comentarios_telfone VarChar(10)
	);