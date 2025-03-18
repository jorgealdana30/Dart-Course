class Maps {
  final String googleMaps;
  final String openStreetMaps;

  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
    googleMaps: json["googleMaps"],
    openStreetMaps: json["openStreetMaps"],
  );

  Map<String, dynamic> toJson() => {
    "googleMaps": googleMaps,
    "openStreetMaps": openStreetMaps,
  };
}