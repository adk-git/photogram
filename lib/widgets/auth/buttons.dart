import 'package:flutter/material.dart';
import 'package:photogram/routes/app_routes.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';

class TwoButtons extends StatelessWidget {
  const TwoButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Row(
      children: [
        Container(
          height: 64 * h,
          width: 164 * w,
          decoration: BoxDecoration(
            color: AppTheme.whiteColor,
            border: Border.all(
              color: AppTheme.blackColor,
              width: 2 * w,
            ),
            borderRadius: BorderRadius.circular(8 * w),
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.register1);
            },
            child: Center(
              child: Text(
                "Kirish".toUpperCase(),
                style: TextStyle(
                  color: AppTheme.blackColor,
                  fontFamily: AppTheme.roboto,
                  fontSize: 13 * h,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Container(
          height: 64 * h,
          width: 164 * w,
          decoration: BoxDecoration(
            color: AppTheme.blackColor,
            border: Border.all(
              color: AppTheme.blackColor,
              width: 2 * w,
            ),
            borderRadius: BorderRadius.circular(8 * w),
          ),
          child: InkWell(
            onTap: () {
           Navigator.pushNamed(context, AppRoutes.login);
            },
            child: Center(
              child: Text(
                "Ro’yxatdan o’tish".toUpperCase(),
                style: TextStyle(
                  color: AppTheme.whiteColor,
                  fontFamily: AppTheme.roboto,
                  fontSize: 13 * h,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
