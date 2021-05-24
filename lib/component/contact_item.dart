import 'package:flutter/material.dart';
import './circle_image.dart';
import '../types/Contact.dart';

class ContactItem extends StatelessWidget {
  late final Contact _contact;
  late final void Function()? _onPressed;
  
  ContactItem({required Contact contact, required void Function()? onPressed}) {
    _contact = contact;
    _onPressed = onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: _onPressed,
        child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            CircleImage(height: 50, width: 50, url: _contact.image),
            SizedBox(width: 30),
            Text(_contact.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          ],
        )
      ),
    );
  }
}