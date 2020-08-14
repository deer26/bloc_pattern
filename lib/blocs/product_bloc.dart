import 'dart:async';

import 'package:bloc_patter/data/product_service.dart';
import 'package:bloc_patter/model/product.dart';

class ProductBloc {
  final productStreamController = StreamController.broadcast();

  Stream get getStream => productStreamController.stream;

  List<Product> getAll() {
    return ProductService.getAll();
  }

  void dispose() {
    productStreamController.close();
  }
}

final productBloc = ProductBloc();
