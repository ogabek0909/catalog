import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final diviceSize = MediaQuery.of(context).size;
    print('object');
    return SliverAppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      expandedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding:
              const EdgeInsets.only(top: 18, left: 55, right: 55, bottom: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      child: const Placeholder(),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      'SAMARQAND',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                SizedBox(
                  width: diviceSize.width / 9,
                ),
                Container(
                  height: 42,
                  width: 700,
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
                      
                      prefixIcon: Padding(
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
                SizedBox(
                  width: diviceSize.width / 8,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.bookmark_border,
                        size: 35,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 31),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(
                            CupertinoIcons.person,
                            color: Colors.blue,
                            size: 35,
                          ),
                          Text(
                            'Kirish',
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 37),
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
                    const SizedBox(width: 30),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
