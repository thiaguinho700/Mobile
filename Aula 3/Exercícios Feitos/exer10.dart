import 'dart:io';

void main() {
  // Solicita os quatro valores numéricos
  stdout.write('Digite o primeiro valor: ');
  double valor1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o segundo valor: ');
  double valor2 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o terceiro valor: ');
  double valor3 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o quarto valor: ');
  double valor4 = double.parse(stdin.readLineSync()!);

  // Solicita a operação desejada
  print('Escolha a operação desejada:');
  print('Soma (+)');
  print('Subtração (-)');
  print('Multiplicação (*)');
  print('Divisão (/)');
  stdout.write('Digite a operação: ');
  String operacao = stdin.readLineSync()!.trim();

  double resultado = 0;

  // Realiza a operação escolhida
  switch (operacao) {
    case '+':
      resultado = valor1 + valor2 + valor3 + valor4;
      break;
    case '-':
      resultado = valor1 - valor2 - valor3 - valor4;
      break;
    case '*':
      resultado = valor1 * valor2 * valor3 * valor4;
      break;
    case '/':
      if (valor2 != 0 && valor3 != 0 && valor4 != 0) {
        resultado = valor1 / valor2 / valor3 / valor4;
      } else {
        print('Erro: Não é possível dividir por zero.');
        return;
      }
      break;
    default:
      print('Operação inválida.');
      return;
  }

  // Exibe o resultado da operação
  print('Resultado: $resultado');
}
