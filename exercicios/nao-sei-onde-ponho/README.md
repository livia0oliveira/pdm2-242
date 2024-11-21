# Exercício em sala
Crie uma uma implementação para cada uma das estrutura de dados abaixo:

### 1. **Listas (Lists)**

As listas são coleções ordenadas de elementos que podem conter duplicatas.

#### Exemplo:
```dart
void main() {
  // Criando uma lista de frutas
  List<String> frutas = ['maçã', 'banana', 'laranja'];
  
  // Adicionando um novo elemento
  frutas.add('uva');
  
  // Exibindo a lista atualizada
  print(frutas);  // Saída: [maçã, banana, laranja, uva]
  
  // Acessando um elemento por índice
  print(frutas[0]);  // Saída: maçã
}
```

### 2. **Conjuntos (Sets)**

Os conjuntos são coleções não ordenadas de elementos únicos. Eles garantem que não haja duplicatas.

#### Exemplo:
```dart
void main() {
  // Criando um conjunto de números
  Set<int> numeros = {1, 2, 3, 4, 5};
  
  // Tentando adicionar um número duplicado
  numeros.add(3);  // Não adiciona, pois 3 já existe
  
  // Exibindo o conjunto
  print(numeros);  // Saída: {1, 2, 3, 4, 5}
}
```

### 3. **Mapas (Maps)**

Os mapas são coleções de pares chave-valor, onde cada chave é única. Eles permitem acesso rápido a valores através de suas chaves.

#### Exemplo:
```dart
void main() {
  // Criando um mapa de idades
  Map<String, int> idades = {'Alice': 30, 'Bob': 25};
  
  // Acessando um valor através da chave
  print(idades['Alice']);  // Saída: 30
  
  // Adicionando um novo par chave-valor
  idades['Carlos'] = 40;
  
  // Exibindo o mapa atualizado
  print(idades);  // Saída: {Alice: 30, Bob: 25, Carlos: 40}
}
```

### 4. **Matrizes (Arrays)**

Embora Dart não tenha um tipo específico chamado "matriz", listas podem ser usadas para representar matrizes multidimensionais.

#### Exemplo:
```dart
void main() {
  // Criando uma matriz (lista de listas)
  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  
  // Acessando um elemento específico da matriz
  print(matriz[1][2]);  // Saída: 6 (linha 1, coluna 2)
}
```

### 5. **Classes e Objetos**

Dart permite a criação de classes personalizadas para encapsular dados e comportamentos.

#### Exemplo:
```dart
class Pessoa {
  String nome;
  int idade;

  // Construtor da classe
  Pessoa(this.nome, this.idade);
  
  // Método para exibir os dados
  void apresentar() {
    print('Meu nome é $nome e eu tenho $idade anos.');
  }
}

void main() {
  // Criando um objeto da classe Pessoa
  var pessoa = Pessoa('João', 22);
  
  // Chamando um método da classe
  pessoa.apresentar();  // Saída: Meu nome é João e eu tenho 22 anos.
}
```
