import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constant/color.dart';
import '../../../../../core/widget/favorite_button.dart';
import '../../../../../core/widget/my_image.dart';
import '../../../provider/deal/model/deal_model.dart';

class DealItemDesign extends StatelessWidget {
  const DealItemDesign({Key? key, required this.dealModel, required this.imageBackgroundColor, this.onTap}) : super(key: key);
  final DealModel dealModel;
  final Color imageBackgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 7,top: 7),
            child: Row(
              children: [
                MyImage(
                  url: dealModel.image,
                  width: 90,
                  height: 90,
                  boarderRadius: 10,
                  defaultDesign: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: imageBackgroundColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dealModel.name!,
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.blackColor,
                          height: 1.5,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Pieces ${dealModel.quantity!}',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.location,
                          color: AppColors.darkGreyColor,
                          size: 15,
                        ),
                        Text(
                          dealModel.time!,
                          style: TextStyle(
                              fontSize: 12,
                              color: AppColors.darkGreyColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${dealModel.price!}',
                          style: TextStyle(
                              fontSize: 12,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          '\$${dealModel.oldPrice!}',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 12,
                              color: AppColors.darkGreyColor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: WishListButton(
              active: dealModel.isFavorite!,
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
