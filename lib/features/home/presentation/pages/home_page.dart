import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery/features/home/presentation/cubit/home_cubit.dart';
import 'package:photo_gallery/features/home/presentation/widgets/carousel_banner_widget.dart';
import 'package:photo_gallery/features/home/presentation/widgets/venues_list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      if (state is BannersLoaded) {
        return Column(
          children: [
            CarouselBanner(banners: state.banners),
            Expanded(child: VenuesList(venues: state.venues))
          ],
        );
      } else if (state is FailedToLoad) {
        return const Center(
          child: Text(
            "Failed to load data!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    }));
  }
}
