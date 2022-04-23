import 'package:flutter/material.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';
import 'package:photogram/widgets/auth/register_name.dart';
import 'package:photogram/widgets/auth/textfield_button.dart';
import '../../../widgets/main_screen/basicGridView.dart';
import '../../../widgets/main_screen/message.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);
    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16 * w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RegisterName(name: "Izlash"),
              SizedBox(height: 32 * h),
              const TextFieldButton(hintText: "kuchukcha", isPassword: false),
              SizedBox(height: 32 * h),
              Text(
                "barcha natijalar".toUpperCase(),
                style: TextStyle(
                  color: AppTheme.blackColor,
                  fontFamily: AppTheme.roboto,
                  fontWeight: FontWeight.w900,
                  fontSize: 16 * h,
                  letterSpacing: 0.5 * w,
                ),
              ),
              SizedBox(height: 24 * h),
              const Expanded(
                child: BasicStaggered(),
              ),
              SizedBox(height: 32 * h),
              const MessageButton(name: "ko'proq ko'rsatish"),
            ],
          ),
        ),
      ),
    );
  }
}
