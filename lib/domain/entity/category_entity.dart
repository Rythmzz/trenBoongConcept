class CategoryEntity {
  final String id;
  final String name;
  final String imageUrl;

  CategoryEntity(
      {required this.id, required this.name, required this.imageUrl});

  factory CategoryEntity.fromJson(Map<String, dynamic> json) {
    final attributes = json['attributes'];
    return CategoryEntity(
        id: 'èwefwefwef', name: 'ưefwef', imageUrl: 'ưefwefwef');
  }
}
