void main() async {

  print('Inicio de programa');

  // ================

  try {
    final value = await httpGet('https://jgmcdigital.com');
    print('Exito: $value');

  } on Exception catch(e) {
    print('Tenemos una Exception: $e');

  } catch (e) {
    print('Tenemos este error: $e');

  } finally {
    print('Fin del Try Catch');
  }

  // ================

  print('Fin de programa');
}

// ====================================================

Future<String> httpGet(String url) async {

  await Future.delayed(const Duration(seconds: 2));
  throw Exception('No hay parámetros en la URL');
  // return 'Respuesta de la petición http';
}


