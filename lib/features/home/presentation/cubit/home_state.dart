part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class BannersLoaded extends HomeState {
  List<BannerItem> banners;
  List<Venue> venues;
  BannersLoaded({required this.banners, required this.venues});
}

class FailedToLoad extends HomeState {}
