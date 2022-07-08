import 'dart:convert';
import 'package:flutter/services.dart';
import '../model/deal_model.dart';
import 'deal_repo_interface.dart';
class MockDealRepo implements DealRepoInterface{
  @override
  Future<List<DealModel>> fetchData() async {
    String data = await rootBundle
        .loadString('assets/mocks/deal_mock.json');
    return (json.decode(data)as List).map((e)=>DealModel.fromJson(e)).toList();
  }

}