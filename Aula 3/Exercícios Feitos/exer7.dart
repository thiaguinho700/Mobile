import 'dart:io';

void main() {
  // Solicita o valor dos três carros
  stdout.write('Digite o valor do primeiro carro: R\$ ');
  double carro1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o valor do segundo carro: R\$ ');
  double carro2 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o valor do terceiro carro: R\$ ');
  double carro3 = double.parse(stdin.readLineSync()!);

  // Determina o carro mais caro e o mais barato
  double maisCaro = carro1;
  double maisBarato = carro1;

  if (carro2 > maisCaro) maisCaro = carro2;
  if (carro3 > maisCaro) maisCaro = carro3;

  if (carro2 < maisBarato) maisBarato = carro2;
  if (carro3 < maisBarato) maisBarato = carro3;

  // Exibe o resultado
  print('\nO carro mais caro custa: R\$ ${maisCaro.toStringAsFixed(2)}');
  print('O carro mais barato custa: R\$ ${maisBarato.toStringAsFixed(2)}');
}
