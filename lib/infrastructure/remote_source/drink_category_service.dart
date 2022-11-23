import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/entity/category_entity.dart';
import 'api_constant.dart';

class DrinkCategoryService {
  static Future<List<CategoryEntity>> getAllCategory() async {
    try {
      var url = Uri.parse(
          '${ApiConstant.baseUrl}${ApiConstant.drinkCategoryEndpoint}?populate=deep,3');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<CategoryEntity> card = praseCardFromJson(response.body);
        return card;
      }
    } catch (e) {
      print(e);
    }
    return [];
  }

  static List<CategoryEntity> praseCardFromJson(String json) {
    Map<String, dynamic> parsed = jsonDecode(json);
    final categoriesJson = parsed['data'];
    List<CategoryEntity> categories = [];
    categoriesJson.forEach(
        (category) => categories.add(CategoryEntity.fromJson(category)));
    return categories;
  }
}
