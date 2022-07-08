
import '../model/CategoryModel.dart';


 abstract class  CategoryRepoInterface{
  Future<List<CategoryModel>> fetchData();
}