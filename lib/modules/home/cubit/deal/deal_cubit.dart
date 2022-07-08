import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../provider/deal/model/deal_model.dart';
import '../../provider/deal/repo/mock_deal_repo.dart';

part 'deal_state.dart';

class DealCubit extends Cubit<DealState> {
  DealCubit() : super(DealInitial()){
    getDashboardDat();
  }

  List<DealModel> data = [];

  getDashboardDat() async {
    data = await MockDealRepo().fetchData();
    emit(DealLoaded());
  }
  changeFavorite(index) async {
    data[index].isFavorite=data[index].isFavorite==false;
    emit(DealLoaded());
  }

  static DealCubit get(context) => BlocProvider.of(context);
}