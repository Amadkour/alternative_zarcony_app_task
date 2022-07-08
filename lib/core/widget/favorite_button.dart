import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';

class WishListButton extends StatelessWidget {
  const WishListButton({Key? key, required this.onTap, required this.active})
      : super(key: key);
  final VoidCallback? onTap;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.transparent,
      radius: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).dialogBackgroundColor,
            shape: BoxShape.circle),
        padding: EdgeInsets.zero,
        child: CircleAvatar(
            radius: 15,
            backgroundColor: AppColors.whiteColor,
            child: Icon(
              active ? CupertinoIcons.heart_fill:CupertinoIcons.heart,
              color: active ? AppColors.primaryColor : AppColors.darkGreyColor,
            )),
      ),
    );
  }
}
