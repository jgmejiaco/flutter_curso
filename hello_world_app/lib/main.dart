import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_functions_screen.dart';
// import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Inicialización de la llave para el StatelessWidget, ctr + .

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // es para quitar el banner del debug de la pantalla

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),

      // home: const CounterScreen()
      home: const CounterFunctionScreen()
    );
  }
}
 