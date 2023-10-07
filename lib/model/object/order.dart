import 'package:calljson/model/object/product.dart';
import 'package:calljson/model/object/user.dart';
class Order{
  int orderId;
  User user;
  List<Product> products;

  Order({required this.orderId,required this.user, required this.products});
  factory Order.fromJson(map){
    return Order(
        orderId: map['orderId'],
        user: User.fromJson(map['user']),
        products: Product.parseData(map),
    );
  }

  Map<String, dynamic> toJson() =>{
    'orderId': orderId,
    'user': user,
    'products': products,
  };
}