-- Inserções para a tabela Plano_de_saude
INSERT INTO Plano_de_saude (cnpj, nome, email, endereco) VALUES 
('12345678000195', 'Plano Teste 1', 'contato1@planoteste.com', 'Rua Teste, 123'),
('12345678000196', 'Plano Teste 2', 'contato2@planoteste.com', 'Rua Teste, 124'),
('12345678000197', 'Plano Teste 3', 'contato3@planoteste.com', 'Rua Teste, 125'),
('12345678000198', 'Plano Teste 4', 'contato4@planoteste.com', 'Rua Teste, 126'),
('12345678000199', 'Plano Teste 5', 'contato5@planoteste.com', 'Rua Teste, 127'),
('12345678000200', 'Plano Teste 6', 'contato6@planoteste.com', 'Rua Teste, 128'),
('12345678000201', 'Plano Teste 7', 'contato7@planoteste.com', 'Rua Teste, 129'),
('12345678000202', 'Plano Teste 8', 'contato8@planoteste.com', 'Rua Teste, 130'),
('12345678000203', 'Plano Teste 9', 'contato9@planoteste.com', 'Rua Teste, 131'),
('12345678000204', 'Plano Teste 10', 'contato10@planoteste.com', 'Rua Teste, 132'),
('12345678000205', 'Plano Teste 11', 'contato11@planoteste.com', 'Rua Teste, 133'),
('12345678000206', 'Plano Teste 12', 'contato12@planoteste.com', 'Rua Teste, 134'),
('12345678000207', 'Plano Teste 13', 'contato13@planoteste.com', 'Rua Teste, 135'),
('12345678000208', 'Plano Teste 14', 'contato14@planoteste.com', 'Rua Teste, 136'),
('12345678000209', 'Plano Teste 15', 'contato15@planoteste.com', 'Rua Teste, 137');

-- Inserções para a tabela Pessoa
INSERT INTO Pessoa (cpf, nome, telefone, endereco, email, tipo_sanguineo, data_de_nascimento) VALUES 
('12345678901', 'João da Silva', '11987654321', 'Rua Exemplo, 456', 'joao@exemplo.com', 'O+', '1990-01-01'),
('12345678902', 'Maria Oliveira', '11987654322', 'Rua Exemplo, 457', 'maria@exemplo.com', 'A-', '1985-05-15'),
('12345678903', 'Carlos Pereira', '11987654323', 'Rua Exemplo, 458', 'carlos@exemplo.com', 'B+', '1978-12-25'),
('12345678904', 'Ana Santos', '11987654324', 'Rua Exemplo, 459', 'ana@exemplo.com', 'AB+', '1992-07-30'),
('12345678905', 'Lucas Costa', '11987654325', 'Rua Exemplo, 460', 'lucas@exemplo.com', 'O-', '2000-11-11'),
('12345678906', 'Paulo Costa', '11987654326', 'Rua Exemplo, 461', 'paulo@exemplo.com', 'A+', '1995-04-02'),
('12345678907', 'Mariana Lima', '11987654327', 'Rua Exemplo, 462', 'mariana@exemplo.com', 'O-', '1988-08-22'),
('12345678908', 'Rafael Souza', '11987654328', 'Rua Exemplo, 463', 'rafael@exemplo.com', 'AB-', '1993-02-17'),
('12345678909', 'Lucia Mendes', '11987654329', 'Rua Exemplo, 464', 'lucia@exemplo.com', 'B-', '1999-10-30'),
('12345678910', 'Gustavo Araujo', '11987654330', 'Rua Exemplo, 465', 'gustavo@exemplo.com', 'O+', '1990-12-12'),
('12345678911', 'Fernanda Ribeiro', '11987654331', 'Rua Exemplo, 466', 'fernanda@exemplo.com', 'A-', '1987-11-11'),
('12345678912', 'Pedro Matos', '11987654332', 'Rua Exemplo, 467', 'pedro@exemplo.com', 'B+', '1975-06-05'),
('12345678913', 'Camila Barbosa', '11987654333', 'Rua Exemplo, 468', 'camila@exemplo.com', 'AB+', '1982-03-23'),
('12345678914', 'Bruno Nogueira', '11987654334', 'Rua Exemplo, 469', 'bruno@exemplo.com', 'A+', '1994-07-07'),
('12345678915', 'Renata Farias', '11987654335', 'Rua Exemplo, 470', 'renata@exemplo.com', 'O-', '1986-09-14');

-- Inserções para a tabela Paciente
INSERT INTO Paciente (cpf, peso, altura, plano_de_saude) VALUES 
('12345678901', 70.5, 1.80, '12345678000195'),
('12345678902', 65.0, 1.70, '12345678000196'),
('12345678903', 80.0, 1.85, '12345678000197'),
('12345678904', 55.0, 1.65, '12345678000198'),
('12345678905', 90.0, 1.90, '12345678000199'),
('12345678906', 72.0, 1.82, '12345678000200'),
('12345678907', 60.5, 1.60, '12345678000201'),
('12345678908', 77.8, 1.78, '12345678000202'),
('12345678909', 65.0, 1.70, '12345678000203'),
('12345678910', 90.5, 1.90, '12345678000204'),
('12345678911', 55.0, 1.65, '12345678000205'),
('12345678912', 85.0, 1.87, '12345678000206'),
('12345678913', 70.0, 1.75, '12345678000207'),
('12345678914', 80.0, 1.82, '12345678000208'),
('12345678915', 68.0, 1.68, '12345678000209');

-- Inserções para a tabela Funcionario
INSERT INTO Funcionario (cpf, salario, escala, matricula, data_de_admissao) VALUES 
('12345678901', 3000.00, 'Seg-Sex 09:00-17:00', 'F001', '2020-01-01'),
('12345678902', 3200.00, 'Seg-Sex 08:00-16:00', 'F002', '2019-06-15'),
('12345678903', 3100.00, 'Seg-Sex 10:00-18:00', 'F003', '2021-03-20'),
('12345678904', 3400.00, 'Seg-Sex 07:00-15:00', 'F004', '2018-11-10'),
('12345678905', 3300.00, 'Seg-Sex 09:00-17:00', 'F005', '2022-02-28'),
('12345678906', 3500.00, 'Seg-Sex 09:00-17:00', 'F006', '2018-03-01'),
('12345678907', 3600.00, 'Seg-Sex 08:00-16:00', 'F007', '2017-10-05'),
('12345678908', 3700.00, 'Seg-Sex 10:00-18:00', 'F008', '2019-11-30'),
('12345678909', 3800.00, 'Seg-Sex 07:00-15:00', 'F009', '2020-06-18'),
('12345678910', 3900.00, 'Seg-Sex 09:00-17:00', 'F010', '2016-08-21'),
('12345678911', 4000.00, 'Seg-Sex 08:00-16:00', 'F011', '2015-09-14'),
('12345678912', 4100.00, 'Seg-Sex 07:00-15:00', 'F012', '2014-12-02'),
('12345678913', 4200.00, 'Seg-Sex 09:00-17:00', 'F013', '2021-01-19'),
('12345678914', 4300.00, 'Seg-Sex 08:00-16:00', 'F014', '2022-07-30'),
('12345678915', 4400.00, 'Seg-Sex 07:00-15:00', 'F015', '2023-03-12');

-- Inserções para a tabela Contato_de_emergencia
INSERT INTO Contato_de_emergencia (cpf_paciente, telefone, nome, tipo_de_relacao) VALUES 
('12345678901', '11987654326', 'Pedro Silva', 'Amigo'),
('12345678902', '11987654327', 'Julia Oliveira', 'Parente'),
('12345678903', '11987654328', 'Rafael Pereira', 'Colega'),
('12345678904', '11987654329', 'Fernanda Santos', 'Vizinha'),
('12345678905', '11987654330', 'Roberta Costa', 'Amiga');

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
('12345678901', 'I10'),
('12345678902', 'E11'),
('12345678903', 'J45'),
('12345678904', 'M15'),
('12345678905', 'F41'),
('12345678906', 'N18'), 
('12345678907', 'E66'), 
('12345678908', 'I25'), 
('12345678909', 'J44'), 
('12345678910', 'E03'), 
('12345678911', 'I10'), 
('12345678912', 'E11'), 
('12345678913', 'J45'), 
('12345678914', 'M15'), 
('12345678915', 'F41'); 

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
('12345678901', 'Amendoim'),
('12345678902', 'Pólen'),
('12345678903', 'Lactose'),
('12345678904', 'Ácaro'),
('12345678905', 'Frutos do Mar'),
('12345678906', 'Amendoim'),
('12345678907', 'Lactose'),
('12345678908', 'Pólen'),
('12345678909', 'Glúten'),
('12345678910', 'Frutos do Mar'),
('12345678911', 'Penicilina'),
('12345678912', 'Aspirina'),
('12345678913', 'Corante Alimentar'),
('12345678914', 'Ovos'),
('12345678915', 'Nozes');

-- Inserções para a tabela Medico
INSERT INTO Medico (cpf, crm) VALUES 
('12345678901', 'CRM12345'),
('12345678902', 'CRM12346'),
('12345678903', 'CRM12347'),
('12345678904', 'CRM12348'),
('12345678905', 'CRM12349');

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
('12345678901', 'Cardiologia'),
('12345678902', 'Pediatria'),
('12345678903', 'Neurologia'),
('12345678904', 'Dermatologia'),
('12345678905', 'Ortopedia');

-- Inserções para a tabela Secretaria
INSERT INTO Secretaria (cpf, numero_ramal) VALUES 
('12345678901', '1234'),
('12345678902', '1235'),
('12345678903', '1236'),
('12345678904', '1237'),
('12345678905', '1238');

-- Inserções para a tabela Remedio
INSERT INTO Remedio (ium, nome, farmaco_por_dose, laboratorio, bula) VALUES 
('REM001', 'Paracetamol', '500mg', 'Lab A', 'Bula do Paracetamol'),
('REM002', 'Ibuprofeno', '400mg', 'Lab B', 'Bula do Ibuprofeno'),
('REM003', 'Amoxicilina', '250mg', 'Lab C', 'Bula da Amoxicilina'),
('REM004', 'Dipirona', '1g', 'Lab D', 'Bula da Dipirona'),
('REM005', 'Omeprazol', '20mg', 'Lab E', 'Bula do Omeprazol');

-- Inserções para a tabela Paciente_utiliza_remedio
INSERT INTO Paciente_utiliza_remedio (ium, cpf, dose) VALUES 
('REM001', '12345678901', 1.0),
('REM002', '12345678902', 2.0),
('REM003', '12345678903', 1.0),
('REM004', '12345678904', 0.5),
('REM005', '12345678905', 1.0);

-- Inserções para a tabela Consulta
INSERT INTO Consulta (cpf_paciente, cpf_medico, data, hora, valor, sala, retorno, cpf_secretaria) VALUES 
('12345678901', '12345678901', '2024-01-15', '09:00:00', 150.00, 'Sala 1', FALSE, '12345678901'),
('12345678902', '12345678902', '2024-02-20', '10:00:00', 200.00, 'Sala 2', TRUE, '12345678902'),
('12345678903', '12345678903', '2024-03-10', '11:00:00', 250.00, 'Sala 3', FALSE, '12345678903'),
('12345678904', '12345678904', '2024-04-05', '14:00:00', 180.00, 'Sala 4', TRUE, '12345678904'),
('12345678905', '12345678905', '2024-05-25', '15:00:00', 220.00, 'Sala 5', FALSE, '12345678905');

-- Inserções para a tabela Receita
INSERT INTO Receita (cpf_paciente, cpf_medico, data, hora, data_de_validade, instrucao, data_emissao) VALUES 
('12345678901', '12345678901', '2024-01-15', '09:00:00', '2024-07-15', 'Tomar um comprimido a cada 8 horas', '2024-01-15'),
('12345678902', '12345678902', '2024-02-20', '10:00:00', '2024-08-20', 'Tomar dois comprimidos a cada 12 horas', '2024-02-20'),
('12345678903', '12345678903', '2024-03-10', '11:00:00', '2024-09-10', 'Tomar um comprimido antes das refeições', '2024-03-10'),
('12345678904', '12345678904', '2024-04-05', '14:00:00', '2024-10-05', 'Ingerir uma dose diariamente', '2024-04-05'),
('12345678905', '12345678905', '2024-05-25', '15:00:00', '2024-11-25', 'Tomar dois comprimidos por dia', '2024-05-25');

-- Inserções para a tabela Receita_contem_remedios
INSERT INTO Receita_contem_remedios (ium, id, dose) VALUES 
('REM001', 1, 1.0),
('REM002', 2, 2.0),
('REM003', 3, 1.0),
('REM004', 4, 0.5),
('REM005', 5, 1.0);

-- Inserções para a tabela Tipo_de_exame
INSERT INTO Tipo_de_exame (descricao, nome) VALUES 
('Exame de sangue para verificar níveis de colesterol', 'Hemograma'),
('Exame para detectar presença de vírus', 'PCR'),
('Exame de imagem para verificar fraturas', 'Radiografia'),
('Exame para medir a função pulmonar', 'Espirometria'),
('Exame para verificar a densidade óssea', 'Densitometria Óssea');

-- Inserções para a tabela Exame
INSERT INTO Exame (id, cpf_paciente, cpf_medico, data_consulta, hora_consulta, resultado, id_tipo_exame) VALUES 
(1, '12345678901', '12345678901', '2024-01-15', '09:00:00', 'Normal', 1),
(2, '12345678902', '12345678902', '2024-02-20', '10:00:00', 'Alterado', 2),
(3, '12345678903', '12345678903', '2024-03-10', '11:00:00', 'Fratura detectada', 3),
(4, '12345678904', '12345678904', '2024-04-05', '14:00:00', 'Função pulmonar reduzida', 4),
(5, '12345678905', '12345678905', '2024-05-25', '15:00:00', 'Osteoporose leve', 5);

-- Inserções para a tabela Diagnostico
INSERT INTO Diagnostico (cpf_paciente, cpf_medico, data_consulta, hora_consulta, descricao) VALUES 
('12345678901', '12345678901', '2024-01-15', '09:00:00', 'Sem alterações significativas'),
('12345678902', '12345678902', '2024-02-20', '10:00:00', 'Presença de vírus detectada'),
('12345678903', '12345678903', '2024-03-10', '11:00:00', 'Fratura no braço direito'),
('12345678904', '12345678904', '2024-04-05', '14:00:00', 'Função pulmonar reduzida'),
('12345678905', '12345678905', '2024-05-25', '15:00:00', 'Osteoporose leve');

-- Inserções para a tabela Tipo_de_procedimento
INSERT INTO Tipo_de_procedimento (descricao, nome) VALUES 
('Procedimento para remoção de apêndice', 'Apendicectomia'),
('Procedimento para correção de fratura', 'Fixação de Fratura'),
('Procedimento para cirurgia de catarata', 'Cirurgia de Catarata'),
('Procedimento para realização de biopsia', 'Biópsia'),
('Procedimento para substituição de válvula cardíaca', 'Troca de Válvula Cardíaca');

-- Inserções para a tabela Procedimento
INSERT INTO Procedimento (id, cpf_paciente, cpf_medico, data_consulta, hora_consulta, data_procedimento, hora_procedimento, cpf_secretaria, id_tipo_procedimento) VALUES 
(1, '12345678901', '12345678901', '2024-01-15', '09:00:00', '2024-02-01', '10:00:00', '12345678901', 1),
(2, '12345678902', '12345678902', '2024-02-20', '10:00:00', '2024-03-15', '11:00:00', '12345678902', 2),
(3, '12345678903', '12345678903', '2024-03-10', '11:00:00', '2024-04-20', '12:00:00', '12345678903', 3),
(4, '12345678904', '12345678904', '2024-04-05', '14:00:00', '2024-05-10', '15:00:00', '12345678904', 4),
(5, '12345678905', '12345678905', '2024-05-25', '15:00:00', '2024-06-30', '16:00:00', '12345678905', 5);
