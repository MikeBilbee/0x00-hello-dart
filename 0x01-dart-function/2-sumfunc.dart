int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  var sumResult = add(a, b);
  var subResult = sub(a, b);
  return 'Add $a + $b = $sumResult\nSub $a - $b = $subResult';
}
