-- Criação do banco de dados: Clínica
CREATE DATABASE Clinica;
USE Clinica;

-- Tabela Plano_de_saude
CREATE TABLE Plano_de_saude (
    cnpj     CHAR(14)        NOT NULL,
    nome     VARCHAR(100)    NOT NULL,
    email    VARCHAR(100)    NOT NULL,
    endereco TEXT            NOT NULL,
    PRIMARY KEY (cnpj)
);

-- Tabela Pessoa
CREATE TABLE Pessoa (
    cpf                 CHAR(11)        NOT NULL,
    nome                VARCHAR(100)    NOT NULL,
    telefone            VARCHAR(20)     NOT NULL,
    endereco            TEXT            NOT NULL,
    email               VARCHAR(100)    NOT NULL,
    tipo_sanguineo      VARCHAR(3)      NOT NULL,
    data_de_nascimento  DATE            NOT NULL,
    PRIMARY KEY (cpf)
);


-- Tabela Paciente
CREATE TABLE Paciente (
    cpf             CHAR(11)        NOT NULL,
    peso            DECIMAL(5,2)    NOT NULL,
    altura          DECIMAL(4,2)    NOT NULL,
    plano_de_saude  VARCHAR(14)     NOT NULL,
    PRIMARY KEY (cpf),
    FOREIGN KEY (cpf) REFERENCES Pessoa(cpf) ON DELETE CASCADE,
    FOREIGN KEY (plano_de_saude) REFERENCES Plano_de_saude(cnpj) ON DELETE RESTRICT
);

-- Tabela Funcionário
CREATE TABLE Funcionario (
    cpf                 CHAR(11)        NOT NULL,
    salario             DECIMAL(10,2)   NOT NULL,
    escala              VARCHAR(50)     NOT NULL,
    matricula           VARCHAR(20)     NOT NULL,
    data_de_admissao    DATE            NOT NULL,
    PRIMARY KEY (cpf),
    FOREIGN KEY (cpf) REFERENCES Pessoa(cpf) ON DELETE CASCADE
);

-- Tabela Contato_de_emergencia
CREATE TABLE Contato_de_emergencia (
    cpf_paciente    CHAR(11)        NOT NULL,
    telefone        VARCHAR(20)     NOT NULL,
    nome            VARCHAR(100)    NOT NULL,
    tipo_de_relacao VARCHAR(50)     NOT NULL,
    PRIMARY KEY (cpf_paciente, telefone),
    FOREIGN KEY (cpf_paciente) REFERENCES Paciente(cpf) ON DELETE CASCADE
);

-- Tabela Doenças_crônicas
CREATE TABLE Doencas_cronicas (
    cid_11  VARCHAR(10)     NOT NULL,
    nome    VARCHAR(100)    NOT NULL,
    PRIMARY KEY(cid_11)
);

-- Tabela Paciente_tem_doencas_cronicas
CREATE TABLE Paciente_tem_doencas_cronicas (
    cpf_paciente VARCHAR(11)     NOT NULL,
    cid_11       VARCHAR(10)     NOT NULL,
    PRIMARY KEY (cpf_paciente, cid_11),
    FOREIGN KEY (cpf_paciente) REFERENCES Paciente(cpf) ON DELETE CASCADE,
    FOREIGN KEY (cid_11) REFERENCES Doencas_cronicas(cid_11) ON DELETE RESTRICT
);

-- Tabela Alergia
CREATE TABLE Alergia (
    alergeno VARCHAR(100)    NOT NULL,
    tipo     VARCHAR(50)     NOT NULL,
    PRIMARY KEY (alergeno)
);

-- Tabela Paciente_tem_alergia
CREATE TABLE Paciente_tem_alergia (
    cpf_paciente VARCHAR(11)     NOT NULL,
    alergeno     VARCHAR(100)    NOT NULL,
    PRIMARY KEY (cpf_paciente, alergeno),
    FOREIGN KEY (cpf_paciente) REFERENCES Paciente(cpf) ON DELETE CASCADE,
    FOREIGN KEY (alergeno) REFERENCES Alergia(alergeno) ON DELETE RESTRICT
);

-- Tabela Médico
CREATE TABLE Medico (
    cpf CHAR(11) NOT NULL,
    crm CHAR(20) NOT NULL,
    PRIMARY KEY (cpf),
    FOREIGN KEY (cpf) REFERENCES Funcionario(cpf) ON DELETE CASCADE
);

-- Tabela Especialidade
CREATE TABLE Especialidade (
    nome        VARCHAR(100)    NOT NULL,
    descricao   TEXT            NOT NULL,
    PRIMARY KEY(nome)
);

-- Tabela Medico_tem_especialidade
CREATE TABLE Medico_tem_especialidade (
    cpf                 CHAR(11)        NOT NULL,
    nome_especialidade  VARCHAR(100)    NOT NULL,
    PRIMARY KEY (cpf, nome_especialidade),
    FOREIGN KEY (cpf) REFERENCES Medico(cpf) ON DELETE CASCADE,
    FOREIGN KEY (nome_especialidade) REFERENCES Especialidade(nome) ON DELETE RESTRICT
);

-- Tabela Secretária
CREATE TABLE Secretaria (
    cpf             CHAR(11)    NOT NULL,
    numero_ramal    VARCHAR(20) NOT NULL,
    PRIMARY KEY (cpf),
    FOREIGN KEY (cpf) REFERENCES Funcionario(cpf) ON DELETE CASCADE
);

-- Tabela Remédio
CREATE TABLE Remedio (
    ium                 VARCHAR(20)     NOT NULL,
    nome                VARCHAR(100)    NOT NULL,
    farmaco_por_dose    VARCHAR(50)     NOT NULL,
    laboratorio         VARCHAR(100)    NOT NULL,
    bula TEXT,
    PRIMARY KEY (ium)
);

-- Tabela Paciente_utiliza_remedio
CREATE TABLE Paciente_utiliza_remedio (
    ium     VARCHAR(20)     NOT NULL,
    cpf     VARCHAR(11)     NOT NULL,
    dose    DECIMAL(5,2)    NOT NULL,
    PRIMARY KEY (ium, cpf),
    FOREIGN KEY (ium) REFERENCES Remedio(ium) ON DELETE RESTRICT,
    FOREIGN KEY (cpf) REFERENCES Paciente(cpf) ON DELETE CASCADE
);

-- Tabela Consulta
CREATE TABLE Consulta (
    cpf_paciente        CHAR(11)        NOT NULL,
    cpf_medico          CHAR(11)        NOT NULL,
    data                DATE            NOT NULL,
    hora                TIME            NOT NULL,
    valor               DECIMAL(10,2)   NOT NULL,
    sala                VARCHAR(20)     NOT NULL,
    retorno             BOOLEAN         NOT NULL,
    cpf_secretaria      CHAR(11)        NOT NULL,
    PRIMARY KEY (cpf_paciente, cpf_medico, data, hora),
    FOREIGN KEY (cpf_paciente) REFERENCES Paciente(cpf) ON DELETE RESTRICT,
    FOREIGN KEY (cpf_medico) REFERENCES Medico(cpf) ON DELETE RESTRICT,
    FOREIGN KEY (cpf_secretaria) REFERENCES Secretaria(cpf) ON DELETE RESTRICT
);

-- Tabela Receita
CREATE TABLE Receita (
    id                  INT         NOT NULL,
    cpf_paciente        CHAR(11)    NOT NULL,
    cpf_medico          CHAR(11)    NOT NULL,
    data_consulta       DATE        NOT NULL,
    hora_consulta       TIME        NOT NULL,
    data_de_validade    DATE        NOT NULL,
    instrucao           TEXT,
    data_emissao        DATE        NOT NULL,
    PRIMARY KEY (id, cpf_paciente, cpf_medico, data_consulta, hora_consulta),
    FOREIGN KEY (cpf_paciente, cpf_medico, data_consulta, hora_consulta) REFERENCES Consulta(cpf_paciente, cpf_medico, data, hora) ON DELETE CASCADE
);

-- Tabela Receita_contém_remédios
CREATE TABLE Receita_contem_remedios (
    ium             VARCHAR(20)     NOT NULL,
    id_receita      INT             NOT NULL,
    cpf_paciente    CHAR(11)        NOT NULL,
    cpf_medico      CHAR(11)        NOT NULL,
    data_consulta   DATE            NOT NULL,
    hora_consulta   TIME            NOT NULL,
    dose            DECIMAL(5,2)    NOT NULL,
    PRIMARY KEY (ium, id_receita, cpf_paciente, cpf_medico, data_consulta, hora_consulta),
    FOREIGN KEY (ium) REFERENCES Remedio(ium) ON DELETE RESTRICT,
    FOREIGN KEY (id_receita, cpf_paciente, cpf_medico, data_consulta, hora_consulta) REFERENCES Receita(id, cpf_paciente, cpf_medico, data_consulta, hora_consulta) ON DELETE CASCADE
);

-- Tabela Tipo_de_exame
CREATE TABLE Tipo_de_exame (
    id          INT             NOT NULL AUTO_INCREMENT,
    descricao   TEXT            NOT NULL,
    nome        VARCHAR(100)    NOT NULL,
    PRIMARY KEY(id)
);

-- Tabela Exame
CREATE TABLE Exame (
    id              INT         NOT NULL,
    cpf_paciente    CHAR(11)    NOT NULL,
    cpf_medico      CHAR(11)    NOT NULL,
    data_consulta   DATE        NOT NULL,
    hora_consulta   TIME        NOT NULL,
    resultado       TEXT        NOT NULL,
    id_tipo_exame   INT         NOT NULL,
    PRIMARY KEY(id, cpf_paciente, cpf_medico, data_consulta, hora_consulta),
    FOREIGN KEY (cpf_paciente, cpf_medico, data_consulta, hora_consulta) REFERENCES Consulta(cpf_paciente, cpf_medico, data, hora) ON DELETE CASCADE,
    FOREIGN KEY (id_tipo_exame) REFERENCES Tipo_de_exame(id) ON DELETE RESTRICT
);

-- Tabela Diagnóstico
CREATE TABLE Diagnostico (
    id              INT         NOT NULL,
    cpf_paciente    CHAR(11)    NOT NULL,
    cpf_medico      CHAR(11)    NOT NULL,
    data_consulta   DATE        NOT NULL,
    hora_consulta   TIME        NOT NULL,
    descricao       TEXT        NOT NULL,
    PRIMARY KEY (id, cpf_paciente, cpf_medico, data_consulta, hora_consulta),
    FOREIGN KEY (cpf_paciente, cpf_medico, data_consulta, hora_consulta) REFERENCES Consulta(cpf_paciente, cpf_medico, data, hora) ON DELETE CASCADE
);

-- Tabela Tipo_de_procedimento
CREATE TABLE Tipo_de_procedimento (
    id          INT             NOT NULL AUTO_INCREMENT,
    descricao   TEXT            NOT NULL,
    nome        VARCHAR(100)    NOT NULL,
    PRIMARY KEY(id)
);

-- Tabela Procedimento
CREATE TABLE Procedimento (
    id                      INT         NOT NULL,
    cpf_paciente            CHAR(11)    NOT NULL,
    cpf_medico              CHAR(11)    NOT NULL,
    data_consulta           DATE        NOT NULL,
    hora_consulta           TIME        NOT NULL,
    data_procedimento       DATE        NOT NULL,
    hora_procedimento       TIME        NOT NULL,
    cpf_secretaria          CHAR(11)    NOT NULL,
    id_tipo_procedimento    INT         NOT NULL,
    PRIMARY KEY (id, cpf_paciente, cpf_medico, data_consulta, hora_consulta),
    FOREIGN KEY (cpf_paciente, cpf_medico, data_consulta, hora_consulta) REFERENCES Consulta(cpf_paciente, cpf_medico, data, hora) ON DELETE CASCADE,
    FOREIGN KEY (cpf_secretaria) REFERENCES Secretaria(cpf) ON DELETE RESTRICT,
    FOREIGN KEY (id_tipo_procedimento) REFERENCES Tipo_de_procedimento(id) ON DELETE RESTRICT
);
