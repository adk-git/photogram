import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photogram/settings/appTheme.dart';
import 'package:photogram/ui/main/add_screen/add_screen.dart';
import 'package:photogram/ui/main/chat_screen/chat_screen.dart';
import 'package:photogram/ui/main/home_screen/home_screen.dart';
import 'package:photogram/ui/main/profile_screen/profile_screen.dart';
import 'package:photogram/ui/main/search_screen/search_screen.dart';
import 'package:photogram/utils/utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selected = 1;
  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const AddScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Scaffold(
      body: pages[_selected],
      backgroundColor: AppTheme.whiteColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: (_index) {
          setState(() {
            _selected = _index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/bottom_icons/home.svg",
              height: 50 * h,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/bottom_icons/search.svg",
              height: 50 * h,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/bottom_icons/add.png",
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/bottom_icons/chat.svg",
              height: 50 * h,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/bottom_icons/person.svg",
              height: 50 * h,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
