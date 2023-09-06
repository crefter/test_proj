class Room {
  Room({
    required this.id,
    required this.name,
    required this.price,
    required this.pricePer,
    required this.peculiarities,
    required this.imageUrls,
  });

  final int id;
  final String name;
  final String price;
  final String pricePer;
  final List<String> peculiarities;
  final List<String> imageUrls;
}
