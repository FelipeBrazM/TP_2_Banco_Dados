def insert_especialidade_medico(database_connection):
    cpf = input("Digite o CPF do médico: ")
    nome_especialidade = input("Digite o nome da especialidade que deseja inserir: ")

    query = "INSERT INTO Medico_tem_especialidade(cpf, nome_especialidade) VALUES (%s, %s)"
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(query, (cpf, nome_especialidade))
    database_connection.commit()
    cursor.close()

def insert_itens_menu(database_connection):
    print("\n")
    print("1 - Adicionar especialidade a um médico")
    option = input("Opção: ")

    if option == '1':
        insert_especialidade_medico(database_connection)
    else:
        pass

    print("\n")