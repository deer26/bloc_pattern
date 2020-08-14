import 'package:bloc_patter/model/product.dart';

class ProductService {
  static List<Product> products = new List<Product>();

  static ProductService _singleton = ProductService._internal();

  factory ProductService() {
    return _singleton;
  }

  ProductService._internal();

  static List<Product> getAll() {
    products.add(Product(id: 1, name: "Acer Laptop", price: 5000));
    products.add(Product(id: 2, name: "JBL Earphone", price: 400));
    products.add(Product(id: 1, name: "Logitech Mause", price: 350));
    return products;
  }
}
