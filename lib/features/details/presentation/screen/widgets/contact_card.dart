import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';
import 'contact_item.dart';

class ContactCard extends StatelessWidget {
  const new({
    super.key,
    required this.data,
  });

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ContactItem(
              iconBackground: AppColors.backgroundPhoneIcon,
              icon: Icons.phone_rounded,
              iconColor: AppColors.phoneIcon,
              title: AppTexts.kPhone,
              text: data["phone"]!,
            ),
            SizedBox(height: 10),
            Divider(color: AppColors.grey, thickness: 1),
            SizedBox(height: 10),
            ContactItem(
              iconBackground: AppColors.backgroundEmailIcon,
              icon: Icons.email_rounded,
              iconColor: AppColors.emailIcon,
              title: AppTexts.kEmail,
              text: data["email"]!,
            ),
          ],
        ),
      ),
    );
  }
}
