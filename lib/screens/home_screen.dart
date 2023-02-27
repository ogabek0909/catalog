import 'package:catalog/providers/get_all_category.dart';
import 'package:catalog/widgets/category_item.dart';
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
    Provider.of<GetAllCategory>(context,listen: false).getAllCategory();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
                SliderAfishaWidgets(),
                SizedBox(height: 10),
                CategoryItem(),
                SizedBox(height: 30),
                QuotationWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
