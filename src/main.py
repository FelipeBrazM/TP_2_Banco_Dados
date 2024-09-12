from database import MySQLConnection

def main_menu_options():
    print("1 - Cadastrar")
    print("2 - Listar")
    print("3 - Atualizar")
    print("4 - Deletar")
    print("5 - Sair")
    selected_menu = input("Digite a opção desejada")
    return selected_menu


if __name__ == "__main__":
    
    database_connection = MySQLConnection.create_connection()

    while True:
        selected_menu = main_menu_options()

        if selected_menu == 1:
            pass
        elif selected_menu == 2:
            pass
        elif selected_menu == 3:
            pass
        elif selected_menu == 4:
            pass
        else:
            break
        
    MySQLConnection.close_connection(database_connection)
