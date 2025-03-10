abstract class Automoveis {
  String nome;
  String cor;
  int ano;

  Automoveis(this.nome, this.cor, this.ano);

  void colocarCinto();
  void ligarCarro();
  void desligarCarro();
  void dirigir();
}

class Carro extends Automoveis {
  Carro(String nome, String cor, int ano) : super(nome, cor, ano);

  @override
  void colocarCinto() {
    print("O cinto de segurança foi colocado no carro $nome.");
  }

  @override
  void ligarCarro() {
    print("O carro $nome foi ligado.");
  }

  @override
  void desligarCarro() {
    print("O carro $nome foi desligado.");
  }

  @override
  void dirigir() {
    print("O carro $nome está em movimento.");
  }
}