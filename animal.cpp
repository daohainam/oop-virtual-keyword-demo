#include <iostream>

class Animal {
 public:
  void move() { printf("Moving"); }
};

class Dog : public Animal {
 public:
  void move() { printf("Running"); }
};

class Fish : public Animal {
 public:
  void move() { printf("Swimming"); }
};

Dog dog;
Fish fish;

int main() {
  Animal *a;

  a = &dog;
  a->move();

  a = &fish;
  a->move();
}
