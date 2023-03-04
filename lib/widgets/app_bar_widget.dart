import 'package:catalog/screens/login_screen.dart';
import 'package:catalog/screens/saved_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return SliverAppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      expandedHeight: 80,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          width: deviceWidth,
          padding: EdgeInsets.symmetric(
              horizontal: deviceWidth > 800 ? 55 : 10, vertical: 15),
          color: Colors.transparent,
          child: Row(
            children: [
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: double.maxFinite,
                  alignment: deviceWidth > 800 ? Alignment.centerLeft : null,
                  child: FittedBox(
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: const Placeholder(),
                        ),
                        const SizedBox(width: 10),
                        const SizedBox(
                          child: Text(
                            "SAMARQAND",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (MediaQuery.of(context).size.width > 800)
                Flexible(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: double.maxFinite,
                    // color: Colors.pink,
                    child: Container(
                      // height: 42,
                      // width: 700,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          border: InputBorder.none,
                          prefixIcon: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: DropdownButton(
                              focusColor: Colors.transparent,
                              underline: Container(),
                              elevation: 0,
                              value: 'm',
                              items: const [
                                DropdownMenuItem(
                                  value: 'm',
                                  child: Text('Mahsulotlar bo\'yicha'),
                                ),
                                DropdownMenuItem(
                                  value: 'k',
                                  child: Text('Korxona bo\'yicha'),
                                ),
                              ],
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              Flexible(
                flex: deviceWidth < 800 ? 2 : 1,
                child: Container(
                  width: double.maxFinite,
                  child: FittedBox(
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            context.goNamed(SavedScreen.routeName);
                          },
                          child: Icon(
                            Icons.bookmark_border,
                            size: 35,
                            color: Colors.blue,
                          ),
                        ),
                        // const SizedBox(width: 31),
                        TextButton(
                          onPressed: () {
                            context.goNamed(LoginScreen.routeName);
                          },
                          child: Row(
                            children: const [
                              Icon(
                                CupertinoIcons.person,
                                color: Colors.blue,
                                size: 35,
                              ),
                              Text(
                                'Kirish',
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(width: 37),
                        Row(
                          children: [
                            const Icon(
                              Icons.g_translate_outlined,
                              color: Colors.blue,
                              size: 35,
                            ),
                            const SizedBox(width: 12),
                            Container(
                              height: 25,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButton(
                                focusColor: Colors.transparent,
                                value: 'uz',
                                elevation: 0,
                                underline: Container(),
                                items: const [
                                  DropdownMenuItem(
                                    child: Text('Inglizcha'),
                                    value: 'en',
                                  ),
                                  DropdownMenuItem(
                                    child: Text('Ruscha'),
                                    value: 'ru',
                                  ),
                                  DropdownMenuItem(
                                    child: Text('O\'zbekcha'),
                                    value: 'uz',
                                  ),
                                ],
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(width: 30),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
