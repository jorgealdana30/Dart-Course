import '../../shared/utils/read_and_write.dart';

void main() {
  ReadAndWrite.writeConsole('Calculadora de temperatura');
  double grados = ReadAndWrite.readDouble('Digite temperatura C° o F°');
  ReadAndWrite.writeConsole('De C° a F° es: ${convertirTemperatura(grados: grados, aCelsius: false)}');
  ReadAndWrite.writeConsole('De F° a C° es: ${convertirTemperatura(grados: grados)}');
}

double convertirTemperatura({required double grados, bool aCelsius = true}){
  return aCelsius ? ((grados - 32) * (5/9)) : ((grados * (9/5)) + 32);
}