void main(){
  // saludar();

  print('Función Saludar: ${saludar()}');

  print('Suma: ${ addDosNumeros(5,4) }');

  print('Suma Opcional: ${ addDosNumerosOpcional(5) }');

  print('Saludar Persona: ${ saludarPersona(name: 'JuanGui') }');
}

// =============================

// String saludar() {
//   return 'Holas';
// }

String saludar() => 'Oli';

// =============================

// int addDosNumeros(int a, int b) {
//   return a + b;
// }

int addDosNumeros(int a, int b) => a + b;

// =============================

int addDosNumerosOpcional(int a, [ int b = 0 ]) {
  // b = b ?? 0;
  // b ??= 0;

  return a + b;
}

// =============================

String saludarPersona( { String mensaje = 'Hola', String? name } ) {
  return '$mensaje, $name';
}