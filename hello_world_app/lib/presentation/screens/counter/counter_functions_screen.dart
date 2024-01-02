import 'package:flutter/material.dart';

// stless
// ctrl + . para adicionar los pendiente sugeridos

class CounterFunctionScreen extends StatefulWidget {
  // la key es necesaria para el StatefulWidget
  const CounterFunctionScreen({super.key}); 
  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

// ============================================================
// ============================================================
// ============================================================

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
 int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    // Scaffold: hace referencia a un widget y una clase del sistema que se usa con el fin de contener otros widgets.

    // return const Scaffold ( 
    //   body: Center(child: Text('Gracias te doy Señor Dios')),
    // );

    return Scaffold (
      appBar: AppBar(
        title: const Text('Funciones del Contador'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () { 
              setState(() {
                clickCounter = 0;
              });
             },
          ),
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),

          // ==========================

          const SizedBox(height: 10),

          // ==========================

          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter ++;
              });
            },
          ),

          // ==========================

          const SizedBox(height: 10),

          // ==========================

          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (clickCounter == 0) return;
              setState(() {
                clickCounter --;
              });
            },
          ),
        ],)
    );
  }
}

// ============================================================
// ============================================================
// ============================================================

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  // ==========================

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  // ==========================

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      backgroundColor: Colors.green,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}