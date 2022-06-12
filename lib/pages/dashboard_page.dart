import 'package:flutter/material.dart';
import 'package:github_clone/pages/account/account_page.dart';
import 'package:github_clone/pages/explore/explore_page.dart';
import 'package:github_clone/pages/notification/notification_page.dart';
import 'package:github_clone/themes/color.dart';
import 'package:line_icons/line_icons.dart';

import 'home/home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({ Key? key }) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int activeIndex = 0;

  onSelectedTab(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeIndex,
      children: [
        HomePage(),
        NotificationPage(),
        ExplorePage(),
        AccountPage(),
      ],
    );
  }

  Widget getFooter() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, -2),
          )
        ]
      ),
      child: BottomNavigationBar(
        currentIndex: activeIndex,
        onTap: onSelectedTab,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primary,
        unselectedItemColor: grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(LineIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.bell),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.globe),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.user),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}