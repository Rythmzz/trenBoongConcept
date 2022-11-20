import '../domain/entity/order_entity.dart';

class OrderFormat {
  static String getStringListOrderName(OrderEntity order) {
    String listName = '';
    order.orderDetails.forEach((element) {
      listName +=
          'X' + element.quantity.toString() + ' ' + element.product.name + ', ';
    });
    return listName;
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
      count += element.totalPrice;
    });
    return price = count.toString() + 'đ';
  }
}
