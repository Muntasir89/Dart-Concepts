void main() {
  final list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final [a, b, c, ...d] = list;
  print('$a $b $c $d');
}
