void main() {
 print('Inicio de programa');

 httpGet('https://jgmcdigital.com').then((value) {
  print(value);
 }).catchError((err) {
  print('Error: $err');
 });

 print('Fin de programa');
}

// ====================================================

Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 2), () {

    throw 'Error en la petición';
    // return 'Respuesta de la petición http';
  });
}


