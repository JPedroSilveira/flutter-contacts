import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/contact_item.dart';
import '../services/contact_service.dart';
import './add_contact.dart';
import './contact_details.dart';
import '../types/Contact.dart';

class ContactListView extends StatefulWidget {
  ContactListView({Key? key}) : super(key: key);

  @override
  _ContactListViewState createState() => _ContactListViewState();
}

class _ContactListViewState extends State<ContactListView> {
  late final List<Contact> _contacts;

  _ContactListViewState() {
    _contacts = contactService.getContacts();
  }

  void _openDetails(BuildContext context, Contact contact) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ContactDetails(contact: contact)));
  }

  void _addContact() async {
    final Contact? newContact = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => NewContact()));
    if (newContact != null) {
      setState(() {
        _contacts.add(newContact);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error creating new contact')));
    }
  }

  _removeContact(int index) {
    final contact = _contacts[index];
    setState(() {
      _contacts.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${contact.name} removed')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) {
          final contact = _contacts[index];
          return Dismissible(
            key: Key(contact.hashCode.toString()),
            onDismissed: (direction) => _removeContact(index),
            background: Container(color: Colors.red),
            child: ContactItem(contact: contact, onPressed: () => _openDetails(context, contact)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addContact,
        tooltip: 'Add new contact',
        child: Icon(Icons.add),
      ),
    );
  }
}
