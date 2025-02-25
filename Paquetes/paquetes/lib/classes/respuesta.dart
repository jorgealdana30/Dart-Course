// To parse this JSON data, do
//
//     final respuesta = respuestaFromJson(jsonString);

import 'dart:convert';

import 'package:paquetes/classes/persona.dart';
import 'package:paquetes/classes/support.dart';

Respuesta respuestaFromJson(String str) => Respuesta.fromJson(json.decode(str));

String respuestaToJson(Respuesta data) => json.encode(data.toJson());

class Respuesta {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<Persona> personas;
  Support support;

  Respuesta({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.personas,
    required this.support,
  });

  factory Respuesta.fromJson(Map<String, dynamic> json) => Respuesta(
    page: json['page'],
    perPage: json['per_page'],
    total: json['total'],
    totalPages: json['total_pages'],
    personas: List<Persona>.from(json['data'].map((x) => Persona.fromJson(x))),
    support: Support.fromJson(json['support']),
  );

  Map<String, dynamic> toJson() => {
    'page': page,
    'per_page': perPage,
    'total': total,
    'total_pages': totalPages,
    'data': List<dynamic>.from(personas.map((x) => x.toJson())),
    'support': support.toJson(),
  };
}
