void main() {
  List<String> listItems = ['HI', 'man'];
  switch (listItems) {
    case ['Hi' || 'HI', 'man' || 'MAN']:
      print('matched');
  }
}
