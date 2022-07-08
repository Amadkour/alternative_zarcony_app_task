import 'dart:convert';
import 'package:flutter/services.dart';

import '../model/CategoryModel.dart';
import 'category_repo_interface.dart';

class MockCategoryRepo implements CategoryRepoInterface{
  @override
  Future<List<CategoryModel>> fetchData() async {
    String data = await rootBundle
        .loadString('assets/mocks/category_mock.json');
    return (json.decode(data)as List).map((e)=>CategoryModel.fromJson(e)).toList();
  }

}