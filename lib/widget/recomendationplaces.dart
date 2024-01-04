import 'package:flutter/material.dart';
import 'package:travel_s/models/recomended_placesmodel.dart';
import 'package:ionicons/ionicons.dart';
class RecomendPlace extends StatelessWidget {
  const RecomendPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return SizedBox(
              width: 230,
              child: Card(
                elevation: 0.4,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(17),
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            recomendPlace[index].image,
                            width: double.maxFinite,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                             recomendPlace[index].name,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.yellow.shade700,
                            ),
                           const   Text(
                              "4.4", 
                              style: TextStyle(fontSize: 12),
                            ),

                            
                               ], 
                        ),    
                           
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const  Icon(
                                  Ionicons.location,  
                                  color: Colors.blue,     //
                                  size: 14,
                                ),
                                Text(
                                  recomendPlace[index].location,
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ), // row of second
                                
                     
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 4),
              ),
          itemCount: recomendPlace.length),
    );
  }
}
