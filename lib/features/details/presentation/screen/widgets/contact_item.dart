import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../../core/utils/styles.dart';

class ContactItem extends StatelessWidget {
  const new({
    super.key,
    required this.iconBackground,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.text,
  });

  final Color iconBackground;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: iconBackground,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(icon, color: iconColor,),
        ),
        SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Styles.textStyle18,),
            Text(text, style: Styles.textStyle16),
          ],
        ),
      ],
    );
  }
}
