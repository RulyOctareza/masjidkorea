import 'package:equatable/equatable.dart';

class MasjidModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  final String kitchen;
  final String bedroom;
  final String lemari;
  final String location;
  final String address;

  const MasjidModel({
    required this.id,
    this.name = '',
    this.city = '',
    this.imageUrl = '',
    this.rating = 0.0,
    this.bedroom = '',
    this.kitchen = '',
    this.lemari = '',
    this.location = '',
    this.address = '',
  });

  factory MasjidModel.fromJson(String id, Map<String, dynamic> json) =>
      MasjidModel(
        id: id,
        name: json['name'],
        city: json['city'],
        imageUrl: json['imageUrl'],
        rating: json['rating'].toDouble(),
        kitchen: json['kitchen'],
        bedroom: json['bedroom'],
        lemari: json['lemari'],
        location: json['location'],
        address: json['address'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'city': city,
        'imageUrl': imageUrl,
        'rating': rating,
        'kitchen': kitchen,
        'bedroom': bedroom,
        'lemari': lemari,
      };

  @override
  List<Object?> get props =>
      [id, name, city, imageUrl, rating, kitchen, bedroom, lemari];
}
