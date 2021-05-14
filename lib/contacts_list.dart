import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/contact_item.dart';

class ContactsList extends StatefulWidget {
  ContactsList({Key? key}) : super(key:key);

  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  ListaContatos listaContatos = ListaContatos.inicializar();

  _ContactsListState() {

  }

  void _addContact() {
    //TODO Add contact
  }

  void _removeContact(int index) {
    //TODO Add contact
  }


  @override
  Widget build(BuildContext context) {
    List<Contato> contatos = listaContatos.getListaContatos;
    return Scaffold(
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          final Contato contato = contatos[index];
          return Dismissible(
            key: Key(contato.hashCode.toString()),
            onDismissed: (direction) => _removeContact(index),
            background: Container(color: Colors.red),
            child: ContactItem(contato)
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addContact,
        tooltip: 'Add contact',
        child: Icon(Icons.add),
      ),  
    );
  }
}