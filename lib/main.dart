import 'package:alternative_zarcony_app_task/modules/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/constant/di/injection.dart';
import 'core/constant/them.dart';
import 'modules/cart/cubit/cart_cubit.dart';
import 'modules/dashboard/presentation/pages/dashboard_page.dart';
import 'package:alternative_zarcony_app_task/core/constant/di/injection.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Popular Persons',
        debugShowCheckedModeBanner: false,
        theme: appTheme,

        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => sl<DashboardCubit>(),
            ),
            BlocProvider.value(
              value: sl<CartCubit>(),
            ),
          ],
          child: const DashboardPage(),
        ),
    );
  }
}
