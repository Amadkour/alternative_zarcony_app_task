import '../model/CategoryModel.dart';
import 'category_repo_interface.dart';

class CategoryRepo implements CategoryRepoInterface{
  @override
  Future<List<CategoryModel>> fetchData() async {
    return [];
  }

}