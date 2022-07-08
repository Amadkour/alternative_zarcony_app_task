import 'package:alternative_zarcony_app_task/modules/cart/cubit/cart_cubit.dart';
import 'package:alternative_zarcony_app_task/modules/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/di/injection.dart';
import '../../../../core/widget/my_image.dart';

class CartIconWidget extends StatelessWidget {
  const CartIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
      return state is! DashboardInitial
          ? Stack(
              children: [
                Positioned(
                  // top: 12,
                  // left: 5,
                  child: SizedBox(
                    width: 39,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "\$${sl<CartCubit>().totalPrice.floor() == sl<CartCubit>().totalPrice ? sl<CartCubit>().totalPrice.toInt() : sl<CartCubit>().totalPrice}",
                            textAlign: TextAlign.right,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                    color: AppColors.whiteColor, fontSize: 12),
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  right: 0,
                  child: MyImage(
                    url: 'assets/images/navbar/center.svg',
                    height: 40,
                    width: 40,
                    fit: BoxFit.fitHeight,
                  ),
                )
              ],
            )
          : const MyImage(
              url: 'assets/images/navbar/center.svg',
              height: 20,
              width: 20,
              fit: BoxFit.fitHeight,
            );
    });
  }
}
