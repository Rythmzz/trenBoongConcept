import 'dart:convert';
import '../../domain/entity/category_entity.dart';
import '../../domain/entity/category_products_entity.dart';
import '../../domain/entity/product_entity.dart';
import 'api_constant.dart';
import 'package:http/http.dart' as http;

class ProductService {
  static Future<List<CategoryProductsEntity>?> getAllCategoryProducts() async {
    try {
      var url = Uri.parse(
          '${ApiConstant.baseUrl}${ApiConstant.usersEndpoint}?populate=*');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<CategoryProductsEntity>? card = praseUserFromJson(response.body);
        return card;
      }
    } catch (e) {
      //log(e.toString());
    }
    return null;
  }

  static List<CategoryProductsEntity> praseUserFromJson(String json) {
    Map<String, dynamic> parsed = jsonDecode(json);
    final cards = parsed['data'][0];
    return cards.map((card) => CategoryProductsEntity(
        category: CategoryEntity.fromJson(card['category']),
        products: card['products']
            .map((product) => ProductEntity.fromJson(product))));
  }
}
