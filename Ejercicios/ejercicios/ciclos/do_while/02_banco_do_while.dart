import '../../shared/utils/read_and_write.dart';

main() {
  int accountNumber, amountAccount;
  int sumaAcreedor = 0;
  do {
    accountNumber = ReadAndWrite.readNumber('Ingrese numero de cuenta: ');
    amountAccount = ReadAndWrite.readNumber('Ingrese el saldo de la cuenta: ');

    ReadAndWrite.writeConsole('Estado de cuenta: ');
    if (amountAccount == 0) {
      ReadAndWrite.writeConsole('Nulo');
      continue;
    }

    if (amountAccount < 0) {
      ReadAndWrite.writeConsole('Deudor');
      continue;
    }

    if (amountAccount > 0) {
      ReadAndWrite.writeConsole('Acreedor');
      sumaAcreedor += amountAccount;
      continue;
    }
  } while (accountNumber > 0);

  ReadAndWrite.writeConsole(
      'La suma de las cuentas acreedoras es: $sumaAcreedor');
}
