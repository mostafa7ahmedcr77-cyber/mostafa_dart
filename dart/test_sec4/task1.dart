class student{
  String name ;
  int age ;
  int grade ;

  student (this.age , this.name , this.grade);

  void displayInfo() {
    print("name : $name");
    print("age : $age");
    print("grade : $grade");



  }
}

void main() {

  student student1=student(20, "MOhamed Harez", 85);
  student1.displayInfo();
}