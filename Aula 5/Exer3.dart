class Animal {
  String nome;
  int idade;
  String cor;
  String raca;

  Animal(this.nome, this.idade, this.cor, this.raca);

  void exibirInformacoes() {
    print("Nome: \$nome");
    print("Idade: \$idade anos");
    print("Cor: \$cor");
    print("Raça: \$raca");
  }
}

class AnimalFilho extends Animal {
  double peso;
  String tipo;

  AnimalFilho(String nome, int idade, String cor, String raca, this.peso, this.tipo) 
      : super(nome, idade, cor, raca);

  void acordou() {
    print("\$nome acordou!");
  }

  void dormiu() {
    print("\$nome dormiu!");
  }

  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print("Peso: \$peso kg");
    print("Tipo: \$tipo");
  }
}

class Maquinas {
  String nomeMaquina;
  int quantidadeEixos;
  int rotacoesPorMinuto;
  double consumoEnergia;

  Maquinas(this.nomeMaquina, this.quantidadeEixos, this.rotacoesPorMinuto, this.consumoEnergia);

  void ligar() {
    print("\$nomeMaquina está ligada.");
  }

  void desligar() {
    print("\$nomeMaquina está desligada.");
  }

  void ajustarVelocidade(int novaRotacao) {
    rotacoesPorMinuto = novaRotacao;
    print("Velocidade ajustada para \$rotacoesPorMinuto RPM.");
  }
}

class Furadeira extends Maquinas {
  Furadeira(String nomeMaquina, int rotacoesPorMinuto, double consumoEnergia)
      : super(nomeMaquina, 0, rotacoesPorMinuto, consumoEnergia);
}

void main() {
  AnimalFilho meuAnimal = AnimalFilho("Buddy", 3, "Marrom", "Labrador", 25.0, "Cachorro");
  meuAnimal.exibirInformacoes();
  meuAnimal.acordou();
  meuAnimal.dormiu();

  Furadeira minhaFuradeira = Furadeira("Furadeira Bosch", 1500, 500.0);
  minhaFuradeira.ligar();
  minhaFuradeira.ajustarVelocidade(2000);
  minhaFuradeira.desligar();
}
