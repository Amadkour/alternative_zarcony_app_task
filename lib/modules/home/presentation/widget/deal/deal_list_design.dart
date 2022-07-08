import 'package:flutter/cupertino.dart';
import '../../../../../core/constant/color.dart';
import '../../../provider/deal/model/deal_model.dart';
import 'deal_item_design.dart';

class DealListWidget extends StatelessWidget {
  const DealListWidget({Key? key, required this.deals, this.onTap})
      : super(key: key);
  final List<DealModel> deals;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Deals of the day',
          style: TextStyle(
              fontSize: 15,
              color: AppColors.blackColor,
              height: 1.5,
              fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(10),
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => DealItemDesign(
            dealModel: deals[index],
            imageBackgroundColor: AppColors.randomColors[index % 4],
            onTap: () {
              onTap!(index);
            },
          ),
          itemCount: deals.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 20,
            );
          },
        ),
      )
    ]);
  }
}
