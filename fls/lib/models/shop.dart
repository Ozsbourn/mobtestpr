import "package:fls/models/product.dart";
import "package:flutter/material.dart";

// For hot reload like in react. Have to install provider and use NotifyListeners in methods that change store
class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Product 1", 
      price: 99.99, 
      description: "Item description...", 
      imagePath: "",
    ),
    Product(
      name: "Product 2", 
      price: 99.99, 
      description: "Item description...", 
      imagePath: "",
    ),
    Product(
      name: "Product 3", 
      price: 99.99, 
      description: "Item description...", 
      imagePath: "",
    ),
    Product(
      name: "Product 4", 
      price: 99.99, 
      description: "Item description...", 
      imagePath: "",
    ),
    Product(
      name: "Product 5", 
      price: 99.99, 
      description: "Item description...", 
      imagePath: "",
    ),
  ];

  // Product list getter
  List<Product> get shop => _shop;

  void addToShop(Product item) {
    _shop.add(item);
    notifyListeners();
  }
  void removeFromShop(Product item) {
    _shop.remove(item);
    notifyListeners();
  }
}