main() {
  estadoCompra(EstadoCompra.Pendiente);
}

enum EstadoCompra {
  Pendiente,
  Procesando,
  Enviado,
  Entregado,
  Cancelado
}

void estadoCompra(EstadoCompra estado){
  switch (estado) {
    case EstadoCompra.Pendiente: print('La compra está en estado pendiente.'); break;
    case EstadoCompra.Procesando: print('La compra se está procesando.'); break;
    case EstadoCompra.Enviado: print('La compra ha sido enviada exitosamente.'); break;
    case EstadoCompra.Entregado: print('La compra ha sido entregada exitosamente al destino.'); break;
    case EstadoCompra.Cancelado: print('La compra se ha cancelado, se hará devolución del dinero.'); break;
  }
}