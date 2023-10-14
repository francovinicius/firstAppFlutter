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
  TextEditingController controllerPeso = TextEditingController();
  TextEditingController controllerAltura = TextEditingController();
  String resultadoImc = '';

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
              keyboardType: const TextInputType.numberWithOptions(),
              controller: controllerPeso,
              decoration: const InputDecoration(
                  labelText: ' Digite seu peso ',
                hintText: 'Ex.: 93.2',
                border: OutlineInputBorder (
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
              ),

            ),
            const SizedBox(height: 16),
            TextFormField(
              keyboardType: const TextInputType.numberWithOptions(),
              controller: controllerAltura,
              decoration: const InputDecoration(
                labelText: ' Digite sua altura ',
                  hintText: 'Ex.: 1.81',
                  border: OutlineInputBorder (
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
              ),

            ),

            const SizedBox(height: 24),
            Text(resultadoImc, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),

            const SizedBox(height: 16),
            Container(
                width: 200,
                height: 50,
                child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    num numAux = (num.parse(controllerPeso.text) / (num.parse(controllerAltura.text)  * num.parse(controllerAltura.text)));

                    resultadoImc = numAux.toStringAsFixed(2);
                  });

                },
                child: const Text('Calcular')),
            )
          ],
        ),)
      ),
    );
  }
}
