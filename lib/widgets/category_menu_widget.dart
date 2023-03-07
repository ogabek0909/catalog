import 'package:catalog/providers/home_screen_provider.dart';
import 'package:catalog/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CategoryMenuWidget extends StatelessWidget {
  const CategoryMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 770,
        width: 247,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 72,
                child: const Text(
                  'Elements:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                    height: 0,
                  ),
                  itemCount:
                      Provider.of<HomeScreenProvider>(context, listen: false)
                          .allCategories
                          .length,
                  itemBuilder: (context, index) => ListTile(
                    minVerticalPadding: 0,
                    title: Text(
                      Provider.of<HomeScreenProvider>(context,listen: false)
                          .allCategories[index]
                          .name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                    onTap: () {
                      context.goNamed(
                        CategoryScreen.routeName,
                        params: {
                          'categoryId': Provider.of<HomeScreenProvider>(context,listen: false)
                              .allCategories[index]
                              .id
                              .toString(),
                        },
                      );
                    },
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
