import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../themes/color.dart';
import '../utils/constant.dart';
import 'button_icon_border.dart';
import 'icon_title_section.dart';

class ExploreCart extends StatelessWidget {
  final String? imageUrl;
  final String profileUrl, profileName, profileUsername;
  final String description, star, contributor; 
  final String? language;
  final Color? colorIconLanguage;
  final bool hasImageUrl, hasLanguage;
  
  const ExploreCart({
    Key? key, 
    this.imageUrl, 
    required this.profileUrl, 
    required this.profileName, 
    required this.profileUsername, 
    required this.description, 
    required this.star, 
    required this.contributor,
    this.language,
    this.colorIconLanguage = green,
    this.hasImageUrl = true,
    this.hasLanguage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        hasImageUrl 
        ? Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl!),
              fit: BoxFit.cover,
            )
          ),
        ) 
        : SizedBox(),
        SizedBox(height: defaultPadding,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(profileUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: defaultPadding,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(profileName, style: titleStyle),
                        SizedBox(height: defaultPadding / 4,),
                        Text(profileUsername, style: subTitleStyle.copyWith(color: grey)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultPadding,),
              Text(
                description,
                style: titleStyle.copyWith(color: grey, height: 1.5),
              ),
              SizedBox(height: defaultPadding,),
              Row(
                children: [
                  IconTitleSection(
                    icon: Icon(LineIcons.starAlt, color: yellow, size: 18,),
                    title: star,
                    textStyle: titleStyle.copyWith(color: grey, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(width: defaultPadding / 2,),
                  hasLanguage 
                  ? IconTitleSection(
                    icon: Icon(Icons.circle, color: colorIconLanguage, size: 16,),
                    title: language!,
                    textStyle: titleStyle.copyWith(color: grey, fontWeight: FontWeight.normal),
                  )
                  : SizedBox(),
                ],
              ),
              SizedBox(height: defaultPadding / 2,),
              IconTitleSection(
                icon: Icon(LineIcons.user, color: grey, size: 18,),
                title: "$contributor Contributors",
                textStyle: titleStyle.copyWith(color: grey, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: defaultPadding,),
              ButtonIconBorder(
                onTap: () {},
                bgColor: grey.withOpacity(0.25),
                iconData: LineIcons.star,
                text: "Star",
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding * 1.5,),
        Divider(color: black, thickness: 20,),
      ],
    );
  }
}