import 'dart:convert';

import 'package:photo_gallery/features/home/domain/entity/banner_item.dart';

class BannerModel extends BannerItem {
  BannerModel({required String image, required String type})
      : super(image: image, type: type);

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(image: json['image'], type: json['type']);
  }
}

class BannerResponse {
  List<BannerItem> bannersList;
  BannerResponse({required this.bannersList});

  factory BannerResponse.fromJson(dynamic json) {
    List<dynamic> bannersJsonList = jsonDecode(json);

    return BannerResponse(
        bannersList: bannersJsonList
            .map<BannerModel>((json) => BannerModel.fromJson(json))
            .toList());
  }
}
