import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
          margin: const EdgeInsets.fromLTRB(0,10,10,10),
          decoration: BoxDecoration(
              borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30),topRight: Radius.circular(30)),
              color: AppColors.primaryColor),
          // child:  FittedBox(
          //   fit: BoxFit.fitWidth,
          child: Row(
            children: [
               Icon(CupertinoIcons.location,
              color: AppColors.whiteColor,
              ),
              Text(
                "address",
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: AppColors.whiteColor, fontSize: 14),
                // ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 9,
          right: 8,
          child: Transform.rotate(
            angle: -10,
            child: Container(
              height: 47,
              width: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.primaryColor),
              // child:  FittedBox(
              //   fit: BoxFit.fitWidth,
            ),
          ),
        )
      ],
    );
  }
}

class DrawTriangleShape extends CustomPainter {
  Paint painter = Paint();

  DrawTriangleShape() {
    painter = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.height, size.width);
    path.lineTo(size.height, 0);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
