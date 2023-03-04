import 'package:catalog/widgets/app_bar_widget.dart';
import 'package:catalog/widgets/footer_widget.dart';
import 'package:catalog/widgets/tap_bar_widget.dart';
import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});
  static const routeName = 'saved-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const AppBarWidget(),
        const SliverToBoxAdapter(
          child: Divider(),
        ),
        SliverToBoxAdapter(
          child: TapBarWidget(),
        ),
        SliverToBoxAdapter(
          child: Divider(height: 4),
        ),
        SliverToBoxAdapter(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height + 40,
                width: MediaQuery.of(context).size.width > 500
                    ? 300
                    : MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(37, 45, 51, 1),
                child: Column(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
                      height: 320,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 44),
                    ListTile(
                      leading: Icon(
                        Icons.bookmark,
                        color: Colors.blue,
                        size: 30,
                      ),
                      title: Text(
                        "Saqlangan mahsulotlar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.data_array_rounded,
                        color: Colors.blue,
                        size: 30,
                      ),
                      title: Text(
                        "Ishlab chiqaruvchi statusi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (MediaQuery.of(context).size.width > 800)
                Container(
                  margin: const EdgeInsets.only(left: 25, top: 40, bottom: 40),
                  width: MediaQuery.of(context).size.width - 355,
                  // color: Colors.red,
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                    itemCount: 40,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            // mainAxisExtent: 300,
                            mainAxisSpacing: 25,
                            crossAxisSpacing: 25,
                            childAspectRatio: 1),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // padding: const EdgeInsets.only(top: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark,
                                size: 30,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            height: 39,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              gradient: LinearGradient(
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Colors.black,
                                  Color.fromARGB(0, 0, 0, 0),
                                ],
                              ),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'Mahsulot nomi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              // SizedBox(
              //   height: double.maxFinite,
              //   width: 400,
              //   child: Column(
              //     children: [
              //       Expanded(
              //         child: GridView.builder(
              //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //             crossAxisCount: 4,
              //           ),
              //           itemBuilder: (context, index) => Container(
              //             height: 200,
              //             color: Colors.red,
              //             width: 200,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            alignment: Alignment.center,
            // height: 280,
            width: double.infinity,
            color: Colors.blue,
            child: const FooterWidget(),
          ),
        )
      ],
    ));
  }
}
