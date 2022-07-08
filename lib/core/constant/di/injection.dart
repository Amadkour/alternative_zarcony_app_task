
import 'package:alternative_zarcony_app_task/modules/cart/cubit/cart_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../../modules/dashboard/cubit/dashboard_cubit.dart';
import '../../../modules/dashboard/provider/repo/repo.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // navigator
  sl.registerSingleton( DashboardCubit());
  sl.registerSingleton( CartCubit());

}
