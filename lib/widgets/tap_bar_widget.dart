import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55,vertical: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            txtButton('Asosiy sahifa'),
            txtButton('Ishlab chiqaruvchilar'),
            txtButton('Mahsulotlar'),
            txtButton('Yangiliklar'),
            txtButton('Slider'),
            txtButton('Afisha'),
          ],
        ),
      ),
    );
  }

  Widget txtButton(String buttonName) {
    return Padding(
      padding: const EdgeInsets.only(right: 45),
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttonName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
