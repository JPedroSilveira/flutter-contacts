

import 'package:flutter/material.dart';
import 'package:exerc_nav/contato.dart';

void main() {
  runApp(MyApp());
}










class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Contatos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void AdicionarContato(){
    Contato novoContato = Contato(_nomeController.text,_checkedMale?'M':'F',int.parse(_telefoneController.text),_emailController.text);


  }






  @override
  final _nomeController = TextEditingController();
  final _sexoController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _emailController = TextEditingController();

  bool _checkedMale = false;
  bool _checkedFemale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 220.0),
            Column(
              children: <Widget>[
                Text('Novo Contato', style: TextStyle(fontSize: 19)),
              ],
            ),

            SizedBox(height: 12.0),

            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Nome',
              ),
            ),

            SizedBox(height: 12.0),

          Row(
            children: <Widget>[
              SizedBox(width: 11,),
              Text('Sexo', style: TextStyle(fontSize: 17),),
              SizedBox(width: 70,),
              Text('M'),
            Checkbox(
                value: _checkedMale,
                onChanged: (bool value){
                setState(() {
                  _checkedMale = value;
                  print(_checkedMale);
                  _checkedFemale = false;

                });
                },
              activeColor: Colors.green,
              checkColor: Colors.black,
            ),
              SizedBox(width: 70,),
              Text('F'),
              Checkbox(
                value: _checkedFemale,
                onChanged: (bool value){
                  setState(() {
                    _checkedFemale = value;
                    _checkedMale = false;
                    print(_checkedFemale);
                  });
                },
                activeColor: Colors.green,
                checkColor: Colors.black,
              ),







            ],
          ),


            SizedBox(height: 12.0),

            TextField(

              controller: _telefoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Telefone',
              ),
              keyboardType: TextInputType.number,
            ),

            SizedBox(height: 12.0),

            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Email',
              ),
            ),

            SizedBox(height: 12.0),
            ElevatedButton(
              child: Text('Adicionar', style: TextStyle(fontSize: 17),),
              onPressed: (){
                showDialog(context: context, builder: (context){
              return AlertDialog(
                  content: Text('Contato Adicionado'),
              );
              },
              );
              }
              ),                //NAVIGATOR VOLTAR PRA LISTA











          ],
        ),
      ),
    );
  }
}