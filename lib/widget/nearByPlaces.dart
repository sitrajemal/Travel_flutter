import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_s/models/nearyPlacemode.dart';
import 'package:travel_s/widget/distance.dart';

class nearByPlaces extends StatelessWidget {
  const nearByPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(14, (index) {
        
      return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: SizedBox(
          height: 130,
          width: double.maxFinite,
          child: Card(
            elevation: 0.4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(nearByPlace[index].image),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Foresty Air",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const Text("Russian Foresty"),
                          const SizedBox(
                            height: 10,
                          ),
                          const distance(),
                          const Spacer(),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 13,
                                color: Colors.yellow.shade900,
                              ),
                              const Text(
                                "4.7",
                                style: TextStyle(fontSize: 13),
                              ),
                              const  Spacer(),
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue),
                                         text: "\$22",
                              children: [TextSpan(
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                      text: "/person"

                              ),

                              ]

                               ),

                                 

                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }));
  }
}
