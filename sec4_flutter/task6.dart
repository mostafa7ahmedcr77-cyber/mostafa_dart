class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  void increaseSalary(double percentage) {
    salary += salary * percentage / 100;
  }

  void displayEmployee() {
    print('Name: $name');
    print('ID: $id');
    print('Salary: \$${salary.toStringAsFixed(2)}');
    print('-------------------');
  }
}

void main() {
  Employee employee1 = Employee('Ahmed', 101, 5000);
  Employee employee2 = Employee('Sara', 102, 6000);

  employee1.increaseSalary(10);
  employee2.increaseSalary(15);

  employee1.displayEmployee();
  employee2.displayEmployee();
}