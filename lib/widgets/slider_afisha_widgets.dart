import 'dart:io';

import 'package:flutter/material.dart';

class SliderAfishaWidgets extends StatefulWidget {
  const SliderAfishaWidgets({super.key});

  @override
  State<SliderAfishaWidgets> createState() => _SliderAfishaWidgetsState();
}

class _SliderAfishaWidgetsState extends State<SliderAfishaWidgets> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  final List<String> _pages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          SizedBox(
            height: 522,
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  // width: 826,
                  // height: 522,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: PageView.builder(
                      onPageChanged: (value) {
                        Future.delayed(const Duration(milliseconds: 200), () {
                          setState(() {
                            _currentIndex = value;
                          });
                        });
                      },
                      controller: _controller,
                      itemCount: _pages.length,
                      itemBuilder: (context, index) => Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  _pages[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 33,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    // border: Border.all()
                                    borderRadius: BorderRadius.circular(10),
                                    color:const  Color.fromRGBO(0, 124, 216, .6)
                                        .withOpacity(.8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(
                                        Icons.calendar_today,
                                        color: Colors.black,
                                        size: 18,
                                      ),
                                      // SizedBox(width: 5),
                                      Text(
                                        '01.02.2023',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "To'qimachilik va yengil sanoat",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 5,
                                          backgroundColor: _currentIndex == 0
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                        SizedBox(width: 5),
                                        CircleAvatar(
                                          radius: 5,
                                          backgroundColor: _currentIndex == 1
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                        SizedBox(width: 5),
                                        CircleAvatar(
                                          radius: 5,
                                          backgroundColor: _currentIndex == 2
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width > 1271)
                  const SizedBox(width: 40),
                if (MediaQuery.of(context).size.width > 1271)
                  const Expanded(
                    flex: 2,
                    child: Afisha(),
                  ),
              ],
            ),
          ),
          if (MediaQuery.of(context).size.width < 1271) Afisha(),
        ],
      ),
    );
  }
}

class Afisha extends StatelessWidget {
  const Afisha({
    super.key,
  });

  @override
  Widget build(BuildContext Flexiblecontext) {
    return Container(
      width: 445,
      height: 522,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(.2),
                  Colors.black.withOpacity(.5),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 33,
                  width: 108,
                  decoration: BoxDecoration(
                    // border: Border.all()
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(0, 124, 216, .6).withOpacity(.8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.announcement_outlined,
                        color: Colors.black,
                        size: 18,
                      ),
                      // SizedBox(width: 5),
                      Text(
                        'E\'lon',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "To'qimachilik va yengil sanoat",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
