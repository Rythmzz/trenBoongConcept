import '../../domain/entity/user_entity.dart';

class UserRepository {
  UserEntity? fetchUserById(String id) {
    return UserEntity('0172612386543', 'Trnh Quo PHong');
  }

  UserEntity? fetchAlreadyUser() {
    // lay id user tu local storegrade
    String id = '';

    //return fetchUserById(id);
    return null;
  }
}
