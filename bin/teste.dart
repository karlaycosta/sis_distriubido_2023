void main() {
  int a = 10;
  print(a);
  teste().then((value) {
    a = value;
    print(a);
  });
  print(a);
}

Future<int> teste() async {
  teste2();
  return 30;
}

Future<void> teste2() async {
  print('Teste2');
}
