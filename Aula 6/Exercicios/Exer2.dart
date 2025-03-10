abstract class MaquinaIndustrial {
  String nome;
  double potencia;
  bool status;

  MaquinaIndustrial(this.nome, this.potencia, {this.status = false});

  void ligar();
  void desligar();
}

class Prensa extends MaquinaIndustrial {
  double pressaoEmToneladas;

  Prensa(String nome, double potencia, this.pressaoEmToneladas) : super(nome, potencia);

  @override
  void ligar() {
    status = true;
    print("A prensa $nome foi ligada com potência de $potencia kW e pressão de $pressaoEmToneladas toneladas.");
  }

  @override
  void desligar() {
    status = false;
    print("A prensa $nome foi desligada.");
  }
}

class RoboSolda extends MaquinaIndustrial {
  String tipoDeSolda;

  RoboSolda(String nome, double potencia, this.tipoDeSolda) : super(nome, potencia);

  @override
  void ligar() {
    status = true;
    print("O robô de solda $nome foi ligado com potência de $potencia kW e realiza soldagem do tipo $tipoDeSolda.");
  }

  @override
  void desligar() {
    status = false;
    print("O robô de solda $nome foi desligado.");
  }
}
