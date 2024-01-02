void main(){
  final wolverine = Heroe(nombre: 'Logan', poder: 'Regeneración');

  print(wolverine);
  print(wolverine.nombre);
  print(wolverine.poder);
}

// =============================

class Heroe {
  String nombre;
  String poder;

  Heroe({
    required this.nombre,
    this.poder = 'Sin Poder',
  });

  // Heroe(String pNombre, String pPoder) 
  //   : nombre = pNombre,
  //   poder = pPoder;

  @override
  String toString() {
    return '$nombre - $poder';
  }
}