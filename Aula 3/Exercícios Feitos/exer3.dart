import 'dart:io';

void main() {
  // Solicita o salário base do usuário
  stdout.write('Digite o seu salário base: ');
  double salarioBase = double.parse(stdin.readLineSync()!);

  // Calcula o salário líquido
  double salarioLiquido = calcularSalarioLiquido(salarioBase);

  // Exibe o resultado
  print('O seu salário líquido é: R\$ ${salarioLiquido.toStringAsFixed(2)}');
}

double calcularSalarioLiquido(double salarioBase) {
  double bonificacao = salarioBase * 0.20;  // 20% de bonificação
  double imposto = salarioBase * 0.10;      // 10% de imposto
  return salarioBase + bonificacao - imposto;
}
