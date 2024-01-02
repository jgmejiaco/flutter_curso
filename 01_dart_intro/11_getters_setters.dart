void main(){

  final mySquare = Square(side: 10);

  mySquare.side = 8;

  print( 'Área: ${ mySquare.area }' );
  // print( 'Área: ${micuadrado.calcularArea()}' );
}

// =============================

class Square {
  double _side; // el guión bajo significa que es propiedad privada

  // ======================

  Square({required double side})
  : _side = side;

  // ======================

  double get area {
    return _side * _side;
  }
  
  // ======================

  set side(double value) {
    // print('Ajustar nuevo valor $value');
    
    if(value < 0) throw 'El valor debe ser mayor a 0 (cero)';

    _side = value;
  }

  // double calcularArea(){
  //   return _side * _side;
  // }
}