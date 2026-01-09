import '../models/product_model.dart';
import 'dart:math';

class LocalProductService {
  static final List<Product> _products = [];

  static List<Product> getProducts() {
    return _products;
  }

  static void addProduct(Product p) {
    _products.add(p);
  }

  static void deleteProduct(String id) {
    _products.removeWhere((p) => p.id == id);
  }

  static List<Product> getRecommended() {
    return _products.where((p) => p.rating >= 4).toList();
  }

  static String generateId() {
    return Random().nextInt(100000).toString();
  }
}
