import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../themes/color.dart';
import '../utils/constant.dart';
import 'icon_title_section.dart';

class RepositoryCart extends StatelessWidget {
  final String? imageUrl, username;
  final String title, star, language;
  
  const RepositoryCart({
    Key? key, 
    this.imageUrl = PROFILE_URL, 
    this.username = USERNAME, 
    required this.title, 
    required this.star, 
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: bgButton,
        borderRadius: BorderRadius.circular(defaultBorderRadius)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(imageUrl!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: defaultPadding / 2,),
              Text(username!, style: titleStyle.copyWith(fontWeight: FontWeight.normal, color: grey)),
            ],
          ),
          SizedBox(height: defaultPadding / 2,),
          Text(title, style: titleStyle),
          SizedBox(height: defaultPadding * 3,),
          Row(
            children: [
              IconTitleSection(
                icon: Icon(LineIcons.starAlt, color: yellow, size: 18,),
                title: star,
                textStyle: titleStyle.copyWith(color: grey, fontWeight: FontWeight.normal),
              ),
              SizedBox(width: defaultPadding / 2,),
              IconTitleSection(
                icon: Icon(Icons.circle, color: green, size: 16,),
                title: language,
                textStyle: titleStyle.copyWith(color: grey, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ],
      ),
    );
  }
}