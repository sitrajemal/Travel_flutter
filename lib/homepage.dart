import 'package:flutter/material.dart';
import 'package:travel_s/widget/custom_widget.dart';
import 'package:travel_s/widget/location.dart';
import 'package:travel_s/widget/nearByPlaces.dart';
import 'package:travel_s/widget/recomendationplaces.dart';
import 'package:travel_s/widget/tourist_place.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning"),
            Text(
              " Sitra Jemal Nemani ",
              style: TextStyle(fontSize: 14, color: Colors.black38),
            ),
          ],
        ),
        actions: const [
          CustomWidget(
            icon: Icon(Icons.search_outlined),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 12),
            child: CustomWidget(
              icon: Icon(Icons.notifications_outlined),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children:   [


          const  Location(),
         const  SizedBox(height: 17),
          const TouristPlace(),
          const SizedBox(
            height: 17,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recommendation",
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
              ),

              TextButton(onPressed: (){}, child: const Text("View All",style: TextStyle(color: Colors.blue),))
            ],
          ),

       const SizedBox(
            height: 10,
          ),
        RecomendPlace(),
        const SizedBox(
            height: 10,
          ),

       Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Near By Places",
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
              ),

              TextButton(onPressed: (){}, child: const Text("View All",style: TextStyle(color: Colors.blue),))
            ],
          ),
const SizedBox(
            height: 10,
          ),
          const nearByPlaces(),

          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_outlined), label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: "BookMark"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "People"),
        ],
      ),
    );
  }
}
