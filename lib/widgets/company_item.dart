import '../models/category.dart';
import 'package:catalog/screens/company_detail.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CompanyItem extends StatelessWidget {
  final Category item;
  const CompanyItem({super.key, required this.item});

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
              context.goNamed(CompanyDetail.routeName);
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
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.blue,
                    image: DecorationImage(
                      image: NetworkImage(
                        item.categoryimages[0] ??
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
                      ),
                    ),
                  ),
                  padding: const EdgeInsets.only(
                      top: 40, left: 40, right: 10, bottom: 10),
                  child: Column(
                    children: [Text(item.name)],
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
          Text('Women shoes')
        ],
      ),
    );
  }
}
