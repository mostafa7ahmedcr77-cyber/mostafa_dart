
// get --> بيخليني اقرا القيمة
// class student {
//     String _name = "Ali" ;

//     String get name {
//         return _name ;
//     }
// }

// void main() {
//     student s1 = student() ;
//     print(s1.name);
// }

// set --> بيخليني اغير قيمة بطريقة منظمة

class Employee {
    void work() {
        print("Employee is working");
    }
}

class Developer extends Employee {
      @override 
      void work() {
        print("Developer is writing code");
      }
}

class Designer extends Employee {
     @override
     void work() {
        print("Designer is designing UI");
     }
}

void main() {

    Developer dev = Developer();
    Designer des = Designer();

    dev.work();
    des.work();
}
