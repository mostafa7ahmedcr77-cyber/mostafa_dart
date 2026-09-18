class car {
  String model;
  int prasec ;
  int speed ;

  car(this.model , this.prasec , this.speed);

  void displayInfo() {
    print("model : $model");
    print("prasec : $prasec M");
    print("speed : $speed K");
    print('---------------');
  }
}

void main() {
  car car1 =car("BMW", 5, 225);
  car car2 = car("marsids", 3, 220);

  car1.displayInfo();
  car2.displayInfo();
}