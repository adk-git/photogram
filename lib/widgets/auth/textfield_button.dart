import 'package:flutter/material.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';

class TextFieldButton extends StatelessWidget {
  final String hintText;
  final bool isPassword;

  const TextFieldButton({Key? key, required this.hintText, required this.isPassword}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Container(
      width: double.infinity,
      height: 52 * h,
      decoration: BoxDecoration(
        color: AppTheme.whiteColor,
        border: Border.all(
          color: AppTheme.blackColor,
          width: 2 * w,
        ),
      ),
      child: TextField(
        style: TextStyle(
          color: AppTheme.blackColor,
          fontSize: 16 * h,
          fontFamily: AppTheme.roboto,
          fontWeight: FontWeight.w400,
          letterSpacing: 1 * w,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            bottom: 14 * h,
            top: 20 * h,
            left: 12 * w,
          ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppTheme.blackColor,
            fontSize: 16 * h,
            fontFamily: AppTheme.roboto,
            fontWeight: FontWeight.w400,
            letterSpacing: 1 * w,
          ),
        ),
        obscureText: isPassword,
      ),
    );
  }
}
