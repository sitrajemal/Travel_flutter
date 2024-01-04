
import 'package:flutter/material.dart';
import 'package:travel_s/widget/location.dart';

class recomendedPlaces{
final String name;
final String image;
final String location;
final double rating;

  recomendedPlaces({
    required this.name,
     required this.image, 
     required this.location, 
     required this.rating});

}
List<recomendedPlaces> recomendPlace =[
  recomendedPlaces(name:"St Regis Bora" , image: "assets/image/tr43.jpg", location:"French Polynisia" , rating: 4.4) ,
  recomendedPlaces(name:"The River House" , image: "assets/image/imagesY3.png", location:"Island" , rating: 4.4) ,
  recomendedPlaces(name:"The Cave" , image: "assets/image/tr44.jpg", location:"Georgia" , rating: 4.4) ,
  recomendedPlaces(name:"Letsa ZOO" , image: "assets/image/tr4.jpg", location:"Ethio...rare" , rating: 7.4) ,
  recomendedPlaces(name:"Mountino" , image: "assets/image/tr2.jpg", location:"Paris,ON" , rating: 8.4) ,
  recomendedPlaces(name:"The chinease MasterShell" , image: "assets/image/imageY2.png", location:"China,Cortana" , rating: 2.4) ,
  recomendedPlaces(name:"Heart Stone" , image: "assets/image/tr42.jpg", location:"Mali,Bostina" , rating: 10.4) ,
  ];