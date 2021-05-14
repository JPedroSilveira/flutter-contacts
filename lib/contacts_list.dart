import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/contact_item.dart';

import 'novo_contato.dart';

class ContactsList extends StatefulWidget {
  ContactsList({Key? key}) : super(key: key);

  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  late final ListaContatos _listaContatos;

  _ContactsListState() {
    _listaContatos = ListaContatos.inicializar();
  }

  void _addContact(BuildContext context) async {
    final Contato? contato = await Navigator.push(context, MaterialPageRoute(builder: (context) => NovoContato()));
    if (contato != null) {
      setState(() => _listaContatos.add(contato));
      showSuccessDialog(context);
    } else {
      showFailDialog(context);
    }
  }

  void showSuccessDialog(BuildContext context) {
    showTextDialog(context, 'Contato Adicionado');
  }

  void showFailDialog(BuildContext context) {
    showTextDialog(context, 'Erro ao adicionar contato');
  }

  void showTextDialog(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(text),
        );
      }
    );
  }

  void _removeContact(int index) {
    _listaContatos.remove(index);
  }

  @override
  Widget build(BuildContext context) {
    List<Contato> contatos = _listaContatos.getListaContatos;
    return Scaffold(
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          final Contato contato = contatos[index];
          return Dismissible(
              key: Key(contato.hashCode.toString()),
              onDismissed: (direction) => _removeContact(index),
              background: Container(color: Colors.red),
              child: ContactItem(contato));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addContact(context),
        tooltip: 'Add contact',
        child: Icon(Icons.add),
      ),
    );
  }
}
