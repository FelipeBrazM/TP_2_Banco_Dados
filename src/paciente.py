def insert_client(database_connection):
    print("Informe as seguintes características do paciente")
    nome = input("Nome: ")
    cpf = input("CPF: ")
    telefone = input("Telefone: ")
    endereco = input("Endereço: ")
    email = input("Email: ")
    tipo_sanguineo = input("Tipo sanguíneo: ")
    data_de_nascimento = input("Data de nascimento: ")
    peso = input("Peso: ")
    altura = input("Altura: ")

    print("Inserindo informações no banco de dados...")

    query = "INSERT INTO Pessoa (nome, cpf, telefone, endereco, email, tipo_sanguineo, data_de_nascimento) VALUES (%, %, %, %, %, %, %)"

    cursor = database_connection.cursor()
    cursor.execute(query, (
        nome, cpf, telefone, endereco, email, tipo_sanguineo, data_de_nascimento
    ))

    database_connection.commit()

    cursor.execute("SELECT LAST_INSERT_ID()")

    last_id = cursor.fetchone()[0]

    query = "INSERT INTO Paciente (cpf, peso, altura, plano_de_saude) "