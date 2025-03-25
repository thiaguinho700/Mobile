import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'App: ContTech'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String _nomeUser = "";

  void _removeName() {
    setState(() {
      _nomeUser = "";
    });
  }
  void _setName() {
    setState(() {
      _nomeUser = "Thiago Alves";
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Column(children: [
                Container(
                  color: Colors.blueAccent,
                  child: Row(
                    children: [
                      Text("Contador: "),
                      Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: _incrementCounter, child: Text("+")),
                          ElevatedButton(onPressed: _decrementCounter, child: Text("-")),
                        ],
                      ),
                      ElevatedButton(onPressed: _resetCounter, child: Text("Reset"))
                    ],
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
                child: Container(
              color: Colors.blueAccent,
              child: Row(
                children: [
                  Text("Nome: "),
                  Text(
                    '$_nomeUser',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            )),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(onPressed: _setName, child: Text("Exibir nome")),
            ElevatedButton(onPressed: _removeName, child: Text("Limpar"))
          ],
        ),
      ),
      
    );
  }
}
