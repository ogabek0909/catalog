import 'package:catalog/widgets/slider_afisha_widgets.dart';
import 'package:catalog/widgets/tap_bar_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Appbar(),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
