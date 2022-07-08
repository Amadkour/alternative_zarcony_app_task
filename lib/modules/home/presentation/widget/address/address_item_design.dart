import 'package:flutter/cupertino.dart';
import '../../../../../core/constant/color.dart';
import '../../../../../core/widget/my_image.dart';
import '../../../provider/address/model/address_model.dart';

class AddressItemDesign extends StatelessWidget {
  const AddressItemDesign({Key? key, required this.address}) : super(key: key);
  final AddressModel address;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.regularGrey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          MyImage(
            url: address.image,
            width: 40,
            height: 40,
            boarderRadius: 10,
            defaultDesign: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffD7D7D7)
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${address.type!} Address',
                style: TextStyle(
                    fontSize: 13,
                    color: AppColors.blackColor,
                    height: 1.5,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '${address.location!}, Build ${address.building!}',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Floor ${address.floor!}${address.specific!.isNotEmpty?', ':''}${address.specific!}',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
