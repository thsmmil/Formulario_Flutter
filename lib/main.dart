import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cadastro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _nome = TextEditingController();
  final _idade = TextEditingController();
  final _localizacao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.2),
              child: Text(
                'Cadastro Pecuarista:',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _nome,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Insira um valor válido!';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _idade,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Idade',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Insira um valor válido!';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _localizacao,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Localização',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Insira um valor válido!';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Container(
                          height: 150,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Cadastro Pecuarista'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Nome: ' + _nome.text),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Idade: ' + _idade.text),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      Text('Localização: ' + _localizacao.text),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(color: Colors.white70),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  minimumSize: const Size.fromHeight(50),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.pink[200],
    );
  }
}
