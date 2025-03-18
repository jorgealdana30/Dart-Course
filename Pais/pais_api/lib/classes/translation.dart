class Translation {
  final String official;
  final String common;

  Translation({
    required this.official,
    required this.common,
  });

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    official: json["official"],
    common: json["common"],
  );

  Map<String, dynamic> toJson() => {
    "official": official,
    "common": common,
  };
}