import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:github_clone/utils/constant.dart';
import 'package:line_icons/line_icons.dart';

import '../../components/button_border_radius.dart';
import '../../components/explore_cart.dart';
import '../../dummy_data/explore_page_json.dart';
import '../../themes/color.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: getAppBar(),
        body: getBody(size),
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      title: Text('Explore'),
      centerTitle: false,
      bottom: TabBar(
        indicatorWeight: 1.0,
        tabs: [
          Tab(
            child: Text(
              "For You".toUpperCase(), 
              style: titleStyle.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          Tab(
            child: Text(
              "trending".toUpperCase(), 
              style: titleStyle.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget getBody(Size size) {
    return TabBarView(
      children: [
        ListView(
          children: [
            Column(
              children: List.generate(exploreForyou.length, (index) {
                return ExploreCart(
                  hasImageUrl: exploreForyou[index]['hasImageUrl'],
                  imageUrl: exploreForyou[index]['imageUrl'],
                  profileUrl: exploreForyou[index]['profileUrl'],
                  profileName: exploreForyou[index]['profileName'],
                  profileUsername: exploreForyou[index]['profileUsername'],
                  description: exploreForyou[index]['description'],
                  star: exploreForyou[index]['star'],
                  hasLanguage: exploreForyou[index]['hasLanguage'],
                  colorIconLanguage: exploreForyou[index]['colorIconLanguage'],
                  language: exploreForyou[index]['language'],
                  contributor: exploreForyou[index]['contributor'],
                );
              }),
            ),
            Padding(
              padding: EdgeInsets.all(defaultPadding * 4),
              child: Column(
                children: [
                  Text(
                    "Thats all for now",
                    style: titleStyle,
                  ),
                  SizedBox(height: defaultPadding,),
                  Text(
                    "Star repositories, follow your favorite developers, and come back soon to see what we find for your next.",
                    textAlign: TextAlign.center,
                    style: titleStyle.copyWith(color: grey),
                  )
                ],
              ),
            ),
          ],
        ),
        SlideInDown(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding / 2),
                child: Row(
                  children: [
                    ButtonBorderRadius(
                      onTap: () {},
                      text: "Today",
                      hasLeftIcon: true,
                      iconData: LineIcons.angleDown,
                    ),
                    SizedBox(width: defaultPadding / 3,),
                    ButtonBorderRadius(
                      onTap: () {},
                      text: "Language",
                      hasLeftIcon: true,
                      iconData: LineIcons.angleDown,
                    ),
                    SizedBox(width: defaultPadding / 2,),
                    ButtonBorderRadius(
                      onTap: () {},
                      text: "Spoken Language",
                      hasLeftIcon: true,
                      iconData: LineIcons.angleDown,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      children: List.generate(exploreTrending.length, (index) {
                        return ExploreCart(
                          hasImageUrl: exploreTrending[index]['hasImageUrl'],
                          imageUrl: exploreTrending[index]['imageUrl'],
                          profileUrl: exploreTrending[index]['profileUrl'],
                          profileName: exploreTrending[index]['profileName'],
                          profileUsername: exploreTrending[index]['profileUsername'],
                          description: exploreTrending[index]['description'],
                          star: exploreTrending[index]['star'],
                          hasLanguage: exploreTrending[index]['hasLanguage'],
                          colorIconLanguage: exploreTrending[index]['colorIconLanguage'],
                          language: exploreTrending[index]['language'],
                          contributor: exploreTrending[index]['contributor'],
                        );
                      }),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultPadding * 4),
                      child: Column(
                        children: [
                          Text(
                            "Thats all for now",
                            style: titleStyle,
                          ),
                          SizedBox(height: defaultPadding,),
                          Text(
                            "Star repositories, follow your favorite developers, and come back soon to see what we find for your next.",
                            textAlign: TextAlign.center,
                            style: titleStyle.copyWith(color: grey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]
    );
  }
  
}

