from tabulate import tabulate
import mysql.connector

def list_all_pessoas(database_connection, table):
    query = f"SELECT * FROM Pessoa JOIN {table} on {table}.cpf=Pessoa.cpf"
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
    print("Not implemented yet")


def list_itens_options(database_connection):
    print("\n")
    print("1 - Paciente")
    print("2 - Médico")
    print("3 - Secretária")
    print("4 - Especialidade")

    print("9 - Consultas que ocorreram entre duas datas")
    print("10 - Médicos com uma determinada especialidade")
    print("11 - Listar todos os médicos disponíveis em um dado horário e dia")
    print("12 - Listar remédios receitados para um determinado paciente e por um determinado médico")

    option = input("Opção: ")

    if option == '1':
        list_all_pessoas(database_connection, "Paciente")
    if option == '2':
        list_all_pessoas(database_connection, "Medico")
    if option == '3':
        list_all_pessoas(database_connection, "Secretaria")

    elif option == '9':
        consulta_entre_duas_datas(database_connection)
    elif option == '10':
        medico_com_especialidade(database_connection)
    elif option == '11':
        listar_medicos_disponiveis(database_connection)
    elif option == '12':
        listar_remedios_receitados(database_connection)
    else: 
        pass

