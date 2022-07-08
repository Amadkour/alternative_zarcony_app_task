import '../model/AddModel.dart';
 abstract class  AddRepoInterface{
  Future<List<AddModel>> fetchData();
}