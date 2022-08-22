import 'package:flutter/material.dart';
import 'package:lesson_provider/shop-app/models/category_model.dart';
import 'package:lesson_provider/shop-app/models/product_model.dart';
import 'package:lesson_provider/shop-app/services/mock_data.dart';

class HomeProvider extends ChangeNotifier {
  int orderNumber = 0;
  List<Category> categories = [];
  List<Product> products = [];

  void onTapBasket() {
    // TODO: write your code
  }

  void getAllCategories() {
    categories = categoriesMock.map((category) => Category.fromJson(category)).toList();
  }

  void getProducts(String categoryId) {
    products = productsMock
        .where((product) => product["categoryId"] == categoryId)
        .map((product) => Product.fromJson(product)).toList();
  }

  int get gridSize {
    if(products.length >= 4) {
      return 4;
    } else {
      return products.length;
    }
  }
}