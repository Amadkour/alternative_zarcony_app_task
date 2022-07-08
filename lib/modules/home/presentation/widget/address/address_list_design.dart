import 'package:flutter/cupertino.dart';

import '../../../provider/address/model/address_model.dart';
import 'address_item_design.dart';

class AddressListWidget extends StatelessWidget {
  const AddressListWidget({Key? key, required this.addresses})
      : super(key: key);
  final List<AddressModel> addresses;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 70,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            AddressItemDesign(address: addresses[index]),
        itemCount: addresses.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 20,
          );
        },
      ),
    );
  }
}
