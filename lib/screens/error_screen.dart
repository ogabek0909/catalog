import 'package:catalog/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/tap_bar_widget.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({super.key});
  static const routeName = 'error-screen';

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: prefer_const_constructors
      body: CustomScrollView(
        slivers: [
          const AppBarWidget(),
          const SliverToBoxAdapter(child: TapBarWidget()),
          SliverToBoxAdapter(
            child: Column(
              children: [
                if (MediaQuery.of(context).size.width > 800)
                  // ignore: prefer_const_constructors
                  FittedBox(
                    // ignore: prefer_const_constructors
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        AddTask(),
                        ImageTask(),
                      ],
                    ),
                  ),
                if (MediaQuery.of(context).size.width < 800)
                  // ignore: prefer_const_constructors
                  FittedBox(
                    // ignore: prefer_const_constructors
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            ImageTask(),
                            AddTask(),
                          ],
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Ushbu amalni bajarish uchun avval',
          style: TextStyle(
            fontSize: 25,
            color: Colors.blue,
            fontWeight: FontWeight.w200,
          ),
        ),
        Row(
          children: [
            const Text(
              'akkauntingizga',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.w200,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'kiring',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
            const Text(
              'yoki',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.w200,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'ro\'yxatdan o\'ting.',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                  fontWeight: FontWeight.w800,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class ImageTask extends StatelessWidget {
  const ImageTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1200 / 2,
      width: 1200 / 2,
      child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
      ),
    );
  }
}
