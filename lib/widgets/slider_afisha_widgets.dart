import 'dart:async';

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
  void initState() {
    Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        if (_currentIndex < 2) {
          _currentIndex += 1;
        } else {
          _currentIndex = 0;
        }
        if (_controller.hasClients) {
          _controller.animateToPage(
            _currentIndex,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOutSine,
          );
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
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
                      // allowImplicitScrolling: true,
                      pageSnapping: true,
                      onPageChanged: (value) {
                        Future.delayed(
                          const Duration(milliseconds: 200),
                          () {
                            setState(() {
                              _currentIndex = value;
                            });
                          },
                        );
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 30, left: 30),
                                height: 33,
                                width: 150,
                                decoration: BoxDecoration(
                                  // border: Border.all()
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromRGBO(0, 124, 216, .6)
                                      .withOpacity(.8),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    // SizedBox(width: 5),
                                    Text(
                                      '01.02.2023',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 30, horizontal: 30),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    end: Alignment.topCenter,
                                    begin: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black,
                                      Color.fromARGB(0, 0, 0, 0),
                                    ],
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: const Text(
                                          "To'qimachilik va yengil sanoat",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30),
                                        ),
                                      ),
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
                              ),
                            ],
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
          if (MediaQuery.of(context).size.width < 1271)
            const SizedBox(height: 35),
          if (MediaQuery.of(context).size.width < 1271) const Afisha(),
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
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 33,
                width: 108,
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  // border: Border.all()
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(0, 124, 216, .6).withOpacity(.8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.announcement_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                    // SizedBox(width: 5),
                    Text(
                      'E\'lon',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Color.fromARGB(0, 0, 0, 0),
                    ],
                  ),
                ),
                child: const Text(
                  "To'qimachilik va yengil sanoat",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
