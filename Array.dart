import 'dart:ffi';

class Employee {

// Constructor
Employee(this.name, this.id, this.gender) {

availableVacations = 16;
availablePermissionHours = 26;
actualSalary = salary;
}


// Attributes
String name;
String id;
String gender;

late int availableVacations;
late int availablePermissionHours;
late double actualSalary;

// قيم الخصم والمرتب الاساسي
static double deductionPerHour = 15.5;
static double deductionPerDay = 85.5;
static double salary = 1500;

// Methods
void view() {
print("Name: $name");
print("Id: $id");
print("Actual Salary: $actualSalary");
}
void viewDetailed () {
  view();
  print('Available Vacations: $availableVacations');
  print('Available Permission Hours: $availablePermissionHours');
  print('Gender: $gender');
}

//أخذ اِجازة
void takevacation(int numOfDays){
  availableVacations = availableVacations - numOfDays;

  if ( availableVacations < 0) {
    vacationDeduction();
  } 
}
// حساب خصم الاجازة
void vacationDeduction() {
  double deduction = availableVacations * deductionPerDay ;
  actualSalary = salary;
  actualSalary = actualSalary + deduction;
}

//أخذ اذن 
void takePermission(int numOfDays) {
  availablePermissionHours = availablePermissionHours - numOfDays ;

  if (availablePermissionHours < 0) {
    double deduction = availablePermissionHours * deductionPerHour ;
    actualSalary = actualSalary + deduction ;

  }
}
}

void main () {
  Employee mostafa = Employee("Mostafa", '9', 'M');
  mostafa.takevacation(15);
  mostafa.takevacation(2);
  mostafa.takePermission(20);
  mostafa.view();
}