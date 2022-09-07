import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class EventModel {
  EventModel({
    required this.id,
    required this.title,
    required this.image,
    required this.date,
    required this.location,
    required this.description,
  });

  String id;
  String title;
  String image;
  String date;
  String location;
  String description;

  static Future<String> getJson() {
    return rootBundle.loadString('assets/json/data_event.json');
  }

  factory EventModel.fromRawJson(String str) =>
      EventModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        date: json["date"],
        location: json["location"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "date": date,
        "location": location,
        "description": description,
      };
}
