
def delete_especialidade_medico(database_connection):
    cpf = input("Digite o CPF do médico: ")
    nome_especialidade = input("Digite o nome da especialidade que deseja remover: ")

    query = "DELETE FROM Medico_tem_especialidade WHERE cpf=%s AND nome_especialidade=%s"
    cursor = database_connection.cursor(dictionary=True)
    cursor.execute(query, (cpf, nome_especialidade, ))
    database_connection.commit()
    cursor.close()


def delete_itens_menu(database_connection):
    print("\n")
    print("1 - Deletar especialidade de um médico")
    option = input("Opção: ")

    if option == '1':
        delete_especialidade_medico(database_connection)
    else:
        pass

    print("\n")