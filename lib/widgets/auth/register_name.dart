import 'package:flutter/material.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';

class RegisterName extends StatelessWidget {
  final String name;
   const RegisterName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Text(
      name,
      style: TextStyle(
        color: AppTheme.blackColor,
        fontSize: 36 * h,
        fontFamily: AppTheme.comforta,
        fontWeight: FontWeight.w400,
        letterSpacing: 1 * w,
      ),
    );
  }
}
