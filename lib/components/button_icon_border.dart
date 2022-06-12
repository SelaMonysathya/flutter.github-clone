
import 'package:flutter/material.dart';
import 'package:github_clone/themes/color.dart';
import 'package:github_clone/utils/constant.dart';

class ButtonIconBorder extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color? bgColor;
  final VoidCallback onTap;

  const ButtonIconBorder({
    Key? key,
    required this.iconData,
    required this.text,
    this.bgColor = bgButton,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: bgColor,
        ),
        icon: Icon(iconData, color: primary, size: 18,),
        label: Text(
          text.toUpperCase(),
          style: subTitleStyle.copyWith(color: primary),
        ),
      ),
    );
  }
}