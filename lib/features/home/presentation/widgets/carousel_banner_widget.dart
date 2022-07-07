import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../domain/entity/banner_item.dart';
import '../cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarouselBanner extends StatelessWidget {
  List<BannerItem> banners;
  CarouselBanner({
    required this.banners,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        onPageChanged: (index, reason) {
          context.read<HomeCubit>().filterVenues(index);
        },
      ),
      items: banners
          .map((item) => Container(
              color: Colors.transparent,
              margin: const EdgeInsets.all(0),
              child: Image.network(item.image, loadingBuilder:
                  (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  ),
                );
              }, fit: BoxFit.fill, width: 1000)))
          .toList(),
    );
  }
}
