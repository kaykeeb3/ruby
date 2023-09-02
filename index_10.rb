require 'sqlite3'

# Conectando ao banco de dados
db = SQLite3::Database.new('exemplo.db')

# Criando uma tabela
db.execute('CREATE TABLE IF NOT EXISTS contatos (id INTEGER PRIMARY KEY, nome TEXT, email TEXT)')

# Inserindo dados
db.execute('INSERT INTO contatos (nome, email) VALUES (?, ?)', ['João', 'joao@example.com'])

# Consultando dados
resultados = db.execute('SELECT * FROM contatos')
resultados.each do |row|
  puts "ID: #{row[0]}, Nome: #{row[1]}, Email: #{row[2]}"
end

# Fechando a conexão com o banco de dados
db.close
