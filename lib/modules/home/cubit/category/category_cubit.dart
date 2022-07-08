import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../provider/category/model/CategoryModel.dart';
import '../../provider/category/repo/mock_category_repo.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial()){
    getDashboardDat();
  }

  List<CategoryModel> data = [];

  getDashboardDat() async {
    data = await MockCategoryRepo().fetchData();
    emit(CategoryLoaded());
  }


  static CategoryCubit get(context) => BlocProvider.of(context);
}
