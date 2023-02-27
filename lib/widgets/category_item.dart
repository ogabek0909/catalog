import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 7 * 2 + 28 * 2,
      padding: const EdgeInsets.only(right: 55, left: 55, top: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            elevation: 10,
            color: Colors.transparent,
            child: Container(
              // height: 446,
              width: MediaQuery.of(context).size.width > 1271
                  ? MediaQuery.of(context).size.width / 4
                  : MediaQuery.of(context).size.width - 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
            ),
          ),
          if (MediaQuery.of(context).size.width > 1271)const SizedBox(width: 28),
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
          Text('Women shoes')
        ],
      ),
    );
  }
}
