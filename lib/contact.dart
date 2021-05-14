class ListaContatos {
  late final List<Contato> _contatos;
  ListaContatos.inicializar() {
    _contatos = <Contato>[];
    _contatos.add(Contato('Leonardo', 'M', 987654321, 'leonardo@hotmail.com'));
    _contatos.add(Contato('João', 'M', 947552321, 'joao@hotmail.com'));
    _contatos.add(Contato('Theo', 'M', 937514721, 'theo@hotmail.com'));
    _contatos.add(Contato('Thiciane', 'F', 917854921, 'thiciane@hotmail.com'));
    _contatos.add(Contato('Bruna', 'F', 967634321, 'bruna@hotmail.com'));
    _contatos.add(Contato('Fernanda', 'F', 899798789, 'fernanda@hotmail.com'));
  }

  List<Contato> get getListaContatos => _contatos;

  add(Contato contato) {
    _contatos.add(contato);
  }

  remove(int index) {
    _contatos.removeAt(index);
  }
}

class Contato {
  String _nome;
  String _sexo;
  int _telefone;
  String _email;
  Contato(this._nome, this._sexo, this._telefone, this._email);
  String get getNome => _nome;
  String get getSexo => _sexo;
  int get getTelefone => _telefone;
  String get getEmail => _email;
}
