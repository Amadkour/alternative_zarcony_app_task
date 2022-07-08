import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../provider/model/bottom_navigator_model.dart';
import '../provider/repo/repo.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial()) {
    getDashboardDat();
  }

  List<BottomNavigatorModel> data = [];

  getDashboardDat() async {
    data = BottomNavigatorRepo().fetchItems();
    emit(DashBoardLoaded());
  }


  static DashboardCubit get(context) => BlocProvider.of(context);
}