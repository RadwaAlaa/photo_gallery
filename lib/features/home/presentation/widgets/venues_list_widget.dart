import 'package:flutter/material.dart';
import 'package:photo_gallery/features/home/domain/entity/venu.dart';

class VenuesList extends StatelessWidget {
  List<Venue> venues;
  VenuesList({
    required this.venues,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: venues.length,
        itemBuilder: (BuildContext context, int index) {
          var venue = venues[index];
          return Container(
            alignment: Alignment.centerLeft,
            //height: 100,
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          fit: BoxFit.fitHeight,
                          venue.images[0],
                          height: 80,
                          width: 90,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            venue.shortName,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff6bbbae)),
                          ),
                          Text(
                            venue.locationName + ", " + venue.emirate,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )
                        ])
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 1,
                  color: const Color(0xffc9e2de),
                )
              ],
            ),
          );
        });
  }
}
