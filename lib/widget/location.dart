import 'package:flutter/material.dart';
class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
   child: Padding(
     padding: const EdgeInsets.all(8.0),
     child: Row(
     children: [
      Image.asset('assets/image/icons8-map-64.png',width: 100,),
   
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('Your Location',style: Theme.of(context).textTheme.headline6,),
        const SizedBox(height: 4,),
        Text("Addis Ababa, Ethiopia" ,style: Theme.of(context).textTheme.labelMedium)
   
   
   
        ],
      )
      
     ],
   
     ),
   ),

  );
    
  }
}