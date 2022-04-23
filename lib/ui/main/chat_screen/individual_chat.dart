import 'package:flutter/material.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/utils/utils.dart';
import 'package:photogram/widgets/main_screen/chat_widget.dart';

class IndividualChat extends StatelessWidget {
  final String name;

  const IndividualChat({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      appBar: AppBar(
        backgroundColor: AppTheme.whiteColor,
        elevation: 0.5,
        title: Text(
          name,
          style: TextStyle(
            color: AppTheme.blackColor,
            fontSize: 18 * h,
            fontWeight: FontWeight.bold,
            fontFamily: AppTheme.montserrat,
            letterSpacing: 0.5 * w,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: AppTheme.blackColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16 * w),
        child: Column(
          children: [
            SizedBox(height: 32 * h),
            Row(
              children: [
                Image.asset(
                  "assets/images/chat_1.png",
                  height: 32 * h,
                  width: 32 * w,
                ),
                const Spacer(),
                const ChatWidget(
                  theme:
                      "Really love your most recent photo. I’ve been trying to capture the "
                      "same thing for a few months and would love some tips!",
                ),
              ],
            ),
            SizedBox(height: 24 * h),
            Row(
              children:  [
                const ChatWidget(
                  theme:
                  "A fast 50mm like f1.8 would help with the bokeh."
                      " I’ve been using primes as they tend to get a bit sharper images.",
                ),
                const Spacer(),
                Image.asset(
                  "assets/images/chat_2.png",
                  height: 32 * h,
                  width: 32 * w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
