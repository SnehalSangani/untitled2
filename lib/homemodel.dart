// To parse this JSON data, do
//
//     final homemodel = homemodelFromJson(jsonString);

import 'dart:convert';

List<Homemodel> homemodelFromJson(String str) => List<Homemodel>.from(json.decode(str).map((x) => Homemodel.fromJson(x)));

String homemodelToJson(List<Homemodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Homemodel {
  String verse;
  String romanized;
  String wordMeanings;
  String translation;

  Homemodel({
    required this.verse,
    required this.romanized,
    required this.wordMeanings,
    required this.translation,
  });

  factory Homemodel.fromJson(Map<String, dynamic> json) => Homemodel(
    verse: json["verse"],
    romanized: json["romanized"],
    wordMeanings: json["wordMeanings"],
    translation: json["translation"],
  );

  Map<String, dynamic> toJson() => {
    "verse": verse,
    "romanized": romanized,
    "wordMeanings": wordMeanings,
    "translation": translation,
  };
}
