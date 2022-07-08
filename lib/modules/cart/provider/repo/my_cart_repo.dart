
import '../model/cartModel.dart';
import 'cart_repo.dart';

class MyCartRepo implements CartRepo{
  @override
  Future<List<CartModel>> fetchData() async {
    return const [];
  }
}