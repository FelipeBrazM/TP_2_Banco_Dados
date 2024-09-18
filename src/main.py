from database import MySQLConnection
from list_itens import list_itens_options 
from update_itens import update_itens_options
from delete_itens import delete_itens_menu
from insert_itens import insert_itens_menu

def main_menu_options():
    print("1 - Listar")
    print("2 - Atualizar")
    print("3 - Deletar")
    print("4 - Inserir")
    print("5 - Sair")
    selected_menu = input("Digite a opção desejada: ")
    return selected_menu


if __name__ == "__main__":
    
    database_connection = MySQLConnection.create_connection()

    while True:
        selected_menu = main_menu_options()

        if selected_menu == '1':
            list_itens_options(database_connection)
        elif selected_menu == '2':
            update_itens_options(database_connection)
        elif selected_menu == '3':
            delete_itens_menu(database_connection)
        elif selected_menu == '4':
            insert_itens_menu(database_connection)
        else:
            break
        
    MySQLConnection.close_connection(database_connection)
