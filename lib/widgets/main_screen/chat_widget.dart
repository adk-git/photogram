import 'package:flutter/material.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';

class ChatWidget extends StatelessWidget {
  final String theme;

  const ChatWidget({Key? key, required this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Container(
      padding: EdgeInsets.all(16 * w),
      height: 94 * h,
      width: 270 * w,
      color: Colors.grey,
      child: Text(
        theme,
        style: TextStyle(
          color: AppTheme.blackColor,
          fontFamily: AppTheme.roboto,
          fontWeight: FontWeight.w400,
          fontSize: 13 * w,
        ),
        maxLines: 3,
      ),
    );
  }
}
