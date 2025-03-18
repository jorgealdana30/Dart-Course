import 'dart:convert';

import 'classes/pais.dart';

List<Pais> paisFromJson(String str) => List<Pais>.from(json.decode(str).map((x) => Pais.fromJson(x)));

String paisToJson(List<Pais> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));