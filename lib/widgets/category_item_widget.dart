import 'package:catalog/screens/category_screen.dart';
import 'package:catalog/widgets/category_detail_widget.dart';

import '../models/category.dart';
import 'package:catalog/screens/company_detail.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryItemWidget extends StatelessWidget {
  final Category item;
  const CategoryItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 7 * 2 + 28 * 2,
      padding: const EdgeInsets.only(right: 55, left: 55, top: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              context.goNamed(CategoryScreen.routeName);
            },
            child: Card(
              elevation: 10,
              color: Colors.transparent,
              child: Container(
                  // height: 446,
                  width: MediaQuery.of(context).size.width > 1271
                      ? MediaQuery.of(context).size.width / 4
                      : MediaQuery.of(context).size.width - 120,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.blue,
                    image: DecorationImage(
                      image: NetworkImage(
                        item.categoryimages,
                      ),
                      fit: BoxFit.fill,
                      // repeat: ImageRepeat.repeatX,
                    ),
                  ),
                  padding: const EdgeInsets.only(
                      top: 40, left: 40, right: 10, bottom: 10),
                  child: Column(
                    children: [
                      Text(
                        item.name.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2,
                        ),
                      )
                    ],
                  )),
            ),
          ),
          if (MediaQuery.of(context).size.width > 1271)
            const SizedBox(width: 28),
          if (MediaQuery.of(context).size.width > 1271)
            Expanded(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: MediaQuery.of(context).size.width / 6,
                  mainAxisExtent: MediaQuery.of(context).size.width / 7,
                  crossAxisSpacing: 28,
                  mainAxisSpacing: 23,
                ),
                itemBuilder: (context, index) => Card(
                  elevation: 10,
                  color: Colors.transparent,
                  child: gridItem(),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Container gridItem() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Text('Women shoes')
        ],
      ),
    );
  }
}
