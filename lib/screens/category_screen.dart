import 'package:catalog/providers/get_all_company.dart';
import 'package:catalog/providers/home_screen_provider.dart';
import 'package:catalog/screens/home_screen.dart';
import 'package:catalog/widgets/category_detail_widget.dart';
import 'package:catalog/widgets/category_menu_widget.dart';
import 'package:catalog/widgets/company_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/tap_bar_widget.dart';

class CategoryScreen extends StatelessWidget {
  final int id;
  const CategoryScreen({super.key, required this.id});
  static const routeName = 'category-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppBarWidget(),
          const SliverToBoxAdapter(
            child: Divider(),
          ),
          const SliverToBoxAdapter(
            child: TapBarWidget(),
          ),
          const SliverToBoxAdapter(
            child: Divider(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 13),
          ),
          SliverToBoxAdapter(
            child: FutureBuilder(
                future: Provider.of<GetAllCompany>(context,listen: false).getAllCompany(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else {
                    return Column(
                      children: [
                        CategoryDetailWidget(
                          item: Provider.of<HomeScreenProvider>(
                            context,
                            listen: false,
                          ).allCategories.firstWhere(
                                (element) => element.id == id,
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 26),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CategoryMenuWidget(),
                              const SizedBox(width: 32),
                              if (MediaQuery.of(context).size.width > 1271)
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Kompaniyalar',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        ),
                                      ),
                                      CompanyWidget(categoryId: id,)
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                }),
          )
        ],
      ),
    );
  }
}
