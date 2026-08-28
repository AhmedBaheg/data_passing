
import 'package:data_passing/features/details/presentation/screen/widgets/contact_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.data});

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(100),
                child: Image.asset(
                  data["photo"]!,
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                  alignment: Alignment(0, -0.5),
                ),
              ),
              SizedBox(height: 20),
              Text(data["name"]!, style: Styles.textStyle28),
              SizedBox(height: 20),
              ContactCard(data: data),
            ],
          ),
        ),
      ),
    );
  }
}

