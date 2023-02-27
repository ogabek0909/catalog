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
    print('object');
    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print(" fsadfdsa ${response.body}");
    } catch (error) {
      print(error);
    }
  }
}
