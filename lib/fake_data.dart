class Place {
  final String name;
  late String photo;
  final String country;

  Place({required this.name, required this.country, required String photo}) {
    this.photo = "assets/images/$photo";
  }
}

class Category {
  final String name;
  late String photo;

  Category({required this.name, required String photo}) {
    this.photo = "assets/images/$photo";
  }
}

var cityCategories = [
  "All",
  "Popular",
  "Recommended",
  "Most Viewed",
  "Most Rated",
  "Trending",
  "Historical"
];

var categories = [
  Category(name: "Mountain", photo: "mountain.png"),
  Category(name: "Beach", photo: "beach.png"),
  Category(name: "Camp", photo: "camp.png"),
  Category(name: "Club", photo: "club.png"),
  Category(name: "Sea", photo: "sea.png"),
  Category(name: "Hotel", photo: "hotel.png"),
];

var places = [
  Place(name: "Colesseum", country: "Rome", photo: "colesseum.jpg"),
  Place(name: "Mount Bromo", country: "Indonesia", photo: "mount_bromo.jpg"),
  Place(name: "Istanbul", country: "Turkey", photo: "istanbul.jpg"),
  Place(name: "Paris", country: "France", photo: "paris.jpg"),
  Place(name: "Ankara", country: "Turkey", photo: "ankara.jpg"),
  Place(name: "Bali", country: "Indonesia", photo: "bali.jpg"),
];
