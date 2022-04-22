import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photogram/routes/app_routes.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';
import 'package:photogram/widgets/auth/blackButton.dart';
import 'package:photogram/widgets/auth/google_button.dart';
import 'package:photogram/widgets/auth/textfield_button.dart';
import 'package:photogram/widgets/auth/register_name.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      appBar: AppBar(
        backgroundColor: AppTheme.whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/back_icon.svg",
          ),
          iconSize: 12 * h,
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16 * w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 32 * h),
              const RegisterName(
                name: "Ro'yxatdan o'tish",
              ),
              SizedBox(height: 32 * h),
              const TextFieldButton(
                hintText: "foydalanuvchi@misoluchun.uz",
                isPassword: false,
              ),
              SizedBox(height: 16 * h),
              const TextFieldButton(
                hintText: "********",
                isPassword: true,
              ),
              SizedBox(height: 16 * h),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.register2);
                },
                child: BlackButton(
                  nameButton: "Keyingisi".toUpperCase(),
                ),
              ),
              SizedBox(height: 16 * h),
              InkWell(
                  onTap: () {},
                  child: const GoogleButton(
                    name: 'Google bilan ro’yxatdan o’tish',
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
