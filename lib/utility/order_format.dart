import '../domain/entity/order_entity.dart';
import 'package:intl/intl.dart';

class OrderFormat {
  static final currencyFormatter = NumberFormat('#,##0', 'ID');
  static String getStringListOrderName(OrderEntity order) {
    String listName = '';
    for (var element in order.orderDetails) {
      listName += 'x${element.quantity} ${element.product.name}';
      if (order.orderDetails.last != element) {
        listName += ', ';
      }
    }
    return listName;
  }

  static String vndFormat(int numb) {
    return '${currencyFormatter.format(numb)}đ';
  }

  static int getTotalItem(OrderEntity order) {
    int count = 0;
    for (var element in order.orderDetails) {
      count += element.quantity;
    }
    return count;
  }

  static String getTotalPrice(OrderEntity order) {
    String price = '';
    int count = 0;
    for (var element in order.orderDetails) {
      count += element.price * element.quantity;
    }
    return price = OrderFormat.vndFormat(count);
  }
}
