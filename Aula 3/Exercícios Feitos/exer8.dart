import 'dart:io';

void main() {
  // Preços dos combustíveis
  const double precoEtanol = 1.70;
  const double precoDiesel = 2.00;
  const double precoGasolina = 4.50;

  // Solicita a quantidade de litros comprados
  stdout.write('Digite a quantidade de litros comprados: ');
  double quantidadeLitros = double.parse(stdin.readLineSync()!);

  // Solicita o tipo de combustível
  stdout.write('Digite o tipo de combustível (E - Etanol, D - Diesel, G - Gasolina): ');
  String tipoCombustivel = stdin.readLineSync()!.toUpperCase();

  double precoLitro;
  double percentualDesconto;

  // Determina o preço do litro e o percentual de desconto com base no tipo de combustível
  if (tipoCombustivel == 'E') {
    precoLitro = precoEtanol;
    percentualDesconto = (quantidadeLitros >= 15) ? 0.05 : 0.03;
  } else if (tipoCombustivel == 'D') {
    precoLitro = precoDiesel;
    percentualDesconto = (quantidadeLitros >= 20) ? 0.03 : 0.0;
  } else if (tipoCombustivel == 'G') {
    precoLitro = precoGasolina;
    percentualDesconto = (quantidadeLitros >= 15) ? 0.05 : 0.03;
  } else {
    print('Tipo de combustível inválido.');
    return;
  }

  // Calcula o desconto
  double desconto = precoLitro * quantidadeLitros * percentualDesconto;

  // Calcula o valor total a ser pago
  double valorTotal = (precoLitro * quantidadeLitros) - desconto;

  // Exibe o valor total a ser pago
  print('O valor total a ser pago é: R\$ ${valorTotal.toStringAsFixed(2)}');
}
