import 'dart:convert';
import 'dart:developer';

import '../../domain/entity/user_entity.dart';
import 'api_constant.dart';
import 'package:http/http.dart' as http;

class UserService {
  static Future<UserEntity?> getUserByPhoneNumber(String phoneNumb) async {
    try {
      var url = Uri.parse(ApiConstant.baseUrl +
          ApiConstant.usersEndpoint +
          '?filters[phoneNumber][\$eq]=' +
          phoneNumb);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        UserEntity model = praseUserFromJson(response.body);
        return model;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  static UserEntity praseUserFromJson(String json) {
    Map<String, dynamic> parsed = jsonDecode(json);
    final user = parsed['data'][0];
    return UserEntity.fromJson(user);
  }
}
