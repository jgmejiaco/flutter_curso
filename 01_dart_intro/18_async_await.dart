void main() async {

  print('Inicio de programa');

  // ================

  try {
    final value = await httpGet('https://jgmcdigital.com');
    print(value);
  } catch (e) {
    print('Tenemos este error: $e');
  }

  // ================

  print('Fin de programa');
}

// ====================================================

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw 'Respuesta de la petición http';
  // return 'Respuesta de la petición http';
}


