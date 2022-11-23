import 'dart:convert';
import '../../domain/entity/order_detail_entity.dart';
import 'api_constant.dart';
import 'package:http/http.dart' as http;

class ReceiptDetailService {
  static Future<int?> createReceiptDetail(OrderDetailEntity orderDetail) async {
    try {
      var response = await sendPostReceiptDetail(orderDetail);
      if (response.statusCode == 200) {
        int id = ApiConstant.praseJsonFromBody(response.body)['data']['id'];
        return id;
      }
    } catch (e) {
      //print(e.toString());
    }
    return null;
  }

  // static OrderEntity praseUserFromJson(String json) {
  //   Map<String, dynamic> parsed = jsonDecode(json);
  //   final user = parsed['data'][0];
  //   return OrderEntity.fromJson(user);
  // }

  static Future<http.Response> sendPostReceiptDetail(
      OrderDetailEntity orderDetail) {
    return http.post(
      Uri.parse('${ApiConstant.baseUrl}/receipt-details'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, Object>{
        "data": {
          "unitPrice": orderDetail.price,
          "quanity": orderDetail.quantity,
          "product": orderDetail.product.id
        }
      }),
    );
  }
}
