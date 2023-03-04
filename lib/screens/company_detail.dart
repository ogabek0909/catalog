import 'package:catalog/widgets/app_bar_widget.dart';
import 'package:catalog/widgets/company_products.dart';
import 'package:catalog/widgets/menu_bar_widget.dart';
import 'package:catalog/widgets/tap_bar_widget.dart';
import 'package:flutter/material.dart';

class CompanyDetail extends StatelessWidget {
  const CompanyDetail({super.key});
  static const routeName = 'company-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppBarWidget(),
          const SliverToBoxAdapter(
            child: Divider(),
          ),
          const SliverToBoxAdapter(child: TapBarWidget()),
          const SliverToBoxAdapter(
            child: Divider(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 45),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MenuBarWidget(),
                  if (MediaQuery.of(context).size.width > 1271)
                    const SizedBox(width: 55),
                  if (MediaQuery.of(context).size.width > 1271)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mahsulotlari',
                            style: TextStyle(
                              color: Color.fromRGBO(137, 127, 127, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          CompanyProduct(),
                          Text(
                            'Zaruriy xom ashyolar',
                            style: TextStyle(
                              color: Color.fromRGBO(137, 127, 127, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          CompanyProduct(),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
