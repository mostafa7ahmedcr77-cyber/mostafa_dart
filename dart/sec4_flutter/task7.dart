class MobilePhone {
  String brand;
  String model;
  int storage;
  int battery;

  MobilePhone(this.brand, this.model, this.storage, this.battery);

  void usePhone(int hours) {
    battery -= hours * 10;

    if (battery < 0) {
      battery = 0;
    }
  }

  void chargePhone() {
    battery = 100;
  }

  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Storage: ${storage}GB');
    print('Battery: $battery%');
    print('-------------------');
  }
}

void main() {
  MobilePhone phone = MobilePhone(
    'Samsung',
    'Galaxy S24',
    256,
    100,
  );

  phone.displayInfo();

  phone.usePhone(5);
  phone.displayInfo();

  phone.usePhone(6);
  phone.displayInfo();

  phone.chargePhone();
  phone.displayInfo();
}