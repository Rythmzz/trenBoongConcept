class UserEntity {
  final String name;
  final String phoneNumber;

  UserEntity({required this.name, required this.phoneNumber});

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    final attributes = json['attributes'];
    return UserEntity(
        name: attributes['name'] as String,
        phoneNumber: attributes['phoneNumber'] as String);
  }
}
