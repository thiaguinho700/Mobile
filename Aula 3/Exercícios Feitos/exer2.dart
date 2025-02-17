import 'dart:io';

void main() {
  // Solicita a base do triângulo
  stdout.write('Digite a base do triângulo: ');
  double base = double.parse(stdin.readLineSync()!);

  // Solicita a altura do triângulo
  stdout.write('Digite a altura do triângulo: ');
  double altura = double.parse(stdin.readLineSync()!);

  // Calcula a área
  double area = calcularAreaTriangulo(base, altura);

  // Exibe o resultado
  print('A área do triângulo é: $area');
}

double calcularAreaTriangulo(double base, double altura) {
  return (base * altura) / 2;
}
