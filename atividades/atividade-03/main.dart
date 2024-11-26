import 'dart:io';
import 'dart:async';
import 'dart:isolate';

void main() async {
  // criando o isolate
  final receivePort = ReceivePort();
  await Isolate.spawn(printarNome, receivePort.sendPort);

  // fingindo que tem algo acontecendo
  print('Carregando usuário...');
  await Future.delayed(Duration(seconds: 2));
  print('Usuário carregado!');
  await Future.delayed(Duration(seconds: 2));

  // Recebendo o resultado
  final nome = await receivePort.first;
  print('Nome: $nome');
}

void printarNome(SendPort sendPort) async {
  // Executando uma operação assíncrona em um isolate separado
  final nome = 'Ana Lívia Oliveira Lima';
  sendPort.send(nome);
}
