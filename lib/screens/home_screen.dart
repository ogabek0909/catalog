import 'package:catalog/providers/get_all_category.dart';
import 'package:catalog/widgets/company_item.dart';
import 'package:catalog/widgets/quotation_widget.dart';
import 'package:catalog/widgets/slider_afisha_widgets.dart';
import 'package:catalog/widgets/tap_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/app_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Provider.of<GetAllCategory>(context, listen: false).getAllCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: Provider.of<GetAllCategory>(context, listen: false)
              .getAllCategory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return CustomScrollView(
                slivers: [
                  AppbarWidget(),
                  SliverToBoxAdapter(
                    child: Divider(),
                  ),
                  SliverToBoxAdapter(
                    child: TabBarWidget(),
                  ),
                  SliverToBoxAdapter(
                    child: Divider(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 45),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        const SliderAfishaWidgets(),
                        const SizedBox(height: 10),
                        ...Provider.of<GetAllCategory>(context, listen: false)
                            .allCategories
                            .map(
                              (item) => CompanyItem(
                                item: item,
                              ),
                            ),
                        const SizedBox(height: 30),
                        const QuotationWidget()
                      ],
                    ),
                  )
                ],
              );
            }
          }),
    );
  }
}
