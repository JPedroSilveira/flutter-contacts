import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact.dart';

class ContactDetails extends StatelessWidget {
  late Contato c;

  ContactDetails(Contato contato) {
    this.c = contato;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(c.getNome, textAlign: TextAlign.center),
          Text(c.getSexo, textAlign: TextAlign.center),
          Text(c.getTelefone.toString(), textAlign: TextAlign.center),
          Text(c.getEmail, textAlign: TextAlign.center),
        ],
      ),
    ));
  }
}
