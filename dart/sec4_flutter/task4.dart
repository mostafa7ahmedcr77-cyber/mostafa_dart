class Car {
  String brand;
  String model;
  int year;
  int speed = 0;

  Car(this.brand, this.model, this.year);

  void accelerate() {
    speed += 10;
  }

  void brake() {
    speed -= 10;

    if (speed < 0) {
      speed = 0;
    }
  }

  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
    print('Speed: $speed km/h');
    print('-------------------');
  }
}

void main() {
  Car car = Car('Toyota', 'Corolla', 2024);

  car.displayInfo();

  car.accelerate();
  car.accelerate();
  car.accelerate();

  car.displayInfo();

  car.brake();
  car.displayInfo();

  car.brake();
  car.brake();
  car.brake();

  car.displayInfo();
}