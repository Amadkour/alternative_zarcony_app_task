
import '../model/address_model.dart';
 abstract class  AddressRepoInterface{
  Future<List<AddressModel>> fetchData();
}