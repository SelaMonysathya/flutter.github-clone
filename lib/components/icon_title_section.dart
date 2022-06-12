import 'package:flutter/material.dart';

import '../utils/constant.dart';

class IconTitleSection extends StatelessWidget {
  final Icon icon;
  final String title;
  final TextStyle? textStyle;

  const IconTitleSection({
    Key? key, 
    required this.icon, 
    required this.title,
    this.textStyle = titleStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(width: defaultPadding / 2,),
        Text(title, style: textStyle),
      ],
    );
  }
}