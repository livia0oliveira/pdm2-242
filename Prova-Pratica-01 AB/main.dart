// Ana Lívia Oliveira Lima

import 'dart:io';
import 'package:sqlite3/sqlite3.dart';

void main() async {
  print('Using sqlite3 ${sqlite3.version}');

  
  final db = sqlite3.openInMemory();

  // Criar a tabela
  db.execute('''
    CREATE TABLE TB_Estudantes (
      id INTEGER NOT NULL PRIMARY KEY,   
      nome TEXT NOT NULL,                
      idade INTEGER                      
    );
  ''');

  // Inserção de dados
  await inserirEstudante(db, 'Lívia', 18);
  await inserirEstudante(db, 'Marina', 17);
  await inserirEstudante(db, 'Don\'t', 999);

  // Consulta de dados
  print('\n Dados após inserção:');
  await consultarEstudantes(db);

  // Atualização de dados
  await atualizarEstudante(db, 1, 'Ana Lívia', 17);
  await atualizarEstudante(db, 3, 'Don\'t call me Gaga', 0);
  print('\n Dados após atualização:');
  await consultarEstudantes(db);

  // Exclusão de dados
  await excluirEstudante(db, 3);
  print('\n Dados após exclusão:');
  await consultarEstudantes(db);

  // Encerramento do banco
  db.dispose();
}

// func p inserir dados
Future<void> inserirEstudante(Database db, String nome, int idade) async {
  await Future(() {
    final stmt = db.prepare('INSERT INTO TB_Estudantes (nome, idade) VALUES (?, ?)');
    stmt.execute([nome, idade]);
    stmt.dispose();
    print('Registro inserido: $nome, $idade anos');
  });
}

// func p consultar dados
Future<void> consultarEstudantes(Database db) async {
  await Future(() {
    final resultSet = db.select('SELECT * FROM TB_Estudantes');
    for (final row in resultSet) {
      print('Estudante[id: ${row['id']}, nome: ${row['nome']}, idade: ${row['idade']}]');
    }
  });
}

// func p atualizar dados
Future<void> atualizarEstudante(Database db, int id, String novoNome, int novaIdade) async {
  await Future(() {
    db.execute('UPDATE TB_Estudantes SET nome = ?, idade = ? WHERE id = ?', [novoNome, novaIdade, id]);
    print('Registro atualizado: id=$id -> $novoNome, $novaIdade anos');
  });
}

// func p excluir dados
Future<void> excluirEstudante(Database db, int id) async {
  await Future(() {
    db.execute('DELETE FROM TB_Estudantes WHERE id = ?', [id]);
    print('Registro excluído: id=$id');
  });
}
