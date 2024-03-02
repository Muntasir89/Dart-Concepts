void main() {
  final human = Human('Nice Name', 2);
  final Human(:name, :age) = human;
  print(name);
  print(age);
}

class Human {
  final String name;
  final int age;
  Human(this.name, this.age);
}
