import 'package:flutter/material.dart';
import 'contact.dart';

class NovoContato extends StatefulWidget {
  NovoContato({Key? key}) : super(key: key);

  @override
  _NovoContatoState createState() => _NovoContatoState();
}

class _NovoContatoState extends State<NovoContato> {
  final _nomeController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _emailController = TextEditingController();

  bool _checkedMale = false;
  bool _checkedFemale = false;

  void adicionarContato(BuildContext context) {
    final Contato novoContato = Contato(
        _nomeController.text,
        _checkedMale ? 'M' : 'F',
        int.parse(_telefoneController.text),
        _emailController.text);
    Navigator.pop(context, novoContato);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('Contato Adicionado'),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 220.0),
            Column(
              children: <Widget>[
                Text('Novo Contato', style: TextStyle(fontSize: 19)),
              ],
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Nome',
              ),
            ),
            SizedBox(height: 12.0),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Sexo',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  width: 70,
                ),
                Text('M'),
                Checkbox(
                  value: _checkedMale,
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _checkedMale = value;
                        print(_checkedMale);
                        _checkedFemale = false;
                      });
                    }
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.black,
                ),
                SizedBox(
                  width: 70,
                ),
                Text('F'),
                Checkbox(
                  value: _checkedFemale,
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _checkedFemale = value;
                        _checkedMale = false;
                        print(_checkedFemale);
                      });
                    }
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _telefoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Telefone',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              child: Text('Adicionar', style: TextStyle(fontSize: 17)),
              onPressed: () => adicionarContato(context)
            ), //NAVIGATOR VOLTAR PRA LISTA
          ],
        ),
      ),
    );
  }
}
