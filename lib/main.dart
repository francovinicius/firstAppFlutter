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
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'IMC Calculator'),
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

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Calculadora de imc',
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: ' Digite seu peso ',
                hintText: 'Digite seu peso',
                border: OutlineInputBorder (
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
              ),

            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: ' Digite sua altura ',
                  hintText: 'Digite sua altura',
                  border: OutlineInputBorder (
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
              ),

            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: (){
                  print('cliquei');
                },
                child: const Text('Calcular'))
          ],
        ),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
