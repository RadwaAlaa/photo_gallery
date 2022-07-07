import 'package:photo_gallery/core/app_urls.dart';
import 'package:photo_gallery/core/network_service.dart';
import 'package:photo_gallery/features/home/data/model/banner_model.dart';
import 'package:photo_gallery/features/home/data/model/venue_model.dart';
import 'package:photo_gallery/features/home/domain/entity/venu.dart';

import '../../domain/entity/banner_item.dart';

class RemoteDataSource {
  NetworkService networkService = NetworkService();

  Future<List<BannerItem>> getBannersList() async {
    var result = await networkService.getItems(AppUrls.bannerUrl);
    BannerResponse bannerResult = BannerResponse.fromJson(result);
    return bannerResult.bannersList;
  }

  Future<List<Venue>> getVenuesList() async {
    var result = await networkService.getItems(AppUrls.venuesUrl);

    VenuesResponse venuesResult = VenuesResponse.fromJson(result);
    return venuesResult.venuesList;
  }
}
