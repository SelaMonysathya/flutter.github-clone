import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../components/button_list_tile.dart';
import '../../components/icon_title_section.dart';
import '../../components/repository_cart.dart';
import '../../dummy_data/account_page_json.dart';
import '../../themes/color.dart';
import '../../utils/constant.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({ Key? key }) : super(key: key);

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
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(LineIcons.cog),
        ),
      ],
    );
  }

  Widget getBody(Size size) {
    return Column(
      children: [
        Container(
          width: size.width,
          padding: EdgeInsets.only(
            top: defaultPadding, 
            left: defaultPadding, 
            right: defaultPadding, 
            bottom: defaultPadding * 2
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(PROFILE_URL),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: defaultPadding,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(NAME, style: titleStyle.copyWith(fontSize: 20)),
                        SizedBox(height: defaultPadding / 2,),
                        Text(USERNAME, style: titleStyle.copyWith(color: grey)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultPadding,),
              Row(
                children: [
                  Icon(LineIcons.mapMarker, color: grey,),
                  SizedBox(width: defaultPadding / 2,),
                  Text(LOCATION, style: titleStyle.copyWith(fontWeight: FontWeight.normal)),
                ],
              ),
              SizedBox(height: defaultPadding / 2,),
              Row(
                children: [
                  Icon(LineIcons.user, color: grey,),
                  SizedBox(width: defaultPadding / 2,),
                  Text("14", style: titleStyle),
                  SizedBox(width: defaultPadding / 2,),
                  Text("followers", style: titleStyle.copyWith(fontWeight: FontWeight.normal)),
                  SizedBox(width: defaultPadding / 2,),
                  Text("•", style: titleStyle),
                  SizedBox(width: defaultPadding / 2,),
                  Text("0", style: titleStyle),
                  SizedBox(width: defaultPadding / 2,),
                  Text("following", style: titleStyle.copyWith(fontWeight: FontWeight.normal)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: size.width,
            color: black,
            child: Column(
              children: [
                SizedBox(height: defaultPadding,),
                Container(
                  width: size.width,
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  color: dark,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                        child: IconTitleSection(
                          icon: Icon(LineIcons.star, color: grey,),
                          title: "Popular",
                        ),
                      ),
                      SizedBox(height: defaultPadding,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(populars.length, (index) {
                            return  Padding(
                              padding: EdgeInsets.only(
                                left: index == 0 ? defaultPadding : defaultPadding,
                                right: index == (populars.length - 1) ? defaultPadding : 0
                              ),
                              child: RepositoryCart(
                                title: populars[index]["title"],
                                star: populars[index]["star"],
                                language: populars[index]["language"],
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(height: defaultPadding / 2,),
                      Divider(color: grey, thickness: 0.1,),
                      SizedBox(height: defaultPadding / 2,),
                      Column(
                        children: List.generate(myWorks.length, (index) {
                          return ButtonListTile(
                            onTap: () {},
                            title: myWorks[index]['title'],
                            icon: myWorks[index]['icon'],
                            bgIconColor: myWorks[index]['bgIconColor'],
                            hasTrailing: true,
                            trailing: myWorks[index]['count'],
                          );
                        }),
                      ),
                    ],
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