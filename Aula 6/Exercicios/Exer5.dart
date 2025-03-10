abstract class Automoveis {
  String nome;
  String cor;
  int ano;

  Automoveis(this.nome, this.cor, this.ano);
}

class Carro extends Automoveis {
  Carro(String nome, String cor, int ano) : super(nome, cor, ano);
}
