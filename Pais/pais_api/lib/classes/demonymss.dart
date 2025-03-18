import 'eng.dart';

class Demonyms {
  final Eng eng;
  final Eng fra;

  Demonyms({
    required this.eng,
    required this.fra,
  });

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
    eng: Eng.fromJson(json["eng"]),
    fra: Eng.fromJson(json["fra"]),
  );

  Map<String, dynamic> toJson() => {
    "eng": eng.toJson(),
    "fra": fra.toJson(),
  };
}