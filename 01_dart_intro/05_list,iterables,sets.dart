void main(){
  // Esto es un array o sea Listado.
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('Listado original $numbers');
  print('Longitud del array ${ numbers.length }');
  print('Index 0: ${ numbers[0] }');
  print('Primer Index: ${ numbers.first }');
  print('Último Index: ${ numbers.last }');
  print('Orden Invertido: ${ numbers.reversed }'); // Cambia las llaves por los parénteris, estos últimos indican que ya es tipo iterable

  final numerosInvertidos = numbers.reversed;
  print('Iterable: ${ numerosInvertidos }'); // Iterable
  print('List: ${ numerosInvertidos.toList() }'); // lo convierte a lista
  print('Set: ${ numerosInvertidos.toSet() }'); // lo convierte a Set, un listado que elimina los valores duplicados

  final numerosMayores5 = numbers.where( (num) {
    return num > 5;
  });

  print('Números mayores a 5 Iterables: ${ numerosMayores5 }');
  print('Números mayores a 5 sin duplicados: ${ numerosMayores5.toSet() }');
 
}