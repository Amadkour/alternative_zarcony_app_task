import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/AddModel.dart';
import 'add_repo_interface.dart';


class MockAddRepo implements AddRepoInterface{
  @override
  Future<List<AddModel>> fetchData() async {
    String data = await rootBundle
        .loadString('assets/mocks/add_mock.json');
    return (json.decode(data)as List).map((e)=>AddModel.fromJson(e)).toList();
  }

}