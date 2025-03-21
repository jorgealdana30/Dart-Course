import 'native_name.dart';

class Name {
  final String common;
  final String official;
  final NativeName nativeName;

  Name({
    required this.common,
    required this.official,
    required this.nativeName,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    common: json["common"],
    official: json["official"],
    nativeName: NativeName.fromJson(json["nativeName"]),
  );

  Map<String, dynamic> toJson() => {
    "common": common,
    "official": official,
    "nativeName": nativeName.toJson(),
  };
}