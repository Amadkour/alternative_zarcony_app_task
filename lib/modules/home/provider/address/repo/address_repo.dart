

import '../model/address_model.dart';
import 'address_repo_interface.dart';

class AddressRepo implements AddressRepoInterface{
  @override
  Future<List<AddressModel>> fetchData() async {
    return [];
  }

}