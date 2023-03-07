import 'dart:convert';

import 'package:catalog/models/company.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetAllCompany with ChangeNotifier{
  List<Company> _allCompany = [];
  List<Company> get allCompany {
    return [..._allCompany];
  }
  
  Future<void> getAllCompany()async{
    Uri url = Uri.parse('https://catalog.pythonanywhere.com/api/get-all-company/');
    http.Response response = await http.get(url);
    List data = jsonDecode(response.body);
    _allCompany = data.map((e) => Company.getCompany(e),).toList();
    // print(_allCompany);
    notifyListeners();
  }
  
}