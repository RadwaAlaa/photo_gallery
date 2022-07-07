import 'package:photo_gallery/features/home/data/datasource/remote_data_source.dart';
import 'package:photo_gallery/features/home/domain/entity/venu.dart';
import 'package:photo_gallery/features/home/domain/entity/banner_item.dart';
import 'package:photo_gallery/features/home/domain/i_repository/i_repository.dart';

class Repository implements IRepository {
  RemoteDataSource remoteDataSource = RemoteDataSource();

  @override
  Future<List<BannerItem>> getBannersList() async {
    try {
      return await remoteDataSource.getBannersList();
    } catch (e) {
      print(e.toString());
      return <BannerItem>[];
    }
  }

  @override
  Future<List<Venue>> getVenuesList() async {
    try {
      return await remoteDataSource.getVenuesList();
    } catch (e) {
      print(e.toString());
      return <Venue>[];
    }
  }
}
