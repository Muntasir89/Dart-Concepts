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