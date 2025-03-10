class Pessoa {
  String _nome;
  int _idade;

  Pessoa(this._nome, this._idade);

  String get nome => _nome;
  set nome(String novoNome) {
    if (novoNome.isNotEmpty) {
      _nome = novoNome;
    } else {
      print("Nome não pode ser vazio.");
    }
  }

  int get idade => _idade;
  set idade(int novaIdade) {
    if (novaIdade > 0) {
      _idade = novaIdade;
    } else {
      print("Idade deve ser maior que zero.");
    }
  }

  void mostrarInformacoes() {
    print("Nome: $_nome, Idade: $_idade anos");
  }
}
