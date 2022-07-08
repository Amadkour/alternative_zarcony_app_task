import 'package:alternative_zarcony_app_task/modules/cart/provider/repo/mock_cart_repo.dart';
import 'package:alternative_zarcony_app_task/modules/home/provider/adds/model/AddModel.dart';
import 'package:alternative_zarcony_app_task/modules/home/provider/adds/repo/mock_add_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit() : super(AddInitial()) {
    getDashboardDat();
  }

  List<AddModel> data = [];

  getDashboardDat() async {
    data = await MockAddRepo().fetchData();
    emit(AddLoaded());
  }


  static AddCubit get(context) => BlocProvider.of(context);
}