import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';
import 'package:photogram/widgets/main_screen/message.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static List<String> images = [
    "assets/images/girl/girl_1.png",
    "assets/images/girl/girl_2.png",
    "assets/images/girl/girl_3.png",
    "assets/images/girl/girl_4.png",
    "assets/images/girl/girl_5.png",
    "assets/images/girl/girl_6.png",
  ];

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16 * w),
            child: Column(
              children: [
                SizedBox(
                  height: 32 * h,
                ),
                Image.asset(
                  "assets/images/umida.png",
                  height: 128 * h,
                  width: 128 * w,
                ),
                SizedBox(height: 16 * h),
                Text(
                  "Umidaxon",
                  style: TextStyle(
                    color: AppTheme.blackColor,
                    fontSize: 36 * h,
                    fontFamily: AppTheme.comforta,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8 * h),
                Text(
                  "@umida",
                  style: TextStyle(
                      color: AppTheme.blackColor,
                      fontFamily: AppTheme.comforta,
                      fontSize: 20 * h,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 16 * h),
                InkWell(
                    onTap: () {}, child: const MessageButton(name: "xabar")),
                SizedBox(height: 32 * h),
                Expanded(
                  child: MasonryGridView.count(
                    physics: const BouncingScrollPhysics(),
                    itemCount: images.length,
                    crossAxisSpacing: 8 * w,
                    mainAxisSpacing: 8 * h,
                    itemBuilder: (BuildContext context, index) {
                      return Image.asset(images[index]);
                    },
                    crossAxisCount: 2,
                  ),
                ),
                SizedBox(height: 16 * h),
                const MessageButton(name: "ko'proq ko'rsatish"),
                SizedBox(height: 16 * h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
