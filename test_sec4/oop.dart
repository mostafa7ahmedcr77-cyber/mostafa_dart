class student {
  String name ;
  int age ;
  double grade; 

  student(this.name , this.age , this.grade);

  void displayInfo() {

    print("student Name : $name");
    print("student Age : $age");
    print("student Grade : $grade");
    print("----------------------");
  }
}
void main() {
  student student1=student("Mostafa", 20, 95 );
  student1.displayInfo();

  student student2=student('Ahmed', 55, 100);
  student2.displayInfo();
}