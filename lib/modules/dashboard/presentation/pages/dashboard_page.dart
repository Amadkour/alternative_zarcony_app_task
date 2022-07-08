import 'package:alternative_zarcony_app_task/modules/cart/cubit/cart_cubit.dart';
import 'package:alternative_zarcony_app_task/modules/dashboard/cubit/dashboard_cubit.dart';
import 'package:alternative_zarcony_app_task/modules/home/cubit/add/add_cubit.dart';
import 'package:alternative_zarcony_app_task/modules/home/cubit/address/address_cubit.dart';
import 'package:alternative_zarcony_app_task/modules/home/cubit/category/category_cubit.dart';
import 'package:alternative_zarcony_app_task/modules/home/cubit/deal/deal_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/di/injection.dart';
import '../../../../core/widget/my_image.dart';
import '../../../cart/presentation/page/cart_screen.dart';
import '../../../home/presentation/page/home_screen.dart';
import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';

import '../widget/cart_icon_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return state is! DashboardInitial? CurvedNavBar(
                actionButton: CurvedActionBar(
                    onTab: (value) {
                    },
                    activeIcon: Container(
                      padding: const EdgeInsets.all(7),
                      height: 60,width: 60,
                      decoration:  BoxDecoration(
                          color: AppColors.primaryColor, shape: BoxShape.circle),
                      child: const CartIconWidget(),
                    ),
                    text: ""),
                activeColor:AppColors.primaryColor,
                navBarBackgroundColor: Colors.white,
                inActiveColor: Colors.black45,
                appBarItems: List.generate(
                    DashboardCubit.get(context).data.length,
                    (index) => FABBottomAppBarItem(
                        activeIcon: MyImage(
                          url: 'assets/images/navbar/${ DashboardCubit.get(context).data[index].title}.svg',
                          height: 20,
                          width: 20,
                          color: AppColors.primaryColor,
                          fit: BoxFit.fitHeight,
                        ),
                        inActiveIcon: MyImage(
                          url: 'assets/images/navbar/${ DashboardCubit.get(context).data[index].title}.svg',
                          height: 20,
                          width: 20,
                          color: AppColors.darkGreyColor,
                          fit: BoxFit.fitHeight,
                        ),
                        text:  DashboardCubit.get(context).data[index].title)),
                bodyItems: _buildScreens(),
                actionBarView: const Text('Cart'),
              ): const CircularProgressIndicator();
      },
    );
  }

  List<Widget> _buildScreens() {
    return  [
       MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => DealCubit(),
          ),
          BlocProvider(
            create: (_) => AddressCubit(),
          ),
          BlocProvider(
            create: (_) => AddCubit(),
          ),
          BlocProvider(
            create: (_) => CategoryCubit(),
          ),
        ],
        child: const HomeScreen(),
      ),
      const Text('news'),
      const Text('favorite'),
       BlocProvider(
          create: (_) => sl<CartCubit>(),
          child: const CartScreen())
    ];
  }
}
