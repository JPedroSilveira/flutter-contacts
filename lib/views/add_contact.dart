import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../types/Contact.dart';

class NewContact extends StatefulWidget {
  NewContact({Key? key}) : super(key: key);

  @override
  _NewContactState createState() => _NewContactState();
}

class _NewContactState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _descController = TextEditingController();
  final _pronounsController = TextEditingController();

  final String image = 'https://i.pinimg.com/originals/0c/3b/3a/0c3b3adb1a7530892e55ef36d3be6cb8.png';

  void _onClose() {
    final String name = _nameController.text;
    final String number = _numberController.text;
    final String desc = _descController.text;
    final String pronouns = _pronounsController.text;

    final Contact contact = Contact(name: name, number: number, image: image, desc: desc, pronouns: pronouns);
    Navigator.pop(context, contact);
  }

  bool _isNotBlank(String? value) {
    return value != null && value.isEmpty;
  }

  List<Widget> formItem(String label, TextEditingController controller, bool Function(String?) validator) {
    return [
      TextFormField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: label,
        ),
        controller: controller,
        validator: (value) {
          if (validator(value)) {
            return 'Invalid value.';
          }
          return null;
        }
      ),
      SizedBox(height: 30)
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...formItem('Enter name', _nameController, _isNotBlank),
              ...formItem('Enter number', _numberController, _isNotBlank),
              ...formItem('Enter description', _descController, _isNotBlank),
              ...formItem('Enter pronouns', _pronounsController, _isNotBlank),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _onClose();
                      }
                    },
                    child: Text('Save'),
                  ),
                ]
              ),
            ]
          )
        )
      )
    );
  }
}