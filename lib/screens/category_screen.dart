import 'package:catalog/widgets/category_detail_widget.dart';
import 'package:catalog/widgets/category_menu_widget.dart';
import 'package:catalog/widgets/company_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/tap_bar_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  static const routeName = 'category-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Provider.of(context,listen: false),
        builder: (context, snapshot) {
          return CustomScrollView(
            slivers: [
              AppBarWidget(),
              SliverToBoxAdapter(
                child: Divider(),
              ),
              SliverToBoxAdapter(
                child: TapBarWidget(),
              ),
              SliverToBoxAdapter(
                child: Divider(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 13),
              ),
              SliverToBoxAdapter(
                child: CategoryDetailWidget(),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 26),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CategoryMenuWidget(),
                      const SizedBox(width: 32),
                      if (MediaQuery.of(context).size.width > 1271)
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Kompaniyalar',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            CompanyWidget()
                          ],
                        ))
                    ],
                  ),
                ),
              )
            ],
          );
        }
      ),
    );
  }
}
