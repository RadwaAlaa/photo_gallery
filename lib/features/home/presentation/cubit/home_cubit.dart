import 'package:bloc/bloc.dart';
import 'package:photo_gallery/features/home/data/repository/repository.dart';
import 'package:photo_gallery/features/home/domain/entity/banner_item.dart';
import 'package:photo_gallery/features/home/domain/entity/venu.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial()) {
    getAllBanners();
  }

  List<BannerItem> allBanners = <BannerItem>[];
  List<Venue> filteredVenues = <Venue>[];
  List<Venue> allVenues = <Venue>[];

  Repository repository = Repository();

  getAllBanners() async {
    allBanners = await repository.getBannersList();
    allVenues = await repository.getVenuesList();

    filteredVenues = allVenues
        .where(
          (element) => element.type == allBanners.first.type,
        )
        .toList();
    print("filtered " + filteredVenues.length.toString());

    emit(BannersLoaded(banners: allBanners, venues: filteredVenues));
  }

  filterVenues(int index) {
    var selectedBannerType = allBanners[index].type;
    filteredVenues = allVenues
        .where((element) => element.type == selectedBannerType)
        .toList();

    emit(BannersLoaded(banners: allBanners, venues: filteredVenues));

    print("filtered " + filteredVenues.length.toString());
  }
}
