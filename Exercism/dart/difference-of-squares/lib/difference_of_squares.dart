import 'dart:math';

class DifferenceOfSquares {

  int squareOfSum(int number) {
    int sum = 0;
    for (int i = 1; i <= number; i++){
      sum += i;
    }
    return pow(sum, 2).toInt();
  }

  int sumOfSquares(int number) {
    int sum = 0;
    for (int i = 1; i <= number; i++) {
      sum += pow(i, 2).toInt();
    }
    return sum;
  }

  int differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquares(number);
  }
}
