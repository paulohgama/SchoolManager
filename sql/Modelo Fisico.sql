create table turno (
    idTurno bigint not null primary key generated always as identity (start with 1, increment by 1),
    nmTurno varchar(20) not null
);

create table curso (
    idCurso bigint not null primary key generated always as identity (start with 1, increment by 1),
    nmCurso varchar(50) not null
);

create table estado (
    idEstado bigint not null primary key generated always as identity (start with 1, increment by 1),
    nmEstado varchar(50) not null,
    sgEstado char(2)
);

create table cidade (
    idCidade bigint not null primary key generated always as identity (start with 1, increment by 1),
    nmCidade varchar(50) not null,
    idEstado bigint not null,
    constraint FK_cidade_estado foreign key (idEstado) references estado (idEstado)
);

create table bairro (
    idBairro bigint not null primary key generated always as identity (start with 1, increment by 1),
    nmBairro varchar(50) not null,
    idCidade bigint not null,
    constraint fk_bairro_cidade foreign key (idCidade) references cidade (idCidade)
);

create table disciplina (
    idDisciplina bigint not null primary key generated always as identity (start with 1, increment by 1),
    nmDisciplina varchar(100) not null,
    cdCiclo int not null,
    cdDisciplina varchar(10) not null UNIQUE
);

create table aluno(
    idAluno bigint not null primary key generated always as identity (start with 1, increment by 1),
    nmUsuario varchar(40) not null UNIQUE,
    hashPassword bigint not null,
    nmAluno varchar(100) not null,
    dtNascimento DATE not null,
    cdRG varchar(9) not null,
    imDocumento varchar(200) not null,
    cdCPF varchar(11) not null,
    idBairro bigint not null,
    constraint fk_login_pessoas_bairro foreign key (idBairro) references bairro (idBairro)
);

create table professor(
    idProfessor bigint not null primary key generated always as identity (start with 1, increment by 1),
    nmUsuario varchar(40) not null UNIQUE,    
    hashPassword bigint not null,
    nmProfessor varchar(100) not null,
    dtNascimento DATE not null,
    nmEspecializacao varchar(100) not null,
    cdRG varchar(9) not null,
    imDocumento varchar(200),
    cdCPF varchar(11) not null,
    idBairro bigint,
    constraint fk_professor_bairro foreign key (idBairro) references bairro (idBairro)
);

create table designa
(
    idAluno bigint,
    idProfessor bigint,
    idDisciplina bigint not null,
    tipo char(3) not null,
    constraint fk_designa_aluno foreign key (idAluno) references aluno (idAluno),
    constraint fk_designa_disciplina foreign key (idDisciplina) references disciplina (idDisciplina),
    constraint fk_designa_professor foreign key (idProfessor) references professor (idProfessor)
);

create table avaliacao (
    idAvaliacao bigint not null primary key generated always as identity (start with 1, increment by 1),
    dtAvaliacao date not null
);

create table contatos (
    nrTelefoneFixo varchar(11) not null,
    dsEmail varchar(100) not null,
    nrTelefoneCelular varchar(12) not null,
    idAluno bigint,
    idProfessor bigint,
    constraint fk_contatos_aluno foreign key (idAluno) references aluno (idAluno),
    constraint fk_contatos_professor foreign key (idProfessor) references professor (idProfessor)
);

create table aplica (
    idDisciplina bigint not null,
    idAvaliacao bigint not null,
    constraint fk_aplica_disciplina foreign key (idDisciplina) references disciplina (idDisciplina),
    constraint fk_aplica_avaliacao foreign key (idAvaliacao) references avaliacao (idAvaliacao)
);

create table faltas
(
	idFalta bigint not null primary key generated always as identity (start with 1, increment by 1),
	dtFalta date not null,
	qntFalta int not null
);

create table atribuifaltas
(
	idAluno bigint not null,
	idDisciplina bigint not null,
	idFalta bigint not null,
	constraint fk_atribuifaltas_aluno foreign key (idAluno) references aluno (idAluno),
	constraint fk_atribuifaltas_disciplinas foreign key (idDisciplina) references disciplina (idDisciplina),
	constraint fk_atribuifaltas_faltas foreign key (idFalta) references faltas(idFalta)
);

create table notas
(
	idNota bigint not null primary key generated always as identity (start with 1, increment by 1),
	cdNota int not null
);

create table atribuinotas
(
	idAluno bigint not null,
	idDisciplina bigint not null,
	idNotas bigint not null,
	dsDescricao char(2),
	constraint fk_atribuinotas_aluno foreign key (idAluno) references aluno (idAluno),
	constraint fk_atribuinotas_disciplinas foreign key (idDisciplina) references disciplina (idDisciplina),
	constraint fk_atribuinotas_notas foreign key (idNotas) references notas (idNota)
 );

 create table material
 (
 	idMaterial bigint not null primary key generated always as identity (start with 1, increment by 1),
 	dsMaterial varchar(100),
 	nmArquivo varchar(30) not null,
 	dsCaminho varchar(200) not null,
 	dsExtensao varchar(6) not null,
 	cdTamanho double precision,
 	nmTamanho char(2),
 	idDisciplina bigint not null,
 	constraint fk_material_disciplinas foreign key (idDisciplina) references disciplina (idDisciplina)
 );

 create table secretario(
    hashPassword bigint not null,
    nmUsuario varchar(40) not null UNIQUE,
    idSecretario bigint not null primary key generated always as identity (start with 1, increment by 1),
    nmSecretario varchar(100) not null,
    imDocumento varchar(200) not null
);

create table solicitacao
(
	idSolicitacao bigint not null primary key generated always as identity (start with 1, increment by 1),
	tipoDocumento varchar(50) not null,
	dtSolicitacao date not null,
	dtLimite date not null,
	qntSolicitada int not null,
	idAluno bigint not null,
	dsStatus int not null,
	constraint fk_solicitacao_aluno foreign key (idAluno) references aluno (idAluno)
);