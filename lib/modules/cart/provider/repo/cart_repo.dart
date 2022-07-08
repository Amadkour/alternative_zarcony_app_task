
 import '../model/cartModel.dart';

abstract class  CartRepo {
  Future<List<CartModel>> fetchData();

 }