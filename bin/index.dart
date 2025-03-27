// Abstract class Vehicle
abstract class Vehicle {
  // Protected variable (In Dart, we use `_` to make it private)
  int _speed = 0;

  // Abstract method move
  void move();

  // Non-abstract method to set speed
  void setSpeed(int speed) {
    _speed = speed;
  }

  // Getter for encapsulated speed
  int get speed => _speed;
}

// Subclass Car that extends Vehicle
class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at $_speed km/h");
  }
}

// Main function
void main() {
  // Create an object of Car
  Car myCar = Car();

  // Set the speed
  myCar.setSpeed(60);

  // Call the move method
  myCar.move();
}
