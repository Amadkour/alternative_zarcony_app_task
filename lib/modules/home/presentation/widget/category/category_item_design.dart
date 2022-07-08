import 'package:flutter/cupertino.dart';
import '../../../../../core/constant/color.dart';
import '../../../../../core/widget/my_image.dart';
import '../../../provider/category/model/CategoryModel.dart';

class CategoryItemDesign extends StatelessWidget {
  const CategoryItemDesign({Key? key, required this.categoryModel, required this.imageBackgroundColor}) : super(key: key);
  final CategoryModel categoryModel;
  final Color imageBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyImage(
          url: categoryModel.image,
          width: 60,
          height: 60,
          boarderRadius: 10,
          defaultDesign: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: imageBackgroundColor

            ),
          ),
        ),
        const SizedBox(width: 10,),
        Text(
          categoryModel.name!,
          style: TextStyle(
              fontSize: 13,
              color: AppColors.blackColor,
              height: 1.5,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
