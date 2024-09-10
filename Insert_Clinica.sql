-- Inserções para a tabela Plano_de_saude
INSERT INTO Plano_de_saude (cnpj, nome, email, endereco) VALUES 
('52724334000101', 'Bio Saúde', 'biosaude@gmail.com', 'Rua Brasil, 263');

-- Inserções para a tabela Pessoa
INSERT INTO Pessoa (cpf, nome, telefone, endereco, email, tipo_sanguineo, data_de_nascimento) VALUES 
('81151053090', 'João da Silva', '31985623445', 'Rua Argentina, 456', 'joaosilva@gmail.com', 'O+', '1990-01-05'),
('12985913098', 'Humberto Almeida Matos ', '31987658596', 'Rua Dinamarca, 367', 'humbertoalmeidam@gmail.com', 'A-', '1984-03-08'),
('64333903076', 'Gabriela Castro Lima', '31963258741', 'Rua Russia, 124', 'doutoraGabrielaLima@gmail.com', 'O-', '1986-07-09'),
('49575304080', 'Rafaela Souza Ribeiro ', '31989526421', 'Rua Peru, 652', 'rafaelasouza@gmail.com', 'B+', '1998-02-07');

-- Inserções para a tabela Paciente
INSERT INTO Paciente (cpf, peso, altura, plano_de_saude) VALUES 
('81151053090', 70.5, 1.80, '52724334000101');

-- Inserções para a tabela Funcionario
INSERT INTO Funcionario (cpf, salario, escala, matricula, data_de_admissao) VALUES 
('12985913098', 3000.00, 'Seg-Sex 09:00-17:00', 'F001', '2020-04-06'),
('64333903076', 8000.00, 'Seg-Sex 11:00-17:00', 'F002', '2021-03-05'),
('49575304080', 1800.00, 'Seg-Sex 11:00-17:00', 'F003', '2023-06-08');

-- Inserções para a tabela Contato_de_emergencia
INSERT INTO Contato_de_emergencia (cpf_paciente, telefone, nome, tipo_de_relacao) VALUES 
('81151053090', '11987654326', 'Pedro Silva', 'Amigo');

-- Inserções para a tabela Doencas_cronicas
INSERT INTO Doencas_cronicas (cid_11, nome) VALUES 
('I10', 'Hipertensão Arterial'),
('E11', 'Diabetes Tipo 2'),
('J45', 'Asma'),
('M15', 'Artrose'),
('F41', 'Transtorno de Ansiedade'),
('N18', 'Doença Renal Crônica'),
('E66', 'Obesidade'),
('I25', 'Doença Arterial Coronariana'),
('J44', 'Doença Pulmonar Obstrutiva Crônica'),
('E03', 'Hipotireoidismo');

-- Inserções para a tabela Paciente_tem_doencas_cronicas
INSERT INTO Paciente_tem_doencas_cronicas (cpf_paciente, cid_11) VALUES 
('81151053090', 'I10'); 

-- Inserções para a tabela Alergia
INSERT INTO Alergia (alergeno, tipo) VALUES 
('Amendoim', 'Alimento'),
('Pólen', 'Ambiental'),
('Lactose', 'Alimento'),
('Ácaro', 'Ambiental'),
('Frutos do Mar', 'Alimento'),
('Glúten', 'Alimento'),
('Penicilina', 'Medicamento'),
('Aspirina', 'Medicamento'),
('Corante Alimentar', 'Alimento'),
('Ovos', 'Alimento'),
('Nozes', 'Alimento');

-- Inserções para a tabela Paciente_tem_alergia
INSERT INTO Paciente_tem_alergia (cpf_paciente, alergeno) VALUES 
('81151053090', 'Amendoim');

-- Inserções para a tabela Medico
INSERT INTO Medico (cpf, crm) VALUES 
('64333903076', 'CRM12345');

-- Inserções para a tabela Especialidade
INSERT INTO Especialidade (nome, descricao) VALUES 
('Cardiologia', 'Especialidade que trata do coração e sistema cardiovascular'),
('Pediatria', 'Especialidade que trata da saúde de crianças'),
('Neurologia', 'Especialidade que trata do sistema nervoso'),
('Dermatologia', 'Especialidade que trata da pele e doenças de pele'),
('Ortopedia', 'Especialidade que trata dos ossos e articulações'),
('Endocrinologia', 'Especialidade que trata das glândulas endócrinas e hormônios'),
('Psiquiatria', 'Especialidade que trata de doenças mentais e emocionais'),
('Oftalmologia', 'Especialidade que trata dos olhos e da visão'),
('Ginecologia', 'Especialidade que trata da saúde da mulher e do sistema reprodutor feminino'),
('Reumatologia', 'Especialidade que trata das doenças autoimunes e reumáticas');

-- Inserções para a tabela Medico_tem_especialidade
INSERT INTO Medico_tem_especialidade (cpf, nome_especialidade) VALUES 
('64333903076', 'Cardiologia');

-- Inserções para a tabela Secretaria
INSERT INTO Secretaria (cpf, numero_ramal) VALUES 
('49575304080', '0001');

-- Inserções para a tabela Remedio
INSERT INTO Remedio (ium, nome, farmaco_por_dose, laboratorio, bula) VALUES 
('REM001', 'Paracetamol', '500mg', 'Lab A', 'Bula do Paracetamol'),
('REM002', 'Ibuprofeno', '400mg', 'Lab B', 'Bula do Ibuprofeno'),
('REM003', 'Amoxicilina', '250mg', 'Lab C', 'Bula da Amoxicilina'),
('REM004', 'Dipirona', '1g', 'Lab D', 'Bula da Dipirona'),
('REM005', 'Omeprazol', '20mg', 'Lab E', 'Bula do Omeprazol');

-- Inserções para a tabela Paciente_utiliza_remedio
INSERT INTO Paciente_utiliza_remedio (ium, cpf, dose) VALUES 
('REM001', '81151053090', 1.0);

-- Inserções para a tabela Consulta
INSERT INTO Consulta (cpf_paciente, cpf_medico, data, hora, valor, sala, retorno, cpf_secretaria) VALUES 
('81151053090', '64333903076', '2024-05-25', '15:00:00', 150.00, 'Sala 2', FALSE, '49575304080');

-- Inserções para a tabela Receita
INSERT INTO Receita (cpf_paciente, cpf_medico, data, hora, data_de_validade, instrucao, data_emissao) VALUES 
('81151053090', '64333903076', '2024-01-15', '09:00:00', '2024-07-15', 'Tomar um comprimido a cada 8 horas', '2024-01-15');

-- Inserções para a tabela Receita_contem_remedios
INSERT INTO Receita_contem_remedios (ium, id, dose) VALUES 
('REM001', 1, 1.0);

-- Inserções para a tabela Tipo_de_exame
INSERT INTO Tipo_de_exame (descricao, nome) VALUES 
('Exame de sangue para verificar níveis de colesterol', 'Hemograma');

-- Inserções para a tabela Exame
INSERT INTO Exame (id, cpf_paciente, cpf_medico, data_consulta, hora_consulta, resultado, id_tipo_exame) VALUES 
(1, '81151053090', '64333903076', '2024-01-15', '09:00:00', 'Normal', 1);

-- Inserções para a tabela Diagnostico
INSERT INTO Diagnostico (cpf_paciente, cpf_medico, data_consulta, hora_consulta, descricao) VALUES 
('81151053090', '64333903076', '2024-05-25', '15:00:00', 'Osteoporose leve');

-- Inserções para a tabela Tipo_de_procedimento
INSERT INTO Tipo_de_procedimento (descricao, nome) VALUES 
('Procedimento para substituição de válvula cardíaca', 'Troca de Válvula Cardíaca');

-- Inserções para a tabela Procedimento
INSERT INTO Procedimento (id, cpf_paciente, cpf_medico, data_consulta, hora_consulta, data_procedimento, hora_procedimento, cpf_secretaria, id_tipo_procedimento) VALUES 
(1, '81151053090', '64333903076', '2024-01-15', '09:00:00', '2024-02-01', '10:00:00', '49575304080', 1);