import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';

class ContactItem extends StatelessWidget {
  late final Contato _contato;
  
  ContactItem(Contato contato) {
    _contato = contato;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (_contato.getSexo == 'M') Icon(Icons.person),
        if (_contato.getSexo == 'F') Icon(Icons.person_add),
        Text(_contato.getNome)
      ],
    );
  }
}