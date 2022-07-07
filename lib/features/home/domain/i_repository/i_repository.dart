import 'package:photo_gallery/features/home/domain/entity/banner_item.dart';
import 'package:photo_gallery/features/home/domain/entity/venu.dart';

abstract class IRepository {
  Future<List<BannerItem>> getBannersList();
  Future<List<Venue>> getVenuesList();
}
