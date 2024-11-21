// bagulhos
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // questão 1 - Listas
  List<String> frutas = ['maçã', 'fruta', 'tomate'];
  print('Frutas antes: $frutas');
  frutas.add('pudim');
  print('Frutas agora: $frutas');

  // questao 2 - conjuntos
  Set<int> id = {1, 0, 2, 3, 4, 5, 6};
  print('Numeros antes: $id');
  id.add(3);
  id.add(-3);
  print('Numeros agora: $id');

  //questao 3 - Mapas
  Map<String, String> paisFilhos = {'Pedro': 'Jose', 'Maria': 'Joao'};
  String selecao = 'Maria';
  print('Filho de $selecao: ${paisFilhos[selecao]}');

  //questao 4 - Arrays
  List<List<int>> matriz = [
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9]
  ];

  print('Matriz:');
  print(matriz[0]);
  print(matriz[1]);
  print(matriz[2]);

  //questao 5 - Classes e Objetos
  var gato = Gato('Pedro', 'isso com certeza é um gato', 1);
  print('GATO - Nome: ${gato.nome} | Raça: ${gato.raca} | Idade: ${gato.idade}');
}

class Gato {
  String nome;
  String raca;
  int idade;

  Gato(this.nome, this.raca, this.idade);

  @override
  String toString() {
    return 'Gato(nome: $nome, raça: $raca, idade: $idade)';
  }
}
