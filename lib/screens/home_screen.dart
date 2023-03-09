import 'package:catalog/providers/home_screen_provider.dart';
import 'package:catalog/widgets/category_item_widget.dart';
import 'package:catalog/widgets/footer_widget.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Provider.of<HomeScreenProvider>(context, listen: false)
            .getAllCategory(),
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
            return CustomScrollView(
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
                  child: SizedBox(height: 45),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SliderAfishaWidgets(),
                      const SizedBox(height: 10),
                      ...Provider.of<HomeScreenProvider>(context, listen: false)
                          .allCategories
                          .map(
                            (item) => CategoryItemWidget(
                              item: item,
                            ),
                          ),
                      const SizedBox(height: 30),
                      const QuotationWidget(),
                      Container(
                        alignment: Alignment.center,
                        // height: 280,
                        width: double.infinity,
                        color: Colors.blue,
                        child: const FooterWidget(),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
