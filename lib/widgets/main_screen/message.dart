import 'package:flutter/material.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';

class MessageButton extends StatelessWidget {
  final String name;

  const MessageButton({
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8 * w),
        border: Border.all(
          color: AppTheme.blackColor,
          width: 2 * w,
        ),
      ),
      child: Center(
        child: Text(
          name.toUpperCase(),
          style: TextStyle(
            color: AppTheme.blackColor,
            fontSize: 16 * h,
            fontWeight: FontWeight.w900,
            fontFamily: AppTheme.roboto,
          ),
        ),
      ),
    );
  }
}
