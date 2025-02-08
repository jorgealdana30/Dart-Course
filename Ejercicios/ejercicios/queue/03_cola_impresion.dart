
import 'dart:collection';

Queue<String> printQueue = Queue();

main() {
  addDocuments('Juegos.pdf');
  addDocuments('libros.pdf');
  addDocuments('recetas.pdf');

  print('Cola de Impresion');
  showQueue();

  while (printQueue.isNotEmpty){
    print('Imprimiendo...');
    print(printDocuments());
  }

  print('Documentos ímpresos totalmente');
}

void addDocuments(String document) => printQueue.add(document);

void showQueue() => print(printQueue);

String printDocuments() => printQueue.removeFirst();
