import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/styles.dart';

class ContactInfo extends StatelessWidget {
  const new({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 14,
          color: AppColors.black.withValues(alpha: 0.5),
        ),
        SizedBox(width: 10),
        Text(
          text,
          style: Styles.textStyle14.copyWith(
            color: AppColors.black.withValues(alpha: 0.5),
          ),
        ),
      ],
    );
  }
}
