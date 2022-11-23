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
    final product = json['attributes'];
    final drink = product['drink'];
    return ProductEntity(
        id: json['id'].toString(),
        name: drink['data']['attributes']['name'],
        imgUrl: drink['data']['attributes']['urlImage'],
        price: int.parse(product['price']));
  }
}
