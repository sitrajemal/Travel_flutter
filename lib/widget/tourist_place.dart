import 'package:flutter/material.dart';
import 'package:travel_s/models/touristmodel.dart';

class TouristPlace extends StatelessWidget {
  const TouristPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Chip(
            backgroundColor: Colors.white,
            elevation: 0.4,
            label: Text(touristPlaces[index].name),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(touristPlaces[index].image)
            ),
          );
        },
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.only(left: 8)),
        itemCount: touristPlaces.length,
      ),
    );
  }
}
