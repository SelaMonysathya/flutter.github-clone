import 'package:flutter/material.dart';
import 'package:github_clone/dummy_data/home_page_json.dart';
import 'package:github_clone/themes/color.dart';
import 'package:github_clone/utils/constant.dart';
import 'package:line_icons/line_icons.dart';

import '../../components/button_border.dart';
import '../../components/button_list_tile.dart';
import '../../components/circle_icon.dart';
import '../../components/title_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

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
      title: Text('Home'),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(LineIcons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(LineIcons.plusCircle),
        ),
      ],
    );
  }

  Widget getBody(Size size) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SizedBox(height: defaultPadding,),
        TitleSection(
          title: 'My Work',
          trailing: Icon(LineIcons.horizontalEllipsis, color: grey,),
        ),
        SizedBox(height: defaultPadding,),
        Column(
          children: List.generate(myWorks.length, (index) {
            return ButtonListTile(
              onTap: () {},
              title: myWorks[index]['title'],
              icon: myWorks[index]['icon'],
              bgIconColor: myWorks[index]['bgIconColor'],
            );
          }),
        ),
        SizedBox(height: defaultPadding / 2,),
        Divider(color: grey, thickness: 0.1,),
        SizedBox(height: defaultPadding / 2,),
        TitleSection(title: 'Favorites',),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              SizedBox(height: defaultPadding,),
              Text(
                "Add favorite respositories for quick access at any time, without having to search",
                textAlign: TextAlign.center,
                style: titleStyle.copyWith(color: grey, fontWeight: FontWeight.w500, height: 1.5),
              ),
              SizedBox(height: defaultPadding,),
              ButtonBorder(
                onTap: () {},
                text: "Add Favorite",
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding / 2,),
        Divider(color: grey, thickness: 0.1,),
        SizedBox(height: defaultPadding / 2,),
        TitleSection(title: 'Shortcuts',),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: defaultPadding,),
              Container(
                height: 50,
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: List.generate(shortcuts.length, (index) {
                    return Positioned(
                      left: index * (size.width / shortcuts.length) - (size.width / 2.3),
                      right: 0,
                      child: CircleIcon(
                        icon: shortcuts[index]['icon'],
                        bgColor: shortcuts[index]['bgColor'],
                      )
                    );
                  }),
                ),
              ),
              SizedBox(height: defaultPadding,),
              Text(
                "The things you need, one tap away",
                textAlign: TextAlign.center,
                style: titleStyle.copyWith(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: defaultPadding,),
              Text(
                "Fast access you lists of Issues, Pull Requests, or Discussions",
                textAlign: TextAlign.center,
                style: titleStyle.copyWith(color: grey, fontWeight: FontWeight.w500, height: 1.5),
              ),
              SizedBox(height: defaultPadding,),
              ButtonBorder(
                onTap: () {},
                text: "Get Started",
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding * 2,),
      ],
    );
  }
  
}
