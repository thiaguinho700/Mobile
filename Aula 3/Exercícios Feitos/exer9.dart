import 'dart:io';

void main() {
  // Solicita a quantidade de kWh consumido
  stdout.write('Digite a quantidade de kWh consumida: ');
  double consumoKWh = double.parse(stdin.readLineSync()!);

  // Solicita o tipo de instalação
  stdout.write('Digite o tipo de instalação (R - Residencial, C - Comercial, I - Industrial): ');
  String tipoInstalacao = stdin.readLineSync()!.toUpperCase();

  double precoUnitario;

  // Determina o preço unitário com base no tipo de instalação e no consumo
  if (tipoInstalacao == 'R') {
    if (consumoKWh <= 500) {
      precoUnitario = 0.50;
    } else {
      precoUnitario = 0.70;
    }
  } else if (tipoInstalacao == 'C') {
    if (consumoKWh <= 1000) {
      precoUnitario = 0.65;
    } else {
      precoUnitario = 0.60;
    }
  } else if (tipoInstalacao == 'I') {
    if (consumoKWh <= 5000) {
      precoUnitario = 0.55;
    } else {
      precoUnitario = 0.50;
    }
  } else {
    print('Tipo de instalação inválido.');
    return;
  }

  // Calcula o preço total a pagar
  double precoTotal = precoUnitario * consumoKWh;

  // Exibe o preço total a ser pago
  print('O valor total a ser pago pelo consumo de energia elétrica é: R\$ ${precoTotal.toStringAsFixed(2)}');
}
