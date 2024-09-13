USE Clinica;

-- Inserção na tabela Plano_de_saude
INSERT INTO Plano_de_saude (cnpj, nome, email, endereco) VALUES 
('12345678901234', 'Saúde Premium', 'contato@saudepremium.com.br', 'Rua A, 123'),
('23456789012345', 'Bem Estar Saúde', 'atendimento@bemestar.com', 'Rua B, 456'),
('34567890123456', 'Viva Mais', 'suporte@vivamais.com', 'Avenida C, 789'),
('45678901234567', 'Saúde para Todos', 'info@saudetodos.com', 'Avenida D, 1011'),
('56789012345678', 'Vida Plena Saúde', 'contato@vidaplena.com', 'Rua E, 1213');

-- Inserção na tabela Pessoa
INSERT INTO Pessoa (cpf, nome, telefone, endereco, email, tipo_sanguineo, data_de_nascimento) VALUES 
('12345678901', 'João Silva', '11999998888', 'Rua X, 123', 'joao@teste.com', 'O+', '1980-05-15'),
('23456789012', 'Maria Santos', '21988887777', 'Avenida Y, 456', 'maria@teste.com', 'A-', '1975-03-10'),
('34567890123', 'Pedro Oliveira', '31977776666', 'Rua Z, 789', 'pedro@teste.com', 'B+', '1990-07-20'),
('45678901234', 'Ana Souza', '41966665555', 'Avenida W, 101', 'ana@teste.com', 'AB-', '1985-09-30'),
('56789012345', 'Lucas Pereira', '51955554444', 'Rua V, 1213', 'lucas@teste.com', 'O-', '1995-11-25');
('67890123456', 'Carla Mendes', '21933332222', 'Rua A, 222', 'carla@teste.com', 'B+', '1992-04-12'),
('78901234567', 'Paulo Ferreira', '31922221111', 'Avenida B, 333', 'paulo@teste.com', 'A+', '1988-12-08'),
('89012345678', 'Fernanda Lima', '41911110000', 'Rua C, 444', 'fernanda@teste.com', 'O+', '1999-02-21'),
('90123456789', 'Renato Alves', '51900009999', 'Avenida D, 555', 'renato@teste.com', 'AB+', '1978-07-19'),
('01234567890', 'Beatriz Gomes', '11988889999', 'Rua E, 666', 'beatriz@teste.com', 'O-', '1983-11-05');
('11111111111', 'Secretaria 1', '11911112222', 'Rua Nova 1', 'secretaria1@teste.com', 'O+', '1985-01-01'),
('22222222222', 'Secretaria 2', '11922223333', 'Rua Nova 2', 'secretaria2@teste.com', 'A-', '1986-02-02'),
('33333333333', 'Secretaria 3', '11933334444', 'Rua Nova 3', 'secretaria3@teste.com', 'B+', '1987-03-03'),
('44444444444', 'Secretaria 4', '11944445555', 'Rua Nova 4', 'secretaria4@teste.com', 'AB-', '1988-04-04'),
('55555555555', 'Secretaria 5', '11955556666', 'Rua Nova 5', 'secretaria5@teste.com', 'O-', '1989-05-05');

-- Inserção na tabela Paciente
INSERT INTO Paciente (cpf, peso, altura, plano_de_saude) VALUES 
('12345678901', 70.50, 1.75, '12345678901234'),
('23456789012', 60.30, 1.60, '23456789012345'),
('34567890123', 85.20, 1.80, '34567890123456'),
('45678901234', 55.00, 1.55, '45678901234567'),
('56789012345', 90.10, 1.90, '56789012345678');
('67890123456', 68.50, 1.70, '12345678901234'),
('78901234567', 75.00, 1.85, '23456789012345'),
('89012345678', 55.30, 1.60, '34567890123456'),
('90123456789', 82.40, 1.78, '45678901234567'),
('01234567890', 63.20, 1.65, '56789012345678');

-- Inserção na tabela Funcionario
INSERT INTO Funcionario (cpf, salario, escala, matricula, data_de_admissao) VALUES 
('12345678901', 3500.00, 'Seg a Sex', '001', '2015-01-10'),
('23456789012', 4200.00, 'Seg a Sab', '002', '2016-05-20'),
('34567890123', 3800.00, 'Seg a Sex', '003', '2017-09-15'),
('45678901234', 4500.00, 'Seg a Sex', '004', '2018-03-10'),
('56789012345', 4000.00, 'Seg a Sab', '005', '2019-07-25');
('11111111111', 3000.00, 'Seg a Sex', '006', '2020-01-10'),
('22222222222', 3200.00, 'Seg a Sab', '007', '2020-02-15'),
('33333333333', 3100.00, 'Seg a Sex', '008', '2020-03-20'),
('44444444444', 3300.00, 'Seg a Sab', '009', '2020-04-25'),
('55555555555', 3400.00, 'Seg a Sex', '010', '2020-05-30');

-- Inserção na tabela Contato_de_emergencia
INSERT INTO Contato_de_emergencia (cpf_paciente, telefone, nome, tipo_de_relacao) VALUES 
('12345678901', '11988887777', 'Carlos Silva', 'Pai'),
('23456789012', '21977776666', 'Fernanda Santos', 'Mãe'),
('34567890123', '31966665555', 'Paulo Oliveira', 'Irmão'),
('45678901234', '41955554444', 'Mariana Souza', 'Amiga'),
('56789012345', '51944443333', 'Roberto Pereira', 'Tio');
('67890123456', '21999998888', 'Laura Mendes', 'Irmã'),
('78901234567', '31988887777', 'Roberto Ferreira', 'Pai'),
('89012345678', '41977776666', 'Cláudia Lima', 'Mãe'),
('90123456789', '51966665555', 'Felipe Alves', 'Esposo'),
('01234567890', '11955554444', 'Julia Gomes', 'Amiga');

-- Inserção na tabela Doencas_cronicas
INSERT INTO Doencas_cronicas (cid_11, nome) VALUES 
('E11', 'Diabetes Tipo 2'),
('I10', 'Hipertensão'),
('J45', 'Asma'),
('E78', 'Hiperlipidemia'),
('N18', 'Doença Renal Crônica');

-- Inserção na tabela Paciente_tem_doencas_cronicas
INSERT INTO Paciente_tem_doencas_cronicas (cpf_paciente, cid_11) VALUES 
('12345678901', 'E11'),
('23456789012', 'I10'),
('34567890123', 'J45'),
('45678901234', 'E78'),
('56789012345', 'N18');
('67890123456', 'I10'),  -- Hipertensão
('78901234567', 'J45'),  -- Asma
('89012345678', 'E78'),  -- Hiperlipidemia
('90123456789', 'E11'),  -- Diabetes Tipo 2
('01234567890', 'N18');  -- Doença Renal Crônica

-- Inserção na tabela Alergia
INSERT INTO Alergia (alergeno, tipo) VALUES 
('Pólen', 'Respiratória'),
('Amendoim', 'Alimentar'),
('Penicilina', 'Medicamento'),
('Lactose', 'Alimentar'),
('Pelo de gato', 'Respiratória');

-- Inserção na tabela Paciente_tem_alergia
INSERT INTO Paciente_tem_alergia (cpf_paciente, alergeno) VALUES 
('12345678901', 'Pólen'),
('23456789012', 'Amendoim'),
('34567890123', 'Penicilina'),
('45678901234', 'Lactose'),
('56789012345', 'Pelo de gato');
('67890123456', 'Pólen'),
('78901234567', 'Penicilina'),
('89012345678', 'Lactose'),
('90123456789', 'Pelo de gato'),
('01234567890', 'Amendoim');

-- Inserção na tabela Medico
INSERT INTO Medico (cpf, crm) VALUES 
('12345678901', 'CRM12345'),
('23456789012', 'CRM23456'),
('34567890123', 'CRM34567'),
('45678901234', 'CRM45678'),
('56789012345', 'CRM56789');

-- Inserção na tabela Especialidade
INSERT INTO Especialidade (nome, descricao) VALUES 
('Cardiologia', 'Especialidade médica que cuida do coração'),
('Pediatria', 'Especialidade médica que cuida das crianças'),
('Endocrinologia', 'Cuida das glândulas e hormônios'),
('Ortopedia', 'Cuida dos ossos e articulações'),
('Dermatologia', 'Cuida da pele');

-- Inserção na tabela Medico_tem_especialidade
INSERT INTO Medico_tem_especialidade (cpf, nome_especialidade) VALUES 
('12345678901', 'Cardiologia'),
('23456789012', 'Pediatria'),
('34567890123', 'Endocrinologia'),
('45678901234', 'Ortopedia'),
('56789012345', 'Dermatologia');

-- Inserção na tabela Secretaria
INSERT INTO Secretaria (cpf, numero_ramal) VALUES 
('11111111111', '1110'),
('22222222222', '2220'),
('33333333333', '3330'),
('44444444444', '4440'),
('55555555555', '5550');

-- Inserção na tabela Remedio
INSERT INTO Remedio (ium, nome, farmaco_por_dose, laboratorio, bula) VALUES 
('IUM12345', 'Paracetamol', '500mg', 'MedPharma', 'http://bula.com/paracetamol'),
('IUM23456', 'Ibuprofeno', '200mg', 'BioPharma', 'http://bula.com/ibuprofeno'),
('IUM34567', 'Omeprazol', '20mg', 'PharmaPlus', 'http://bula.com/omeprazol'),
('IUM45678', 'Metformina', '850mg', 'HealthMed', 'http://bula.com/metformina'),
('IUM56789', 'Losartana', '50mg', 'GoodLab', 'http://bula.com/losartana');

-- Inserção na tabela Paciente_utiliza_remedio
INSERT INTO Paciente_utiliza_remedio (ium, cpf, dose) VALUES 
('IUM12345', '12345678901', 1.00),
('IUM23456', '23456789012', 2.00),
('IUM34567', '34567890123', 1.50),
('IUM45678', '45678901234', 0.75),
('IUM56789', '56789012345', 1.25);
('IUM12345', '67890123456', 500), -- Paracetamol
('IUM23456', '78901234567', 200), -- Ibuprofeno
('IUM34567', '89012345678', 100), -- Amoxicilina
('IUM45678', '90123456789', 500), -- Omeprazol
('IUM56789', '01234567890', 250); -- Loratadina

-- Inserção na tabela Consulta
INSERT INTO Consulta (cpf_paciente, cpf_medico, data, hora, valor, sala, retorno, cpf_secretaria) VALUES 
('12345678901', '12345678901', '2024-01-10', '10:00:00', 150.00, 'Sala 1', FALSE, '11111111111'),
('23456789012', '23456789012', '2024-01-11', '11:00:00', 200.00, 'Sala 2', TRUE, '22222222222'),
('34567890123', '34567890123', '2024-01-12', '09:30:00', 250.00, 'Sala 3', FALSE, '33333333333'),
('45678901234', '45678901234', '2024-01-13', '08:45:00', 180.00, 'Sala 4', TRUE, '44444444444'),
('56789012345', '56789012345', '2024-01-14', '14:15:00', 220.00, 'Sala 5', FALSE, '55555555555');
('67890123456', '12345678901', '2024-09-13', '09:00:00', 200.00, 'Sala 1', FALSE, '11111111111'),
('78901234567', '23456789012', '2024-09-13', '10:00:00', 250.00, 'Sala 2', TRUE, '22222222222'),
('89012345678', '34567890123', '2024-09-13', '11:00:00', 300.00, 'Sala 3', FALSE, '33333333333'),
('90123456789', '45678901234', '2024-09-13', '12:00:00', 220.00, 'Sala 4', TRUE, '44444444444'),
('01234567890', '56789012345', '2024-09-13', '13:00:00', 240.00, 'Sala 5', FALSE, '55555555555');

-- Inserção na tabela Receita
INSERT INTO Receita (id, cpf_paciente, cpf_medico, data_consulta, hora_consulta, data_de_validade, instrucao, data_emissao) VALUES 
(1, '12345678901', '12345678901', '2024-01-10', '10:00:00', '2024-06-10', 'Tomar após o café da manhã', '2024-01-10'),
(2, '23456789012', '23456789012', '2024-01-11', '11:00:00', '2024-06-11', 'Tomar à noite', '2024-01-11'),
(3, '34567890123', '34567890123', '2024-01-12', '09:30:00', '2024-06-12', 'Usar com moderação', '2024-01-12'),
(4, '45678901234', '45678901234', '2024-01-13', '08:45:00', '2024-06-13', 'Tomar com água', '2024-01-13'),
(5, '56789012345', '56789012345', '2024-01-14', '14:15:00', '2024-06-14', 'Não exceder a dose', '2024-01-14');
(6, '67890123456', '12345678901', '2024-09-13', '09:00:00', '2025-03-13', 'Tomar após as refeições', '2024-09-13'),
(7, '78901234567', '23456789012', '2024-09-13', '10:00:00', '2025-03-13', 'Tomar antes de dormir', '2024-09-13'),
(8, '89012345678', '34567890123', '2024-09-13', '11:00:00', '2025-03-13', 'Usar durante 7 dias', '2024-09-13'),
(9, '90123456789', '45678901234', '2024-09-13', '12:00:00', '2025-03-13', 'Tomar em jejum', '2024-09-13'),
(10, '01234567890', '56789012345', '2024-09-13', '13:00:00', '2025-03-13', 'Aplicar na pele 2 vezes ao dia', '2024-09-13');

-- Inserção na tabela Receita_contem_remedios
INSERT INTO Receita_contem_remedios (ium, id_receita, cpf_paciente, cpf_medico, data_consulta, hora_consulta, dose) VALUES 
('IUM12345', 1, '12345678901', '12345678901', '2024-01-10', '10:00:00', 1.00),
('IUM23456', 2, '23456789012', '23456789012', '2024-01-11', '11:00:00', 2.00),
('IUM34567', 3, '34567890123', '34567890123', '2024-01-12', '09:30:00', 1.50),
('IUM45678', 4, '45678901234', '45678901234', '2024-01-13', '08:45:00', 0.75),
('IUM56789', 5, '56789012345', '56789012345', '2024-01-14', '14:15:00', 1.25);

-- Inserção na tabela Tipo_de_exame
INSERT INTO Tipo_de_exame (descricao, nome) VALUES 
('Exame para medir os níveis de colesterol no sangue', 'Colesterol Total'),
('Exame para detectar diabetes', 'Glicemia em Jejum'),
('Exame para medir a função renal', 'Creatinina'),
('Exame para avaliar a saúde do fígado', 'TGO/TGP'),
('Exame para avaliação óssea', 'Densitometria Óssea');

-- Inserção na tabela Exame
INSERT INTO Exame (id, cpf_paciente, cpf_medico, data_consulta, hora_consulta, resultado, id_tipo_exame) VALUES 
(1, '12345678901', '12345678901', '2024-01-10', '10:00:00', '200 mg/dL', 1),
(2, '23456789012', '23456789012', '2024-01-11', '11:00:00', '100 mg/dL', 2),
(3, '34567890123', '34567890123', '2024-01-12', '09:30:00', '1.0 mg/dL', 3),
(4, '45678901234', '45678901234', '2024-01-13', '08:45:00', '35 U/L', 4),
(5, '56789012345', '56789012345', '2024-01-14', '14:15:00', 'Normal', 5);
(6, '67890123456', '12345678901', '2024-09-13', '09:00:00', 'Colesterol dentro do normal', 1), -- Exame: Colesterol Total
(7, '78901234567', '23456789012', '2024-09-13', '10:00:00', 'Glicemia elevada', 2), -- Exame: Glicemia em Jejum
(8, '89012345678', '34567890123', '2024-09-13', '11:00:00', 'Creatinina normal', 3), -- Exame: Creatinina
(9, '90123456789', '45678901234', '2024-09-13', '12:00:00', 'TGO/TGP normal', 4), -- Exame: TGO/TGP
(10, '01234567890', '56789012345', '2024-09-13', '13:00:00', 'Densitometria normal', 5); -- Exame: Densitometria Óssea

-- Inserção na tabela Diagnostico
INSERT INTO Diagnostico (id, cpf_paciente, cpf_medico, data_consulta, hora_consulta, descricao) VALUES 
(1, '12345678901', '12345678901', '2024-01-10', '10:00:00', 'Paciente apresenta sinais de hipertensão.'),
(2, '23456789012', '23456789012', '2024-01-11', '11:00:00', 'Paciente com glicemia alta.'),
(3, '34567890123', '34567890123', '2024-01-12', '09:30:00', 'Paciente com função renal normal.'),
(4, '45678901234', '45678901234', '2024-01-13', '08:45:00', 'Paciente com hepatite.'),
(5, '56789012345', '56789012345', '2024-01-14', '14:15:00', 'Paciente saudável.');
(6, '67890123456', '12345678901', '2024-09-13', '09:00:00', 'Paciente apresenta níveis normais de colesterol.'),
(7, '78901234567', '23456789012', '2024-09-13', '10:00:00', 'Paciente com glicemia alta, indicativo de diabetes.'),
(8, '89012345678', '34567890123', '2024-09-13', '11:00:00', 'Função renal normal detectada.'),
(9, '90123456789', '45678901234', '2024-09-13', '12:00:00', 'Paciente apresenta resultados normais no exame hepático.'),
(10, '01234567890', '56789012345', '2024-09-13', '13:00:00', 'Densidade óssea normal, sem sinais de osteoporose.');

-- Inserção na tabela Tipo_de_procedimento
INSERT INTO Tipo_de_procedimento (descricao, nome) VALUES 
('Procedimento de retirada de amígdalas', 'Amigdalectomia'),
('Exame de imagem para avaliar o cérebro', 'Ressonância Magnética'),
('Cirurgia para retirada do apêndice', 'Apendicectomia'),
('Procedimento para colocar um marca-passo', 'Implante de Marca-passo'),
('Exame para avaliar as artérias do coração', 'Cateterismo Cardíaco');

-- Inserção na tabela Procedimento
INSERT INTO Procedimento (id, cpf_paciente, cpf_medico, data_consulta, hora_consulta, data_procedimento, hora_procedimento, cpf_secretaria, id_tipo_procedimento) VALUES 
(1, '12345678901', '12345678901', '2024-01-10', '10:00:00', '2024-02-01', '10:30:00', '11111111111', 1),
(2, '23456789012', '23456789012', '2024-01-11', '11:00:00', '2024-02-02', '11:30:00', '22222222222', 2),
(3, '34567890123', '34567890123', '2024-01-12', '09:30:00', '2024-02-03', '09:00:00', '33333333333', 3),
(4, '45678901234', '45678901234', '2024-01-13', '08:45:00', '2024-02-04', '08:15:00', '44444444444', 4),
(5, '56789012345', '56789012345', '2024-01-14', '14:15:00', '2024-02-05', '14:45:00', '55555555555', 5);
(6, '67890123456', '12345678901', '2024-09-13', '09:00:00', '2024-09-20', '09:30:00', '11111111111', 1), -- Procedimento: Amigdalectomia
(7, '78901234567', '23456789012', '2024-09-13', '10:00:00', '2024-09-21', '10:30:00', '22222222222', 2), -- Procedimento: Ressonância Magnética
(8, '89012345678', '34567890123', '2024-09-13', '11:00:00', '2024-09-22', '11:30:00', '33333333333', 3), -- Procedimento: Apendicectomia
(9, '90123456789', '45678901234', '2024-09-13', '12:00:00', '2024-09-23', '12:00:00', '44444444444', 4), -- Procedimento: Implante de Marca-passo
(10, '01234567890', '56789012345', '2024-09-13', '13:00:00', '2024-09-24', '13:00:00', '55555555555', 5); -- Procedimento: Cateterismo Cardíaco