class CardEntity {
  final String id;
  final String name;
  final String urlImage;
  final int price;

  CardEntity(
      {required this.id,
      required this.name,
      required this.urlImage,
      required this.price});

  factory CardEntity.fromJson(Map<String, dynamic> json) {
    final attributes = json['attributes'];
    return CardEntity(
        id: json['id'],
        name: attributes['name'],
        urlImage: attributes['urlImage'],
        price: attributes['price']);
  }
}
