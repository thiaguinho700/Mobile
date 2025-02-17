import 'dart:io';

void main() {
  // Solicita a primeira nota
  stdout.write('Digite a primeira nota: ');
  double nota1 = double.parse(stdin.readLineSync()!);

  // Solicita a segunda nota
  stdout.write('Digite a segunda nota: ');
  double nota2 = double.parse(stdin.readLineSync()!);

  // Calcula a média
  double media = (nota1 + nota2) / 2;

  // Determina a situação do aluno
  String situacao;
  if (media >= 7.0) {
    situacao = 'Aprovado';
  } else if (media >= 4.0) {
    situacao = 'Exame';
  } else {
    situacao = 'Reprovado';
  }

  // Exibe o resultado
  print('Média: ${media.toStringAsFixed(2)}');
  print('Situação: $situacao');
}
