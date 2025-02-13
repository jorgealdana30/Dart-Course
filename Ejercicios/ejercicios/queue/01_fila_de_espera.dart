import 'dart:collection';

main() {
  Queue<String> clientes = Queue();
  clientes.addAll(['Jorge', 'Andrea', 'Daniel', 'Yina', 'Soco']);

  //Añadir cliente
  clientes.add('Rita');

  //Mostrar clientes
  print(clientes);

  //Atender clientes
  while (clientes.isNotEmpty) {
    String clienteAtendido = clientes.removeFirst();
    print('Atendiendo a: $clienteAtendido');
    print('Clientes pendientes: $clientes');
  }

  print('Todos los clientes han sido atendidos');
}
