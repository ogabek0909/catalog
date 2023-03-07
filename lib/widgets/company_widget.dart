import 'package:catalog/providers/get_all_company.dart';
import 'package:catalog/screens/company_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CompanyWidget extends StatelessWidget {
  final int categoryId;
  const CompanyWidget({super.key,required this.categoryId});

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<GetAllCompany>(context).allCompany;
    final deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      height: 770,
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: deviceSize.width / 6,
          mainAxisExtent: deviceSize.width / 7,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            context.goNamed(
              CompanyDetailScreen.routeName,
              params: {
                "categoryId":categoryId.toString(),
                'companyId': products[index].id.toString(),
              },
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU'),
                fit: BoxFit.cover,
              ),
            ),
            // padding: const EdgeInsets.only(top: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 39,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      end: Alignment.topCenter,
                      begin: Alignment.bottomCenter,
                      colors: [
                        Colors.black,
                        Color.fromARGB(0, 0, 0, 0),
                      ],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    products[index].name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
