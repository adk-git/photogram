import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';
import 'package:photogram/widgets/auth/register_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static List<String> images = [
    "assets/images/image_1.png",
    "assets/images/image_2.png",
    "assets/images/image_3.png",
    "assets/images/image_4.png",
    "assets/images/image_5.png",
    "assets/images/image_6.png",
    "assets/images/image_7.png",
    "assets/images/image_8.png",
  ];

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16 * h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RegisterName(name: "photogram"),
              SizedBox(height: 44 * h),
              Expanded(
                child: MasonryGridView.count(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    itemCount: images.length,
                    crossAxisSpacing: 8 * w,
                    mainAxisSpacing: 8 * h,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        images[index],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
