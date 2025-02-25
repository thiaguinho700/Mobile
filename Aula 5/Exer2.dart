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

void main() {
  AnimalFilho meuAnimal = AnimalFilho("Buddy", 3, "Marrom", "Labrador", 25.0, "Cachorro");
  meuAnimal.exibirInformacoes();
  meuAnimal.acordou();
  meuAnimal.dormiu();
}
