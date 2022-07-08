import 'package:flutter/cupertino.dart';

import '../../../../core/constant/color.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      child: CupertinoSearchTextField(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 8.0, right: 4, top: 2),
          child: Icon(
            CupertinoIcons.search,
            color: AppColors.iconColor,
          ),
        ),
        decoration: BoxDecoration(
            color:AppColors.secondaryBackground,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: AppColors.regularGrey)
        ),
        style: TextStyle(
            color: AppColors.iconColor,
            decorationColor: AppColors.iconColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 13),
        placeholder: 'Search in thousands of products',
      ),);
  }
}
