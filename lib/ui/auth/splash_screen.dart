import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/widgets/auth/buttons.dart';
import '../../utils/utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);
    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "photogram",
                  style: TextStyle(
                    color: AppTheme.blackColor,
                    fontSize: 48 * h,
                    fontFamily: AppTheme.comforta,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1 * w,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16 * h),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/circle.svg",
                        height: 50 * h,
                        width: 50 * w,
                      ),
                      SizedBox(width: 16 * w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Quantic Jamoasi",
                            style: TextStyle(
                              color: AppTheme.blackColor,
                              fontSize: 24 * h,
                              fontFamily: AppTheme.comforta,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5 * w,
                            ),
                          ),
                          SizedBox(height: 4 * h),
                          Text(
                            "Photogram beta 1.0",
                            style: TextStyle(
                              color: AppTheme.blackColor,
                              fontSize: 14 * h,
                              fontFamily: AppTheme.montserrat,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 32 * h),
                  const TwoButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
