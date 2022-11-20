class ProductEntity {
  final String id;
  final String name;
  final String imgUrl;
  final int price;

  ProductEntity(
      {required this.id,
      required this.name,
      required this.imgUrl,
      required this.price});
  factory ProductEntity.fromJson(Map<String, dynamic> json) {
    final attributes = json['attributes'];
    return ProductEntity(
        id: 'èwefwefwef', name: 'ưefwef', imgUrl: 'ưefwefwef', price: 213213);
  }
}
