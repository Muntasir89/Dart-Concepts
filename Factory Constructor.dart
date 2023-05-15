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
