import 'dart:convert';

import 'package:pais_api/classes/translation.dart';

import 'capital_info.dart';
import 'car.dart';
import 'coats_of_arms.dart';
import 'currency.dart';
import 'demonymss.dart';
import 'flags.dart';
import 'gini.dart';
import 'idd.dart';
import 'languages.dart';
import 'maps.dart';
import 'name.dart';

class Pais {
  final Name name;
  final List<String> tld;
  final String cca2;
  final String ccn3;
  final String cca3;
  final String cioc;
  final bool independent;
  final String status;
  final bool unMember;
  final Currencies currencies;
  final Idd idd;
  final List<String> capital;
  final List<String> altSpellings;
  final String region;
  final String subregion;
  final Languages languages;
  final Map<String, Translation> translations;
  final List<double> latlng;
  final bool landlocked;
  final List<String> borders;
  final double area;
  final Demonyms demonyms;
  final String flag;
  final Maps maps;
  final int population;
  final Gini gini;
  final String fifa;
  final Car car;
  final List<String> timezones;
  final List<String> continents;
  final Flags flags;
  final CoatOfArms coatOfArms;
  final String startOfWeek;
  final CapitalInfo capitalInfo;

  Pais({
    required this.name,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    required this.cioc,
    required this.independent,
    required this.status,
    required this.unMember,
    required this.currencies,
    required this.idd,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    required this.borders,
    required this.area,
    required this.demonyms,
    required this.flag,
    required this.maps,
    required this.population,
    required this.gini,
    required this.fifa,
    required this.car,
    required this.timezones,
    required this.continents,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.capitalInfo,
  });

  factory Pais.fromJson(Map<String, dynamic> json) => Pais(
    name: Name.fromJson(json["name"]),
    tld: List<String>.from(json["tld"].map((x) => x)),
    cca2: json["cca2"],
    ccn3: json["ccn3"],
    cca3: json["cca3"],
    cioc: json["cioc"],
    independent: json["independent"],
    status: json["status"],
    unMember: json["unMember"],
    currencies: Currencies.fromJson(json["currencies"]),
    idd: Idd.fromJson(json["idd"]),
    capital: List<String>.from(json["capital"].map((x) => x)),
    altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
    region: json["region"],
    subregion: json["subregion"],
    languages: Languages.fromJson(json["languages"]),
    translations: Map.from(json["translations"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
    latlng: List<double>.from(json["latlng"].map((x) => x)),
    landlocked: json["landlocked"],
    borders: List<String>.from(json["borders"].map((x) => x)),
    area: json["area"],
    demonyms: Demonyms.fromJson(json["demonyms"]),
    flag: json["flag"],
    maps: Maps.fromJson(json["maps"]),
    population: json["population"],
    gini: Gini.fromJson(json["gini"]),
    fifa: json["fifa"],
    car: Car.fromJson(json["car"]),
    timezones: List<String>.from(json["timezones"].map((x) => x)),
    continents: List<String>.from(json["continents"].map((x) => x)),
    flags: Flags.fromJson(json["flags"]),
    coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
    startOfWeek: json["startOfWeek"],
    capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name.toJson(),
    "tld": List<dynamic>.from(tld.map((x) => x)),
    "cca2": cca2,
    "ccn3": ccn3,
    "cca3": cca3,
    "cioc": cioc,
    "independent": independent,
    "status": status,
    "unMember": unMember,
    "currencies": currencies.toJson(),
    "idd": idd.toJson(),
    "capital": List<dynamic>.from(capital.map((x) => x)),
    "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
    "region": region,
    "subregion": subregion,
    "languages": languages.toJson(),
    "translations": Map.from(translations).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "latlng": List<dynamic>.from(latlng.map((x) => x)),
    "landlocked": landlocked,
    "borders": List<dynamic>.from(borders.map((x) => x)),
    "area": area,
    "demonyms": demonyms.toJson(),
    "flag": flag,
    "maps": maps.toJson(),
    "population": population,
    "gini": gini.toJson(),
    "fifa": fifa,
    "car": car.toJson(),
    "timezones": List<dynamic>.from(timezones.map((x) => x)),
    "continents": List<dynamic>.from(continents.map((x) => x)),
    "flags": flags.toJson(),
    "coatOfArms": coatOfArms.toJson(),
    "startOfWeek": startOfWeek,
    "capitalInfo": capitalInfo.toJson(),
  };
}