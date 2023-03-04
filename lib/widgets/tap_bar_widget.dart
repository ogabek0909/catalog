import 'package:catalog/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TapBarWidget extends StatelessWidget {
  const TapBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width > 800 ? 55 : 10, vertical: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TxtButton(buttonName: 'Asosiy sahifa',onPressed: () {
              context.goNamed(HomeScreen.routeName);
            },),
            TxtButton(buttonName: 'Ishlab chiqaruvchilar',onPressed: () {},),
            TxtButton(buttonName: 'Mahsulotlar', onPressed: () {},),
            TxtButton(buttonName: 'Yangiliklar',onPressed: () {},),
            TxtButton(buttonName: 'Slider',onPressed: () {},),
            TxtButton(buttonName: 'Afisha',onPressed: () {},),
          ],
        ),
      ),
    );
  }
}

class TxtButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed; 
  const TxtButton({super.key, required this.buttonName,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width > 800 ? 45 : 5),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
