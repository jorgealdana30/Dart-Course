class CoatOfArms {
  final String png;
  final String svg;

  CoatOfArms({
    required this.png,
    required this.svg,
  });

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
    png: json["png"],
    svg: json["svg"],
  );

  Map<String, dynamic> toJson() => {
    "png": png,
    "svg": svg,
  };
}