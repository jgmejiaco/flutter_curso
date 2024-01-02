void main(){
  final String pokemon = 'picachu';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor','real'];
  final sprites = <String>['picachu/front.png','picachu/back.png'];
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
}