import '../domain/entity/order_entity.dart';
import 'package:intl/intl.dart';

class OrderFormat {
  static final currencyFormatter = NumberFormat('#,##0', 'ID');
  static String getStringListOrderName(OrderEntity order) {
    String listName = '';
    order.orderDetails.forEach((element) {
      listName +=
          'X' + element.quantity.toString() + ' ' + element.product.name + ', ';
    });
    return listName;
  }

  static String vndFormat(int numb) {
    return currencyFormatter.format(numb) + 'đ';
  }

  static int getTotalItem(OrderEntity order) {
    int count = 0;
    order.orderDetails.forEach((element) {
      count += element.quantity;
    });
    return count;
  }

  static String getTotalPrice(OrderEntity order) {
    String price = '';
    int count = 0;
    order.orderDetails.forEach((element) {
      count += element.price * element.quantity;
    });
    return price = OrderFormat.vndFormat(count);
  }
}
