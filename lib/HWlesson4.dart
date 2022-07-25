class Car{
  int speed = 10;
  String name = 'Mazda';

  void toPrint(){
    print('Имя: $name, Скорость: $speed');
  }
}

Car registered({int? speed, String? name}){
  var car = Car();
  car.speed = speed??car.speed;
  car.name = name??car.name;

  car.toPrint();
  return car;
}