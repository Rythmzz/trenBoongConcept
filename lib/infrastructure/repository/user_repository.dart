import '../../domain/entity/user_entity.dart';
import '../remote_source/user_service.dart';

class UserRepository {
  Future<UserEntity?> fetchUserByPhoneNumber(String phoneNumb) async {
    return await UserService.getUserByPhoneNumber(phoneNumb);
  }

  UserEntity? fetchAlreadyUser() {
    // lay id user tu local storegrade
    String id = '';

    //return fetchUserById(id);
    return null;
  }
}
