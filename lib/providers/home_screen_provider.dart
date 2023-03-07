import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/category.dart';

class HomeScreenProvider with ChangeNotifier {
  List<Category> _allCategories = [];
  List<Category> get allCategories {
    return _allCategories;
  }

  Future<void> getAllCategory() async {
    Uri url =
        Uri.parse('https://catalog.pythonanywhere.com/api/get-all-category/');
    // print('object');
    try {
      final response =
          await http.get(url, headers: {'Content-Type': 'application/json'});
      List data = jsonDecode(response.body);
      _allCategories = data.map((e) => Category.getCategory(e)).toList();

      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}
