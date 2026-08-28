import 'package:data_passing/core/utils/app_colors.dart';
import 'package:data_passing/features/home/presentation/screen/widgets/contact_info.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ListViewItem extends StatelessWidget {
  const new({super.key, required this.data, required this.onTap});

  // String photo;
  // String name;
  // String phone;
  // String email;

  final Map<String, String> data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(40),
                child: Image.asset(
                  data["photo"]!,
                  fit: BoxFit.cover,
                  height: 80,
                  width: 80,
                  alignment: Alignment(0, -0.5),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data["name"]!, style: Styles.textStyle18),
                    ContactInfo(icon: Icons.phone_rounded, text: data["phone"]!),
                    ContactInfo(icon: Icons.email_rounded, text: data["email"]!),
                  ],
                ),
              ),
              Icon(Icons.chevron_right_rounded),
            ],
          ),
        ),
        SizedBox(height: 10),
        Divider(color: AppColors.grey, thickness: 1),
        SizedBox(height: 10),
      ],
    );
  }
}

