import 'package:alternative_zarcony_app_task/modules/home/provider/address/model/address_model.dart';
import 'package:alternative_zarcony_app_task/modules/home/provider/address/repo/mock_address_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'address_state.dart';

class AddressCubit extends Cubit<AddressState> {
  AddressCubit() : super(AddressInitial()){
    getDashboardDat();
  }

  List<AddressModel> data = [];

  getDashboardDat() async {
    data = await MockAddressRepo().fetchData();
    emit(AddressLoaded());
  }


  static AddressCubit get(context) => BlocProvider.of(context);
}