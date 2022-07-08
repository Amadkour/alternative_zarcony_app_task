import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widget/my_image.dart';
import '../../../provider/adds/model/AddModel.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget(
      {Key? key,required this.news, this.onChangeIndex,  this.isSlider=false})
      : super(key: key);
  final List<AddModel> news;
  final Function? onChangeIndex;
  final bool isSlider;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: news
            .map((e) => InkWell(
          onTap: () {
            //----------------
          },
                  child: MyImage(
                    url: e.image,
                    height: null,
                    // fit: BoxFit.fitHeight,
                    width: null,
                    boarderRadius: 10,
                    fit: BoxFit.fill,
                  ),
                ))
            .toList(),
        options: CarouselOptions(
          height:isSlider? 160:80,
          viewportFraction:isSlider? 1: 0.4,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          enlargeStrategy : CenterPageEnlargeStrategy.scale,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ));
  }
}
