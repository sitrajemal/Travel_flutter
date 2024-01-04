
class TouristPlace{
final String name;
final String image;

  TouristPlace({
    required this.name, 
    required this.image
    });
}

List<TouristPlace> touristPlaces =[
  TouristPlace(name: "mountain", image: "assets/icon/mountain.png"),
     TouristPlace(name: "Beach", image: "assets/icon/beach.png"),
     TouristPlace(name: "forest", image: "assets/icon/forest.png"),
     TouristPlace(name: "desert", image: "assets/icon/desert.png"),
     TouristPlace(name: "city", image: "assets/icon/city.png"),
];