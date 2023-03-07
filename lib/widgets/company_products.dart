import 'package:catalog/models/company.dart';
import 'package:flutter/material.dart';

class CompanyProduct extends StatelessWidget {
  final Company company;
  const CompanyProduct({super.key,required this.company});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      // width: deviceSize.width - 456 - 110 - 56,
      height: deviceSize.width / 3,
      child: GridView.builder(
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: deviceSize.width / 6,
          mainAxisExtent: deviceSize.width / 7,
        ),
        itemBuilder: (context, index) => Card(
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
                ),
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
                  child: const Text(
                    'Mahsulot nomi',
                    style: TextStyle(
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
