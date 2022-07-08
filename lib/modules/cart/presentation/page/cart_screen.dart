import 'package:alternative_zarcony_app_task/modules/cart/cubit/cart_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/widget/app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/cart_list_design.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
        body: BlocBuilder<CartCubit, CartState>(builder: (context, state) {
          return Center(
            child: state is! CartInitial
                ? CartListWidget(
                    items: CartCubit.get(context).data,
                    onIncrease: (index) {
                      CartCubit.get(context).increaseQuantity(index);
                    },
                    onDecrease: (index) {
                      CartCubit.get(context).decreaseQuantity(index);
                    },
                  )
                : const CircularProgressIndicator(),
          );
        }));
  }
}
