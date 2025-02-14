main() {
  accionConductor(Semaforo.Rojo);
}

enum Semaforo { Rojo, Amarillo, Verde }

void accionConductor(Semaforo semaforo) {
  switch (semaforo) {
    case Semaforo.Rojo:
      print('Detenerse');
      break;
    case Semaforo.Amarillo:
      print('Precaución');
      break;
    case Semaforo.Verde:
      print('Avanzar');
      break;
  }
}
