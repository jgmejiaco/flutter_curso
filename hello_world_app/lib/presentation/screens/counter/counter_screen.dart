import 'package:flutter/material.dart';

// stless
// ctrl + . para adicionar los pendiente sugeridos

class CounterScreen extends StatefulWidget {
  // la key es necesaria para el StatefulWidget
  const CounterScreen({super.key}); 
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// =====================================

class _CounterScreenState extends State<CounterScreen> {
 int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    // Scaffold: hace referencia a un widget y una clase del sistema que se usa con el fin de contener otros widgets.

    // return const Scaffold ( 
    //   body: Center(child: Text('Gracias te doy Señor Dios')),
    // );

    return Scaffold (
      appBar: AppBar(
        title: const Text('Pantalla del Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),

            Text('Click${ clickCounter == 1 ? '!!' : 's !!' }', style: const TextStyle(fontSize: 25)),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter ++;
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}