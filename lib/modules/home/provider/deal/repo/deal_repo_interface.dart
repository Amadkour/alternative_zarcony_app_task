
 import '../model/deal_model.dart';
abstract class  DealRepoInterface{
  Future<List<DealModel>> fetchData();
}