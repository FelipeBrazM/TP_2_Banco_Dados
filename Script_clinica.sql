-- Criação do banco de dados: Clínica
CREATE DATABASE Clinica;
USE Clinica;

-- Tabela Plano_de_saude
CREATE TABLE Plano_de_saude (
    cnpj VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    endereco TEXT
);

-- Tabela Pessoa
CREATE TABLE Pessoa (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    endereco TEXT,
    email VARCHAR(100),
    tipo_sanguineo VARCHAR(3),
    data_de_nascimento DATE
);

-- Tabela Paciente
CREATE TABLE Paciente (
    cpf VARCHAR(11),
    peso DECIMAL(5,2),
    altura DECIMAL(4,2),
    plano_de_saude VARCHAR(14),
    PRIMARY KEY (cpf),
    FOREIGN KEY (cpf) REFERENCES Pessoa(cpf) ON DELETE CASCADE,
    FOREIGN KEY (plano_de_saude) REFERENCES Plano_de_saude(cnpj) ON DELETE RESTRICT
);

-- Tabela Funcionário
CREATE TABLE Funcionario (
    cpf VARCHAR(11),
    salario DECIMAL(10,2),
    escala VARCHAR(50),
    matricula VARCHAR(20),
    data_de_admissao DATE,
    PRIMARY KEY (cpf),
    FOREIGN KEY (cpf) REFERENCES Pessoa(cpf) ON DELETE CASCADE
);

-- Tabela Contato_de_emergencia
CREATE TABLE Contato_de_emergencia (
    cpf_paciente VARCHAR(11),
    telefone VARCHAR(20),
    nome VARCHAR(100),
    tipo_de_relacao VARCHAR(50),
    PRIMARY KEY (cpf_paciente, telefone),
    FOREIGN KEY (cpf_paciente) REFERENCES Paciente(cpf) ON DELETE CASCADE
);

-- Tabela Doenças_crônicas
CREATE TABLE Doencas_cronicas (
    cid_11 VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100)
);

-- Tabela Paciente_tem_doencas_cronicas
CREATE TABLE Paciente_tem_doencas_cronicas (
    cpf_paciente VARCHAR(11),
    cid_11 VARCHAR(10),
    PRIMARY KEY (cpf_paciente, cid_11),
    FOREIGN KEY (cpf_paciente) REFERENCES Paciente(cpf) ON DELETE CASCADE,
    FOREIGN KEY (cid_11) REFERENCES Doencas_cronicas(cid_11) ON DELETE RESTRICT
);

-- Tabela Alergia
CREATE TABLE Alergia (
    alergeno VARCHAR(100) PRIMARY KEY,
    tipo VARCHAR(50)
);

-- Tabela Paciente_tem_alergia
CREATE TABLE Paciente_tem_alergia (
    cpf_paciente VARCHAR(11),
    alergeno VARCHAR(100),
    PRIMARY KEY (cpf_paciente, alergeno),
    FOREIGN KEY (cpf_paciente) REFERENCES Paciente(cpf) ON DELETE CASCADE,
    FOREIGN KEY (alergeno) REFERENCES Alergia(alergeno) ON DELETE RESTRICT
);

-- Tabela Médico
CREATE TABLE Medico (
    cpf VARCHAR(11),
    crm VARCHAR(20),
    PRIMARY KEY (cpf),
    FOREIGN KEY (cpf) REFERENCES Funcionario(cpf) ON DELETE CASCADE
);

-- Tabela Especialidade
CREATE TABLE Especialidade (
    nome VARCHAR(100) PRIMARY KEY,
    descricao TEXT
);

-- Tabela Medico_tem_especialidade
CREATE TABLE Medico_tem_especialidade (
    cpf VARCHAR(11),
    nome_especialidade VARCHAR(100),
    PRIMARY KEY (cpf, nome_especialidade),
    FOREIGN KEY (cpf) REFERENCES Medico(cpf) ON DELETE CASCADE,
    FOREIGN KEY (nome_especialidade) REFERENCES Especialidade(nome) ON DELETE RESTRICT
);

-- Tabela Secretária
CREATE TABLE Secretaria (
    cpf VARCHAR(11),
    numero_ramal VARCHAR(20),
    PRIMARY KEY (cpf),
    FOREIGN KEY (cpf) REFERENCES Funcionario(cpf) ON DELETE CASCADE
);

-- Tabela Remédio
CREATE TABLE Remedio (
    ium VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(100),
    farmaco_por_dose VARCHAR(50),
    laboratorio VARCHAR(100),
    bula TEXT
);

-- Tabela Paciente_utiliza_remedio
CREATE TABLE Paciente_utiliza_remedio (
    ium VARCHAR(20),
    cpf VARCHAR(11),
    dose DECIMAL(5,2),
    PRIMARY KEY (ium, cpf),
    FOREIGN KEY (ium) REFERENCES Remedio(ium) ON DELETE RESTRICT,
    FOREIGN KEY (cpf) REFERENCES Paciente(cpf) ON DELETE CASCADE
);

-- Tabela Consulta
CREATE TABLE Consulta (
    cpf_paciente VARCHAR(11),
    cpf_medico VARCHAR(11),
    data DATE,
    hora TIME,
    valor DECIMAL(10,2),
    sala VARCHAR(20),
    retorno BOOLEAN,
    cpf_secretaria VARCHAR(11),
    PRIMARY KEY (cpf_paciente, cpf_medico, data, hora),
    FOREIGN KEY (cpf_paciente) REFERENCES Paciente(cpf) ON DELETE RESTRICT,
    FOREIGN KEY (cpf_medico) REFERENCES Medico(cpf) ON DELETE RESTRICT,
    FOREIGN KEY (cpf_secretaria) REFERENCES Secretaria(cpf) ON DELETE RESTRICT
);

-- Tabela Receita
CREATE TABLE Receita (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cpf_paciente VARCHAR(11),
    cpf_medico VARCHAR(11),
    data DATE,
    hora TIME,
    data_de_validade DATE,
    instrucao TEXT,
    data_emissao DATE,
    FOREIGN KEY (cpf_paciente, cpf_medico, data, hora) REFERENCES Consulta(cpf_paciente, cpf_medico, data, hora) ON DELETE CASCADE
);

-- Tabela Receita_contém_remédios
CREATE TABLE Receita_contem_remedios (
    ium VARCHAR(20),
    id INT,
    dose DECIMAL(5,2),
    PRIMARY KEY (ium, id),
    FOREIGN KEY (ium) REFERENCES Remedio(ium) ON DELETE RESTRICT,
    FOREIGN KEY (id) REFERENCES Receita(id) ON DELETE CASCADE
);

-- Tabela Tipo_de_exame
CREATE TABLE Tipo_de_exame (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT,
    nome VARCHAR(100)
);

-- Tabela Exame
CREATE TABLE Exame (
    id INT PRIMARY KEY,
    cpf_paciente VARCHAR(11),
    cpf_medico VARCHAR(11),
    data_consulta DATE,
    hora_consulta TIME,
    resultado TEXT,
    id_tipo_exame INT,
    FOREIGN KEY (cpf_paciente, cpf_medico, data_consulta, hora_consulta) REFERENCES Consulta(cpf_paciente, cpf_medico, data, hora) ON DELETE RESTRICT,
    FOREIGN KEY (id_tipo_exame) REFERENCES Tipo_de_exame(id) ON DELETE RESTRICT
);

-- Tabela Diagnóstico
CREATE TABLE Diagnostico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cpf_paciente VARCHAR(11),
    cpf_medico VARCHAR(11),
    data_consulta DATE,
    hora_consulta TIME,
    descricao TEXT,
    FOREIGN KEY (cpf_paciente, cpf_medico, data_consulta, hora_consulta) REFERENCES Consulta(cpf_paciente, cpf_medico, data, hora) ON DELETE RESTRICT
);

-- Tabela Tipo_de_procedimento
CREATE TABLE Tipo_de_procedimento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT,
    nome VARCHAR(100)
);

-- Tabela Procedimento
CREATE TABLE Procedimento (
    id INT PRIMARY KEY,
    cpf_paciente VARCHAR(11),
    cpf_medico VARCHAR(11),
    data_consulta DATE,
    hora_consulta TIME,
    data_procedimento DATE,
    hora_procedimento TIME,
    cpf_secretaria VARCHAR(11),
    id_tipo_procedimento INT,
    FOREIGN KEY (cpf_paciente, cpf_medico, data_consulta, hora_consulta) REFERENCES Consulta(cpf_paciente, cpf_medico, data, hora) ON DELETE RESTRICT,
    FOREIGN KEY (cpf_secretaria) REFERENCES Secretaria(cpf) ON DELETE RESTRICT,
    FOREIGN KEY (id_tipo_procedimento) REFERENCES Tipo_de_procedimento(id) ON DELETE RESTRICT
);
