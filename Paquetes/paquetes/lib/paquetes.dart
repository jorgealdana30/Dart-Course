import 'package:http/http.dart' as http;
import 'package:paquetes/classes/respuesta.dart';

void getRequestRespuesta() {
  final String url = "https://reqres.in/api/users?page=2";
  http.get(Uri.parse(url)).then((respose) {
    final Respuesta respuesta = respuestaFromJson(respose.body);
    print('Page: ${respuesta.page}');
    print('per_page: ${respuesta.perPage}');
    print('id del tercer elemento: ${respuesta.personas[2].id}');
  });
}