class ArmstrongNumbers {
  bool isArmstrongNumber(String number){
    int expo = number.length;
    BigInt suma = number.split('').map((digit) {
      return BigInt.from(int.parse(digit)).pow(expo);
    }).reduce((a,b) => a + b);

    return suma == BigInt.parse(number);
  }
}
