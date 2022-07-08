import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/color.dart';
import '../../../provider/category/model/CategoryModel.dart';
import 'category_item_design.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({Key? key, required this.categories})
      : super(key: key);
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore by Category',
                style: TextStyle(
                    fontSize: 15,
                    color: AppColors.blackColor,
                    height: 1.5,
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                child: Text(
                  'See All (36)',
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColors.darkGreyColor,
                      height: 1.5,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CategoryItemDesign(
              categoryModel: categories[index],
              imageBackgroundColor: AppColors.randomColors[index % 4],
            ),
            itemCount: categories.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 20,
              );
            },
          ),
        ),
      ],
    );
  }
}
