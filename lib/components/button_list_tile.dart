
import 'package:flutter/material.dart';
import 'package:github_clone/themes/color.dart';
import 'package:github_clone/utils/constant.dart';

class ButtonListTile extends StatelessWidget {
  final String title;
  final Color bgIconColor;
  final IconData icon;
  final bool hasTrailing;
  final String? trailing;
  final VoidCallback onTap;
  
  const ButtonListTile({
    Key? key, 
    required this.title, 
    required this.bgIconColor, 
    required this.icon,
    this.hasTrailing = false, 
    this.trailing,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: defaultPadding / 2,
      leading: Container(
        padding: EdgeInsets.all(defaultPadding / 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultBorderRadius / 2),
          color: bgIconColor,
        ),
        child: Icon(icon, color: white, size: 20,),
      ),
      title: Text(title, style: subTitleStyle,),
      trailing: hasTrailing 
      ? Text(trailing!, style: subTitleStyle.copyWith(color: grey),)
      : SizedBox(),
    );
  }
}