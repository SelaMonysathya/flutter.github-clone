import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_clone/themes/color.dart';
import 'package:github_clone/utils/constant.dart';
import 'package:line_icons/line_icons.dart';

import '../../components/button_border_radius.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: getAppBar(),
      body: getBody(size),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      title: Text('Notifications'),
      centerTitle: false,
    );
  }

  Widget getBody(Size size) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Row(
            children: [
              ButtonBorderRadius(
                onTap: () {},
                text: "Inbox",
                hasLeftIcon: true,
                iconData: LineIcons.angleDown,
              ),
              SizedBox(width: defaultPadding / 2,),
              ButtonBorderRadius(
                onTap: () {},
                text: "Unread",
              ),
              SizedBox(width: defaultPadding / 2,),
              ButtonBorderRadius(
                onTap: () {},
                text: "Repository",
                hasLeftIcon: true,
                iconData: LineIcons.angleDown,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: size.width,
            color: black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/notification.svg", width: size.width * 0.6,),
                SizedBox(height: defaultPadding * 2,),
                Text(
                  "All caught up!",
                  style: titleStyle.copyWith(fontSize: 24),
                ),
                SizedBox(height: defaultPadding,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  child: Text(
                    "Take a break, write some code, and do what you do best.",
                    textAlign: TextAlign.center,
                    style: subTitleStyle.copyWith(color: grey, fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        ),
      ],
    );
  }
}