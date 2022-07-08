import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/cartModel.dart';
import 'cart_repo.dart';

class MockCartRepo implements CartRepo{
  @override
  Future<List<CartModel>> fetchData() async {
    String data = await rootBundle
        .loadString('assets/mocks/cart_mock.json');
    return (json.decode(data)as List).map((e)=>CartModel.fromJson(e)).toList();

  }


}