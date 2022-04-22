import 'package:flutter/material.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';

class BlackButton extends StatelessWidget {
  final String nameButton;

  const BlackButton({Key? key, required this.nameButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Container(
      height: 52 * h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.blackColor,
        borderRadius: BorderRadius.circular(8 * w),
      ),
      child: Center(
        child: Text(
          nameButton,
          style: TextStyle(
            color: AppTheme.whiteColor,
            fontSize: 16 * h,
            fontWeight: FontWeight.w900,
            fontFamily: AppTheme.roboto,
          ),
        ),
      ),
    );
  }
}
