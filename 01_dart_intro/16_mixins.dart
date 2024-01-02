abstract class Animal {}

// ==============================================

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

// ==============================================

// abstract class Volador {
mixin Volador {
  void volar() => print('estoy volando');
}

// abstract class Caminante {
mixin Caminante {
  void caminar() => print('estoy caminando');
}

// abstract class Nadador {
mixin Nadador {
  void nadar() => print('estoy nadando');
}

// ==============================================

class Delfin extends Mamifero with Nadador{}

class Murcielago extends Ave with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Nadador, Volador, Caminante {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
}

