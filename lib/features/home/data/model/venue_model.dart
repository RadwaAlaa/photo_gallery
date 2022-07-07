import 'dart:convert';

import 'package:photo_gallery/features/home/domain/entity/venu.dart';

class VenueModel extends Venue {
  VenueModel(
      {required super.type,
      required super.name,
      required super.shortName,
      required super.locationName,
      required super.emirate,
      required super.images});

  factory VenueModel.fromJson(Map<String, dynamic> json) {
    var imagesJsonList = json['images'] as List;

    return VenueModel(
      type: json['type'],
      name: json['name'],
      locationName: json['location_name'],
      shortName: json['short_name'],
      emirate: json['emirate'],
      images: imagesJsonList.map((e) => e.toString()).toList(),
    );
  }
}

class VenuesResponse {
  List<VenueModel> venuesList;
  VenuesResponse({required this.venuesList});

  factory VenuesResponse.fromJson(dynamic json) {
    List<dynamic> venuesJsonList = jsonDecode(json);

    List<VenueModel> venuesResultList = <VenueModel>[];
    venuesJsonList.forEach(
      (element) {
        venuesResultList.add(VenueModel.fromJson(element));
      },
    );
    return VenuesResponse(venuesList: venuesResultList);
  }
}
