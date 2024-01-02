void main(){
  final wolverine = Heroe('Logan', 'Regeneración');

  print(wolverine);
  print(wolverine.nombre);
  print(wolverine.poder);
}

// =============================

class Heroe {
  String nombre;
  String poder;

  Heroe(this.nombre, this.poder);

  // Heroe(String pNombre, String pPoder) 
  //   : nombre = pNombre,
  //   poder = pPoder;
}