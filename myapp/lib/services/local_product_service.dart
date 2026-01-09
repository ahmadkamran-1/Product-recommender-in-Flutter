import '../models/product_model.dart';

class LocalProductService {
  static final List<Product> _products = [
    Product(
      id: '1',
      name: 'Wireless Headphones',
      category: 'Audio',
      price: 299.99,
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop',
    ),
    Product(
      id: '2',
      name: 'Smart Watch Ultra',
      category: 'Wearables',
      price: 399.99,
      rating: 4.9,
      imageUrl:
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400&h=400&fit=crop',
    ),
    Product(
      id: '3',
      name: 'Premium Phone Case',
      category: 'Accessories',
      price: 42.49,
      rating: 4.4,
      imageUrl:
          'https://images.unsplash.com/photo-1592286927505-1def25115558?w=400&h=400&fit=crop',
    ),
    Product(
      id: '4',
      name: 'Bluetooth Speaker',
      category: 'Audio',
      price: 129,
      rating: 4.7,
      imageUrl:
          'https://images.unsplash.com/photo-1589003077984-894e133da19?w=400&h=400&fit=crop',
    ),
    Product(
      id: '5',
      name: 'USB-C Cable',
      category: 'Accessories',
      price: 15.99,
      rating: 4.5,
      imageUrl:
          'https://images.unsplash.com/photo-1625948515291-69613efd103f?w=400&h=400&fit=crop',
    ),
    Product(
      id: '6',
      name: 'Laptop Stand',
      category: 'Office',
      price: 49.99,
      rating: 4.6,
      imageUrl:
          'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=400&h=400&fit=crop',
    ),
  ];

  static List<Product> getProducts() => List.unmodifiable(_products);

  static void addProduct(Product p) => _products.add(p);

  static void deleteProduct(String id) =>
      _products.removeWhere((p) => p.id == id);

  static List<Product> getRecommended() =>
      _products.where((p) => p.rating >= 4.0).toList();

  static String generateId() =>
      DateTime.now().millisecondsSinceEpoch.toString();
}
