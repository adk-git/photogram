import 'package:flutter/material.dart';
import 'package:photogram/settings/appTheme.dart';

import '../../utils/utils.dart';

class GoogleButton extends StatelessWidget {
  final String name;

  const GoogleButton({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Container(
      height: 52 * h,
      width: double.infinity,
      padding: EdgeInsets.all(2 * w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8 * w),
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF607ff4),
              Color(0xFF68a851),
              Color(0xFFe9bf08),
              Color(0xFFca4b3a),
              Color(0xFF607ff4),
            ]),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8 * w),
            ),
            color: AppTheme.whiteColor),
        alignment: Alignment.center,
        child: Text(
          name.toUpperCase(),
          style: TextStyle(
            fontFamily: AppTheme.roboto,
            fontSize: 16 * h,
            fontWeight: FontWeight.w900,
            color: AppTheme.blueColor,
          ),
        ),
      ),
    );
  }
}
