num pro(num x, num y) {
  return x * y;
}

num add(num x, num y) {
  return x + y;
}

void show(var result) {
  print("Output is $result");
}

List<int> isOddnum(List<int> numlist) {
return (numlist.where((oddlist) => oddlist % 2 != 0).toList());
}
List<int> isEvennum(List<int> numlist) {
return (numlist.where((evenlist) => evenlist % 2 == 0).toList());
}
List<int> isPosnum(List<int> numlist) {
return (numlist.where((poslist) => poslist > 0 ).toList());
}
List<int> isNegnum(List<int> numlist) {
return (numlist.where((neglist) => neglist < 0 ).toList());
}

List<int> numbers = [1, 2, -3, 4, 5, -6, 7, 8, -9, 10];
void main(List<String> args) {
  List<int> list = isEvennum(numbers);
  print(list);

  list = isOddnum(numbers);
  print(list);

  list = isPosnum(numbers);
  print(list);

  list = isNegnum(numbers);
  print(list);
}
