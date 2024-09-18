from tabulate import tabulate

def list_all_pessoas(database_connection, table):
    query = f"SELECT * FROM Pessoa JOIN {table} on {table}.cpf=Pessoa.cpf"
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(query)
    results = cursor.fetchall()
    cursor.close()    
    print(tabulate(results, tablefmt='fancy_grid', headers='keys'))

def list_epecialidades(database_connection):
    query = f"SELECT * FROM Especialidade"
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(query)
    results = cursor.fetchall()
    cursor.close()    
    print(tabulate(results, tablefmt='fancy_grid', headers='keys'))

def list_consultas(database_connection):
    query = f"""
        SELECT 
            Consulta.data,
            Consulta.hora,
            Consulta.cpf_paciente,
            Pessoa_Paciente.nome AS nome_paciente,
            Consulta.cpf_medico,
            Pessoa_Medico.nome AS nome_medico,
            Consulta.valor,
            Consulta.sala,
            Consulta.retorno
        FROM Consulta
        JOIN Pessoa AS Pessoa_Paciente ON Consulta.cpf_paciente = Pessoa_Paciente.cpf
        JOIN Pessoa AS Pessoa_Medico ON Consulta.cpf_medico = Pessoa_Medico.cpf
    """
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(query)
    results = cursor.fetchall()
    cursor.close()    
    print(tabulate(results, tablefmt='fancy_grid', headers='keys'))

def consulta_entre_duas_datas(database_connection):
    data_inicio = input("Data inicio (yyyy-mm-dd): ")
    data_fim = input("Data fim (yyyy-mm-dd): ")
    hora_inicio = input("Hora inicio (hh:mm:ss): ")
    hora_fim = input("Hora fim (hh:mm:ss): ")
    query = f"""
        SELECT * FROM Consulta WHERE 
        (data between %s and %s) and (hora between %s and %s)   
    """
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(
        query,
        (data_inicio, data_fim, hora_inicio, hora_fim,)
    )
    results = cursor.fetchall()
    cursor.close()
    print(tabulate(results, tablefmt='fancy_grid', headers='keys'))

def medico_com_especialidade(database_connection):
    especialidade = input("Especialidade desejada: ")
    query = f"""
        SELECT Pessoa.nome FROM Pessoa WHERE cpf IN (
            SELECT cpf FROM Medico_tem_especialidade where nome_especialidade = %s
        )  
    """
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(
        query,
        (especialidade,)
    )
    results = cursor.fetchall()
    cursor.close()
    print(tabulate(results, tablefmt='fancy_grid', headers='keys'))

def listar_medicos_disponiveis(database_connection):
    data = input("Data (yyyy-mm-dd): ")
    hora = input("Hora (hh:mm:ss): ")
    query = f"""
        SELECT nome FROM Pessoa JOIN Medico on Pessoa.cpf=Medico.cpf WHERE Medico.cpf NOT IN (
            SELECT cpf_medico FROM Consulta where 
            data = %s and hora = %s
        ) 
    """
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(
        query,
        (data, hora)
    )
    results = cursor.fetchall()
    cursor.close()
    print(tabulate(results, tablefmt='fancy_grid', headers='keys'))

def listar_remedios_receitados(database_connection):
    cpf_medico = input("Digite o CPF do médico: ")
    cpf_paciente = input("Digite o CPF do paciente: ")
    query = f"""
    SELECT Remedio.nome, Receita.data_consulta, Receita.hora_consulta
    FROM Remedio JOIN 
        Receita_contem_remedios AS RCR ON Remedio.ium = RCR.ium
    JOIN 
        Receita ON RCR.id_receita = Receita.id
        AND RCR.cpf_paciente = Receita.cpf_paciente
        AND RCR.cpf_medico = Receita.cpf_medico
        AND RCR.data_consulta = Receita.data_consulta
        AND RCR.hora_consulta = Receita.hora_consulta
    WHERE 
        RCR.id_receita IN (
            SELECT id 
            FROM Receita 
            WHERE cpf_medico = %s
            AND cpf_paciente = %s
        );
    """
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(query, (cpf_medico, cpf_paciente,))
    results = cursor.fetchall()
    cursor.close()
    print(tabulate(results, tablefmt='fancy_grid', headers='keys'))

def list_medico_tem_esoecialidade(database_connection):
    query = """
        SELECT Pessoa.nome, Medico_tem_especialidade.cpf, Medico_tem_especialidade.nome_especialidade
        FROM Medico_tem_especialidade JOIN Pessoa ON Medico_tem_especialidade.cpf=Pessoa.cpf
    """
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(query)
    results = cursor.fetchall()
    cursor.close()
    print(tabulate(results, tablefmt='fancy_grid', headers='keys'))

def list_itens_options(database_connection):
    print("\n")
    print("1 - Paciente")
    print("2 - Médico")
    print("3 - Secretária")
    print("4 - Especialidade")
    print("5 - Consultas")
    print("6 - Consultas entre duas datas")
    print("7 - Médicos com uma determinada especialidade")
    print("8 - Listar todos os médicos disponíveis em um dado horário e dia")
    print("9 - Listar remédios receitados para um determinado paciente e por um determinado médico")
    print("10 - Listar médicos e suas especialidade")
    option = input("Opção: ")

    if option == '1':
        list_all_pessoas(database_connection, "Paciente")
    if option == '2':
        list_all_pessoas(database_connection, "Medico")
    if option == '3':
        list_all_pessoas(database_connection, "Secretaria")
    if option == '4':
        list_epecialidades(database_connection)
    if option == '5':
        list_consultas(database_connection)
    elif option == '6':
        consulta_entre_duas_datas(database_connection)
    elif option == '7':
        medico_com_especialidade(database_connection)
    elif option == '8':
        listar_medicos_disponiveis(database_connection)
    elif option == '9':
        listar_remedios_receitados(database_connection)
    elif option == '10':
        list_medico_tem_esoecialidade(database_connection)
    else: 
        pass

    print("\n")

