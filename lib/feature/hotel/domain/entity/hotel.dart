class Hotel {
  Hotel({
    required this.id,
    required this.name,
    required this.address,
    required this.minimalPrice,
    required this.priceForIt,
    required this.rating,
    required this.ratingName,
    required this.imageUrls,
    required this.aboutTheHotel,
  });

  final int id;
  final String name;
  final String address;
  final String minimalPrice;
  final String priceForIt;
  final int rating;
  final String ratingName;
  final List<String> imageUrls;
  final HotelInformation aboutTheHotel;
}

class HotelInformation {
  HotelInformation({
    required this.description,
    required this.peculiarities,
  });

  final String description;
  final List<String> peculiarities;
}
