void main() {
  final values = giveMeSomeDoubles();
  print(values.point);
  print(values.greeting);
}

({double point, String greeting}) giveMeSomeDoubles() {
  return (point: 4.5, greeting: 'Hey!');
}
