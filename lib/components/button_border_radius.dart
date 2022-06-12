import 'package:flutter/material.dart';

import '../themes/color.dart';
import '../utils/constant.dart';

class ButtonBorderRadius extends StatelessWidget {
  final String text;
  final bool hasLeftIcon;
  final IconData? iconData;
  final VoidCallback onTap;
  
  const ButtonBorderRadius({
    Key? key, 
    required this.text, 
    this.hasLeftIcon = false, 
    this.iconData, 
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding / 1.5, vertical: defaultPadding / 3),
        decoration: BoxDecoration(
          color: bgButton,
          borderRadius: BorderRadius.circular(defaultBorderRadius * 2),
        ),
        child: Row(
          children: [
            Text(text, style: subTitleStyle,),
            hasLeftIcon 
            ? Padding(
              padding: const EdgeInsets.only(left: defaultPadding / 4),
              child: Icon(iconData, color: grey, size: 16,),
            )
            : SizedBox(),
          ],
        ),
      ),
    );
  }
}