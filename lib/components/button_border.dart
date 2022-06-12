
import 'package:flutter/material.dart';
import 'package:github_clone/themes/color.dart';
import 'package:github_clone/utils/constant.dart';

class ButtonBorder extends StatelessWidget {
  final String text;
  final Color? bgColor;
  final VoidCallback onTap;

  const ButtonBorder({
    Key? key,
    required this.text,
    this.bgColor = bgButton,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: bgColor,
          side: BorderSide(color: white, width: 0.05),
        ),
        child: Text(
          text.toUpperCase(),
          style: subTitleStyle.copyWith(color: primary),
        ),
      ),
    );
  }
}