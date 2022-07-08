import 'package:flutter/cupertino.dart';
import '../../../../../core/constant/color.dart';
import '../../provider/model/cartModel.dart';
import 'cart_item_design.dart';

class CartListWidget extends StatelessWidget {
  const CartListWidget({Key? key, required this.items, this.onIncrease, this.onDecrease})
      : super(key: key);
  final List<CartModel> items;
  final void Function(int)? onIncrease;
  final void Function(int)? onDecrease;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(30,20,0,0),
        child: Text(
          'Cart',
          style: TextStyle(
              fontSize: 17,
              color: AppColors.blackColor,
              height: 1.5,
              fontWeight: FontWeight.bold),
        ),
      ),
      Flexible(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => CartItemDesign(
              cartModel: items[index],
              imageBackgroundColor: AppColors.randomColors[index % 4],
              onDecrease: ()=>onDecrease!(index),
              onIncrease: ()=>onIncrease!(index),
            ),
            itemCount: items.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 20,
              );
            },
          ),
        ),
      )
    ]);
  }
}
