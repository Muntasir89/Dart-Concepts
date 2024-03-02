# Dart-Concepts
It contains some basic concepts of dart language that is needed for flutter app developement.
# Factory Constructor

A factory constructor is a special type of constructor in Dart that allows you to create objects without using the `new` keyword. Instead, you can use a named constructor to define how the object should be created.

## How to Use the Factory Constructor

To use a factory constructor, you must first define the constructor as `factory`. Then, you can use the constructor to create objects just like any other constructor.

📝 Example:

```dart
class MyClass {
  final String name;
  final int age;
  
  MyClass(this.name, this.age);
  
  factory MyClass.fromMap(Map<String, dynamic> map) {
    final name = map['name'] as String;
    final age = map['age'] as int;
    return MyClass(name, age);
  }
}
```
## Benefits of Using a Factory Constructor
The main benefit of using a factory constructor is that it allows you to control the object creation process. You can perform any necessary calculations or data validations before returning the object. This can help you write more efficient and error-free code.

🚀 Another benefit is that it allows you to return a cached instance of an object instead of creating a new instance every time. This can be useful if you need to create many instances of an object and want to avoid the overhead of creating new instances.

### Benefits:

- ⚡️ Efficient object creation process.
- 🛡️ Controlled data validations.
- 🔄 Ability to return cached instances.

# Dynamic Variable
## var
**var** variable once assigned the type can not change. </br>
```dart
  void main() {
  var a = 10;
  print(a);
  a = 'Bob';
  print(a);
  a = 'c';
  print(a);
  a = 1.00012;
  print(a);
}

```
The above code will show error.
## dynamic
**dynamic** variable once assigned the type can be changed.
```dart
void main() {
  dynamic a = 10;
  print(a);
  a = 'Bob';
  print(a);
  a = 'c';
  print(a);
  a = 1.00012;
  print(a);
}
```
But this code will run. Here is the output:
```
10
Bob
c
1.00012
```
# Dart 3 New concepts
## Record
```dart
void main() {
  final values = giveMeSomeDoubles();
  print(values.point);
  print(values.greeting);
}

({double point, String greeting}) giveMeSomeDoubles() {
  return (point: 4.5, greeting: 'Hey!');
}
```
Output:
```
4.5
Hey!
```

## Pattern Matching
```dart
final list = [1, 2, 3];
final [a, b, c] = list;
print('$a $b $c');
```
Output:
```
1 2 3
```
What if, we need more variable for more value</br>
**or** we need to skip some value. Below is the code for both cases...
```dart
final list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
final [a, b, c, ...d] = list;
print('$a $b $c $d');
```
Output
```
1 2 3 [4, 5, 6, 7, 8, 9]
```
```dart
final list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
final [a, _, c, ...d] = list;
print('$a $c $d');
```
Here **b** is skipped.</br>
Output:
```
1 3 [4, 5, 6, 7, 8, 9]
```
With class related stuff. 
```dart
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
```
Output:
```
Nice Name
2
```
## MOdified Switch Cases
```dart
List<String> listItems = ['HI', 'man'];
switch (listItems) {
  case ['Hi' || 'HI', 'man' || 'MAN']:
    print('matched');
}
```
Output:
```
matched
```