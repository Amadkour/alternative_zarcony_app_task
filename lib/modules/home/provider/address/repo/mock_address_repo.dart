import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/address_model.dart';
import 'address_repo_interface.dart';

class MockAddressRepo implements AddressRepoInterface{
  @override
  Future<List<AddressModel>> fetchData() async {
    String data = await rootBundle
        .loadString('assets/mocks/user_address_mock.json');
    return (json.decode(data)as List).map((e)=>AddressModel.fromJson(e)).toList();
  }

}