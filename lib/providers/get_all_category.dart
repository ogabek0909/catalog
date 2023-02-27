import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/category.dart';

class GetAllCategory with ChangeNotifier {
  List<Category> _allCategories = [];
  List<Category> get allCategories {
    return _allCategories;
  }

  Future<void> getAllCategory() async {
    Uri url =
        Uri.parse('https://catalog.pythonanywhere.com/api/get-all-category/');
    // print('object');
    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      List data = jsonDecode(response.body);
      _allCategories = data
          .map(
            (e) => Category(
              name: e['name'],
              id: e['id'],
              categoryimages: e['categoryimages'],
            ),
          )
          .toList();
          print(response.body);
      print(_allCategories[0].categoryimages[0]);
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}
