import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exerc_nav_2/contact.dart';
import 'contact_details.dart';

class ContactItem extends StatelessWidget {
  late final Contato _contato;

  ContactItem(Contato contato) {
    _contato = contato;
  }
  void openContacts(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ContactDetails(_contato)));
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Align(
          alignment: Alignment.center,
          child: Row(
          children: [
            SizedBox(width: 150),
            if (_contato.getSexo == 'M') Icon(Icons.person),
            if (_contato.getSexo == 'F') Icon(Icons.person_add),
            SizedBox(width:10),
            Text(_contato.getNome, style: TextStyle(fontSize: 17),)
          ],
        ),
        ),
        onPressed: () => openContacts(context));

  }
}
