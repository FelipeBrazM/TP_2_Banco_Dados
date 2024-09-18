def update_email_Pessoa(database_connection):
    cpf_pessoa = input("Digite o CPF da pessoa para alterar o email: ")
    email = input("Digite o novo email da pessoa: ")

    query = "UPDATE Pessoa SET email = %s WHERE cpf = %s"
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(query, (email, cpf_pessoa))
    database_connection.commit()
    cursor.close()

def update_telefone_Pessoa(database_connection):
    cpf_pessoa = input("Digite o CPF da pessoa para alterar o telefone: ")
    telefone = input("Digite o novo telefone da pessoa: ")
    
    query = "UPDATE Pessoa SET telefone = %s WHERE cpf=%s"
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(query, (telefone, cpf_pessoa,))
    database_connection.commit()
    cursor.close()
    
def update_descricao_especialidade(database_connection):
    nome_especialidade = input("Digite o nome da especialidade que deseja alterar sua descrição: ")
    descricao = input("Digite a nova descrição da especialidade: ")

    query = "UPDATE Especialidade SET descricao = %s WHERE nome = %s"
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(query, (descricao, nome_especialidade))
    database_connection.commit()
    cursor.close()

def update_itens_options(database_connection):
    print("\n")
    print("1 - Alterar email de uma pessoa")
    print("2 - Alterar telefone de uma pessoa")
    print("3 - Alterar a descrição de uma especialidade")
    option = input("Opção: ")

    if option == '1':
        update_email_Pessoa(database_connection)
    elif option == '2':
        update_telefone_Pessoa(database_connection)
    elif option == '3':
        update_descricao_especialidade(database_connection)
    else: 
        pass

    print("\n")