class Contact {
  late final String _name;
  late final String _number;
  late final String _image;
  late final String _pronouns;
  late final String _desc;

  Contact(
    {
      required String name, 
      required String number, 
      required String image, 
      required String pronouns,
      required String desc
    }) {
    _name = name;
    _number = number;
    _image = image;
    _pronouns = pronouns;
    _desc = desc;
  }

  String get name => _name;
  String get number => _number;
  String get image => _image;
  String get pronouns => _pronouns;
  String get desc => _desc;

  @override
  String toString() {
    return _name;
  }
}