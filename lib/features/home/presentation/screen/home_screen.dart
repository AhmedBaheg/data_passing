import 'package:data_passing/features/details/presentation/screen/details_screen.dart';
import 'package:data_passing/features/home/presentation/screen/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: listItem.length,
          itemBuilder: (BuildContext context, int index) {
            final data = listItem[index];
            return ListViewItem(
              data: data,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(data: data),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

List<Map<String, String>> listItem = [
  {
    "photo": "assets/images/Profile_1.webp",
    "name": "Ahmed Baheg",
    "phone": "01015774093",
    "email": "Ahmed.Baheg@gmail.com",
  },

  {
    "photo": "assets/images/Profile_2.png",
    "name": "Mahmoud Hassan",
    "phone": "01123456789",
    "email": "Mahmoud.Hassan@yahoo.com",
  },
  {
    "photo": "assets/images/Profile_3.jpg",
    "name": "Karim Mostafa",
    "phone": "01033445566",
    "email": "Karim.Mostafa@gmail.com",
  },
  {
    "photo": "assets/images/Profile_4.webp",
    "name": "Tarek Said",
    "phone": "01244556677",
    "email": "Tarek.Said@hotmail.com",
  },
  {
    "photo": "assets/images/Profile_5.webp",
    "name": "Yassin Mahmoud",
    "phone": "01011223344",
    "email": "Yassin.Mahmoud@gmail.com",
  },
  {
    "photo": "assets/images/Profile_6.webp",
    "name": "Ahmed Omar",
    "phone": "01551234567",
    "email": "Ahmed.Omar@gmail.com",
  },
  {
    "photo": "assets/images/Profile_7.webp",
    "name": "Hassan Fouad",
    "phone": "01098765432",
    "email": "Hassan.Fouad@hotmail.com",
  },
  {
    "photo": "assets/images/Profile_8.jpg",
    "name": "Omar Khaled",
    "phone": "01199887766",
    "email": "Omar.Khaled@yahoo.com",
  },
  {
    "photo": "assets/images/Profile_9.webp",
    "name": "Amr Youssef",
    "phone": "01200112233",
    "email": "Amr.Youssef@gmail.com",
  },
  {
    "photo": "assets/images/Profile_10.webp",
    "name": "Mostafa Kamal",
    "phone": "01509876543",
    "email": "Mostafa.Kamal@gmail.com",
  },
];
