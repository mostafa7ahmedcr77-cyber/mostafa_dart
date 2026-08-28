import 'dart:math';

abstract class Shape {
  double getArea();
  double getPerimeter();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() {
    return pi * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * pi * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }

  @override
  double getPerimeter() {
    return 2 * (width + height);
  }
}

class Triangle extends Shape {
  double side1;
  double side2;
  double side3;

  Triangle(this.side1, this.side2, this.side3);

  @override
  double getArea() {
    double s = getPerimeter() / 2;

    return sqrt(
      s *
          (s - side1) *
          (s - side2) *
          (s - side3),
    );
  }

  @override
  double getPerimeter() {
    return side1 + side2 + side3;
  }
}

void main() {
  List<Shape> shapes = [
    Circle(5),
    Rectangle(10, 5),
    Triangle(3, 4, 5),
  ];

  for (Shape shape in shapes) {
    print('Area: ${shape.getArea().toStringAsFixed(2)}');
    print(
      'Perimeter: ${shape.getPerimeter().toStringAsFixed(2)}',
    );
    print('--------------------');
  }
}