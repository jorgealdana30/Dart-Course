import '../../shared/utils/read_and_write.dart';

main() {
  List<int> numbers = [2, 3, 4, 5, 6];
  List<int> squaredList = [];
  for (int number in numbers) {
    squaredList.add(number * number);
  }

  for (int squared in squaredList) {
    ReadAndWrite.writeConsole('$squared');
  }
}
