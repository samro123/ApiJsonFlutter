class Product{
  int productId;
  String productName;
  int quantity;
  double price;

  Product({
        required this.productId,
        required this.productName,
        required this.quantity,
        required this.price,
        });
  factory Product.fromJson(map){
    return Product(
        productId: map['productId'],
        productName: map['productName'],
        quantity: map['quantity'],
        price: map['price'],
    );
  }

  static List<Product> parseData(map){
    var list = map['products'] as List;
    return list.map((product) => Product.fromJson(product)).toList();
  }
}