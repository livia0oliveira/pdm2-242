# Exercício em sala
Crie uma uma implementação para cada uma das estrutura de dados abaixo:

1. Listas
- **Descrição**: As listas são coleções ordenadas de elementos que podem conter duplicatas. Elas são amplamente utilizadas para armazenar sequências de itens.
- **Uso**: Permitem acesso por índice, iteração e manipulação fácil dos elementos.
- **Exemplo**:
  ```dart
  List<String> frutas = ['maçã', 'banana', 'laranja'];
  frutas.add('uva');
  ```

2. Conjuntos (Sets)
- Descrição: Os conjuntos são coleções não ordenadas de elementos únicos. Eles garantem que não haja duplicatas.
-Uso: Útil para operações que requerem verificação rápida de existência e eliminação de duplicatas.
- Exemplo:
  ```dart
  Set<int> numeros = {1, 2, 3, 4, 5};
  numeros.add(3); // Não adiciona, pois já existe
  ```

3. Mapas
- Descrição: Os mapas são coleções de pares chave-valor, onde cada chave é única. Eles permitem acesso rápido a valores através de suas chaves.
- Uso: Ideal para armazenar dados que precisam ser acessados rapidamente por uma chave.
- Exemplo:
  ```dart
  Map<String, int> idades = {'Alice': 30, 'Bob': 25};
  print(idades['Alice']); // Saída: 30
  ```

4. Matrizes (Arrays)
- **Descrição**: Embora Dart não tenha um tipo específico chamado "matriz", listas podem ser usadas como matrizes multidimensionais.
- Uso: Útil para representar tabelas ou grids.
- Exemplo:
  ```dart
  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  ```

5. Classes e Objetos
- Descrição: Dart permite a criação de classes personalizadas que podem encapsular dados e comportamentos.
- Uso: Essencial para criar estruturas de dados complexas e modularizar o código.
- Exemplo:
  ```dart
  class Pessoa {
    String nome;
    int idade;

    Pessoa(this.nome, this.idade);
  }
 
  var pessoa = Pessoa('João', 22);
  ```