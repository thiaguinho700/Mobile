import 'dart:io';

// Função para receber as informações do usuário
dynamic getUserInfo() {
  stdout.write("Digite seu nome: ");
  String nome = stdin.readLineSync()!;
  
  stdout.write("Digite seu curso: ");
  String curso = stdin.readLineSync()!;
  
  stdout.write("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  return {'nome': nome, 'curso': curso, 'idade': idade};
}

void main() {
  var usuario = getUserInfo();
  print("Usuário: ${usuario['nome']}, Curso: ${usuario['curso']}, Idade: ${usuario['idade']}");
}