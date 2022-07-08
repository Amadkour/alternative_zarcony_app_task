import 'package:alternative_zarcony_app_task/modules/cart/presentation/widget/quantity_change_button_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/widget/my_image.dart';
import '../../provider/model/cartModel.dart';
class CartItemDesign extends StatelessWidget {
  const CartItemDesign({Key? key, required this.cartModel, required this.imageBackgroundColor, this.onIncrease, this.onDecrease}) : super(key: key);
  final CartModel cartModel;
  final Color imageBackgroundColor;
  final void Function()? onIncrease;
  final void Function()? onDecrease;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(left: 7,top: 7),
              child: Row(
                children: [
                  MyImage(
                    url: cartModel.image,
                    width: 60,
                    height: 60,
                    boarderRadius: 10,
                    defaultDesign: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: imageBackgroundColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          cartModel.productName!,
                          style: TextStyle(
                              fontSize: 12,
                              color: AppColors.blackColor,
                              height: 1.5,
                              fontWeight: FontWeight.bold),
                        ),
                            Text(
                              cartModel.weight!,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.darkGreyColor,
                                  fontWeight: FontWeight.w500),
                            ),


                            Text(
                              '\$${cartModel.price!}',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w500),
                            )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              QuantityChangeButtonDesign(onTap: onDecrease!, isIncreaseButton: false,cartModel: cartModel,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  cartModel.quantity!,
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.blackColor,
                      height: 1.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
              QuantityChangeButtonDesign(onTap: onIncrease!, isIncreaseButton: true,cartModel: cartModel,)
            ],
          )
        ],
      ),
    );
  }
}
