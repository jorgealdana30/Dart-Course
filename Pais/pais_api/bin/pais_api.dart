import 'package:http/http.dart' as http;
import 'package:pais_api/pais_api.dart' as pais_api;


void main(List<String> arguments) async {
  final String url = 'https://restcountries.com/v3.1/alpha/col';

  try {
    final http.Response response = await http.get(Uri.parse(url));
    final pais = pais_api.paisFromJson(response.body);


    print('===========================');
    print('Pais: ${pais.first.name.common}');
    print('Población: ${pais.first.population}');
    print('Fronteras: ');
    for (var border in pais.first.borders) {
      print('    $border');
    }
    print('Languages: ${pais.first.languages.spa}');
    print('Latitud: ${pais.first.latlng.first}');
    print('Longitud: ${pais.first.latlng.last}');
    print('Moneda: ${pais.first.currencies.cop.name}');
    print('Bandera: ${pais.first.flags.svg}');
    print('===========================');
  } catch (err) {
    print(err);
  }
}
