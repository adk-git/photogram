import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photogram/utils/utils.dart';

class BasicStaggered extends StatelessWidget {
  static List<String> images = [
    "assets/images/dog/dog_1.png",
    "assets/images/dog/dog_2.png",
    "assets/images/dog/dog_3.png",
    "assets/images/dog/dog_4.png",
    "assets/images/dog/dog_5.png",
    "assets/images/dog/dog_6.png",
    "assets/images/dog/dog_7.png",
    "assets/images/dog/dog_8.png",
    "assets/images/dog/dog_9.png",
    "assets/images/dog/dog_10.png",
    "assets/images/dog/dog_11.png",
    "assets/images/dog/dog_12.png",
    "assets/images/dog/dog_13.png",
    "assets/images/dog/dog_14.png",
    "assets/images/dog/dog_15.png",
  ];

  const BasicStaggered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return MasonryGridView.count(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        itemCount: images.length,
        crossAxisSpacing: 8 * w,
        mainAxisSpacing: 8 * h,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 107 * h,
            width: 107 * w,
            child: Image.asset(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        });
  }
}
