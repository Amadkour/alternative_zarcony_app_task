import 'package:alternative_zarcony_app_task/modules/cart/provider/model/cartModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';

class QuantityChangeButtonDesign extends StatelessWidget {
  const QuantityChangeButtonDesign(
      {Key? key,
      required this.onTap,
      required this.isIncreaseButton,
      required this.cartModel})
      : super(key: key);
  final void Function() onTap;
  final bool isIncreaseButton;
  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        if ((isIncreaseButton &&
                int.parse(cartModel.quantity!) <
                    int.parse(cartModel.maxQuantity!)) ||
            (!isIncreaseButton &&
                int.parse(cartModel.quantity!) >
                    int.parse(cartModel.minQuantity!))) {
          onTap.call();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (isIncreaseButton &&
                        int.parse(cartModel.quantity!) ==
                            int.parse(cartModel.maxQuantity!)) ||
                    (!isIncreaseButton &&
                        int.parse(cartModel.quantity!) ==
                            int.parse(cartModel.minQuantity!))
                ? AppColors.regularGrey
                : AppColors.quantityButtonBackgroundColor),
        child: Icon(
          isIncreaseButton ? CupertinoIcons.add : CupertinoIcons.minus,
          color: AppColors.quantityButtonColor,
        ),
      ),
    );
  }
}
