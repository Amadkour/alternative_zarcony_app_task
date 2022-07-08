import 'package:alternative_zarcony_app_task/modules/cart/provider/repo/mock_cart_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../provider/model/cartModel.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial()){
    getCartDat();
  }
  List<CartModel> data = [];

  getCartDat() async {
    data = await MockCartRepo().fetchData();
    emit(CartLoaded());
  }

  increaseQuantity(int index) {
    data[index].quantity = (int.parse(data[index].quantity!) + 1).toString();
    emit(QuantityChanged());
  }

  decreaseQuantity(int index) {
    data[index].quantity = (int.parse(data[index].quantity!) - 1).toString();
    emit(QuantityChanged());
  }
  double get totalPrice {
    return data.fold(
        0.0, (total, current) => total + double.parse(current.price!) * int.parse(current.quantity!));
  }
  static CartCubit get(context) => BlocProvider.of(context);

}
