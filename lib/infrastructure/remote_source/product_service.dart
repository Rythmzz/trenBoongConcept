import 'dart:convert';
import '../../domain/entity/category_entity.dart';
import '../../domain/entity/category_products_entity.dart';
import '../../domain/entity/product_entity.dart';
import 'api_constant.dart';
import 'package:http/http.dart' as http;

class ProductService {
  static Future<List<ProductEntity>> getProductsByCategoryId(String id) async {
    try {
      //url sort by category
      var url = Uri.parse(
          '${ApiConstant.baseUrl}${ApiConstant.productsEndpoint}?filters[drink][drink_category][id][\$eq]=${id}&populate=deep,3');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<ProductEntity> products = praseUserFromJson(response.body);
        return products;
      }
    } catch (e) {
      print(e);
    }
    return [];
  }

  static List<ProductEntity> praseUserFromJson(String json) {
    Map<String, dynamic> parsed = jsonDecode(json);
    final productsJson = parsed['data'];
    List<ProductEntity> products = [];
    productsJson
        .forEach((product) => products.add(ProductEntity.fromJson(product)));
    return products;
  }
}
