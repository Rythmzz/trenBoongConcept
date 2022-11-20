import 'dart:convert';
import 'dart:developer';
import 'package:tren_boong_concept/domain/entity/card_entity.dart';
import 'api_constant.dart';
import 'package:http/http.dart' as http;

class CardService {
  static Future<List<CardEntity>?> getCardsByUser(String id) async {
    try {
      var url = Uri.parse(
          '${ApiConstant.baseUrl}${ApiConstant.usersEndpoint}?populate=cards&filters[app_users][id][\$eq]=$id');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<CardEntity>? card = praseCardFromJson(response.body);
        return card;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  static Future<CardEntity?> getLastedCardByUser(String id) async {
    try {
      var url = Uri.parse(
          '${ApiConstant.baseUrl}${ApiConstant.usersEndpoint}?populate=cards&filters[app_users][id][\$eq]=$id');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        //CardEntity? card = praseCardFromJson(response.body);
        //return card;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  static List<CardEntity> praseCardFromJson(String json) {
    Map<String, dynamic> parsed = jsonDecode(json);
    final cards = parsed['data'][0]['cards']['data'];
    return cards.map((card) => CardEntity.fromJson(card));
  }
}
