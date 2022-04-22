import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photogram/utils/utils.dart';
import 'package:photogram/widgets/auth/blackButton.dart';
import 'package:photogram/widgets/auth/register_name.dart';
import 'package:photogram/widgets/auth/textfield_button.dart';
import '../../routes/app_routes.dart';
import '../../settings/appTheme.dart';

class SecondRegisterScreen extends StatelessWidget {
  const SecondRegisterScreen({Key? key}) : super(key: key);

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
              const RegisterName(name: "Ro’yxatdan o’tish"),
              SizedBox(height: 32 * h),
              const TextFieldButton(
                hintText: "bek_0280",
                isPassword: false,
              ),
              SizedBox(height: 16 * h),
              InkWell(
                onTap: () => Navigator.pushNamed(context, AppRoutes.user,),
                child: const BlackButton(
                  nameButton: "Ro’yxatdan o’tish",
                ),
              ),
              SizedBox(height: 32 * h),
              Text(
                "Ro’yxat o’tish tugmasini bosish orqali siz photogram "
                "ijtimoiy tarog’ining Foydalanish shartlari va Xavfsizlik "
                "qoidalariga rozilik bildirgan bo’lasiz.",
                style: TextStyle(
                  color: AppTheme.blackColor,
                  fontFamily: AppTheme.roboto,
                  fontSize: 13 * h,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
