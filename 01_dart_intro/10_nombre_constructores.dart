void main(){

  final Map<String, dynamic> rawJson = {
    'nombre': 'Tony stark',
    'poder': 'Tecnología',
    'isAlive': true,
  };

  final ironMan = Heroe.fromJson(rawJson);

  print(ironMan);
}

// =============================

class Heroe {
  String nombre;
  String poder;
  bool isAlive;

  Heroe({
    required this.nombre,
    required this.poder,
    required this.isAlive,
  });

  Heroe.fromJson(Map<String, dynamic> json) 
    :nombre = json['nombre'] ?? 'nombre no encontrado',
     poder =  json['poder'] ?? 'poder no encontrado',
     isAlive =  json['isAlive'] ?? 'isAlive no encontrado';


  @override
  String toString() {
    return 'Nombre: $nombre, Poder: $poder, Está vivo: ${isAlive ? 'Si' : 'No' }';
  }
}