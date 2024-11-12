import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(String nome) {
    this._nome = nome;
  }

  // Método para converter Dependente em Map
  Map<String, String> toMap() {
    return {'nome': _nome};
  }
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(String nome, List<Dependente> dependentes) {
    this._nome = nome;
    this._dependentes = dependentes;
  }

  // Método para converter Funcionario em Map
  Map<String, dynamic> toMap() {
    // Convertemos a lista de Dependentes para uma lista de Map
    List<Map<String, String>> dependentesMap = _dependentes.map((d) => d.toMap()).toList();
    return {
      'nome': _nome,
      'dependentes': dependentesMap
    };
  }
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(String nomeprojeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeprojeto;
    _funcionarios = funcionarios;
  }

  // Método para converter EquipeProjeto em Map
  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> funcionariosMap = _funcionarios.map((f) => f.toMap()).toList();
    return {
      'nomeProjeto': _nomeProjeto,
      'funcionarios': funcionariosMap,
    };
  }
}

void main() {
  // Criando dependentes
  Dependente dependente1 = Dependente("Carlos");
  Dependente dependente2 = Dependente("Pedro");
  Dependente dependente3 = Dependente("Larissa");
  Dependente dependente4 = Dependente("Clara");

  // Criando listas de dependentes
  List<Dependente> dependentes1 = [dependente1, dependente4];
  List<Dependente> dependentes2 = [dependente2];
  List<Dependente> dependentes3 = [dependente3];
  
  // Criando funcionários
  Funcionario funcionario1 = Funcionario("Maria", dependentes1);
  Funcionario funcionario2 = Funcionario("José", dependentes2);
  Funcionario funcionario3 = Funcionario("Lara", dependentes3);

  // Criando lista de funcionários
  List<Funcionario> funcionarios1 = [funcionario1, funcionario2, funcionario3];
  
  // Criando equipe de projeto
  EquipeProjeto equipe = EquipeProjeto("Fazer Brownie pra janta", funcionarios1);

  // Convertendo o objeto EquipeProjeto para Map e depois para JSON
  String jsonEquipe = jsonEncode(equipe.toMap());

  // Exibindo a equipe em formato JSON
  print(jsonEquipe);
}
