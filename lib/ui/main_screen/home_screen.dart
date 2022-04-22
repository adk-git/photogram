import 'package:flutter/material.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';
import 'package:photogram/widgets/main_screen/message.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  height: 64 * h,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
