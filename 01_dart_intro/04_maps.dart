void main(){

  // Esto es un objeto.

  final Map<String, dynamic> pokemon = {
    'name': 'picachu',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['verdadero'],
    'sprites': {
      1: 'picachu/front.png',
      2: 'picachu/back.png'
    }
  };
  
  print(pokemon);
  print('Name: ${ pokemon['name'] }');
  print('Sprites: ${ pokemon['sprites'] }');

  print('Back: ${ pokemon['sprites'][2] }');
  print('Front: ${ pokemon['sprites'][1] }');
}