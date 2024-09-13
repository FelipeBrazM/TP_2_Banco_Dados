from database import MySQLConnection
import list_itens
def main_menu_options():
    print("1 - Listar")
    print("2 - Atualizar")
    print("3 - Deletar")
    print("4 - Sair")
    selected_menu = input("Digite a opção desejada: ")
    return selected_menu


if __name__ == "__main__":
    
    database_connection = MySQLConnection.create_connection()

    while True:
        selected_menu = main_menu_options()

        if selected_menu == '1':
            list_itens.list_itens_options(database_connection)

        elif selected_menu == '2':
            pass
        elif selected_menu == '3':
            pass
        else:
            break
        
    MySQLConnection.close_connection(database_connection)
