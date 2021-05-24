import 'package:flutter/material.dart';
import '../component/circle_image.dart';
import '../types/Contact.dart';

class ContactDetails extends StatelessWidget {
  late final Contact _contact;
  
  ContactDetails({required Contact contact}) {
    _contact = contact;
  }

  void handleClose(BuildContext context) {
    Navigator.pop(context);
  }

  Text renderText(String text) {
    return Text(text, style: TextStyle(fontSize: 18));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [CircleImage(height: 150, width: 150, url: _contact.image)]
            ),
            SizedBox(height: 8),
            Text(_contact.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            SizedBox(height: 4),
            renderText(_contact.pronouns),
            SizedBox(height: 4),
            renderText(_contact.number),
            SizedBox(height: 4),
            renderText(_contact.desc),
            SizedBox(height: 16),
            TextButton(onPressed: () => handleClose(context), child: renderText("Return"))
          ],
        ),
      ),
    );
  }
}
