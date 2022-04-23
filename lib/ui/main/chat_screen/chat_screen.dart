import 'package:flutter/material.dart';
import 'package:photogram/models/chat_model.dart';
import 'package:photogram/routes/app_routes.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/ui/main/chat_screen/individual_chat.dart';
import 'package:photogram/utils/utils.dart';

class ChatScreen extends StatelessWidget {
  static List<ChatModel> model = [
    ChatModel(
        image: "assets/images/chat_1.png",
        name: "James",
        desc: "Thank you! That was very helpful!"),
    ChatModel(
        image: "assets/images/chat_2.png",
        name: "Will Kenny",
        desc: "I know... I’m trying to get the funds."),
    ChatModel(
        image: "assets/images/chat_3.png",
        name: "Beth Williams",
        desc:
            "I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm..."),
    ChatModel(
        image: "assets/images/chat_4.png",
        name: "Rev Shawn",
        desc:
            "Wanted to ask if you’re available for a portrait shoot next week."),
  ];

  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      appBar: AppBar(
        backgroundColor: AppTheme.whiteColor,
        centerTitle: true,
        title: Text(
          "Suxbatlar",
          style: TextStyle(
            color: AppTheme.blackColor,
            fontSize: 18 * h,
            fontWeight: FontWeight.bold,
            fontFamily: AppTheme.montserrat,
            letterSpacing: 0.5 * w,
          ),
        ),
        elevation: 0.5,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 25 * h,
              color: AppTheme.blackColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16 * w),
        child: ListView.builder(
          itemCount: model.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IndividualChat(name: model[index].name),
                ),
              );
            },
            child: Column(
              children: [
                SizedBox(height: 16 * h),
                Row(
                  children: [
                    Image.asset(
                      model[index].image,
                      height: 64 * h,
                      width: 64 * w,
                    ),
                    SizedBox(width: 16 * w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model[index].name,
                          style: TextStyle(
                            color: AppTheme.blackColor,
                            fontSize: 16 * h,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppTheme.roboto,
                          ),
                        ),
                        SizedBox(height: 4 * h),
                        SizedBox(
                          width: 263 * w,
                          child: Text(
                            model[index].desc,
                            style: TextStyle(
                              color: AppTheme.blackColor,
                              fontSize: 14 * h,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppTheme.roboto,
                            ),
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16 * h),
                Container(
                  height: 0.5 * h,
                  width: double.infinity,
                  color: AppTheme.blackColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
