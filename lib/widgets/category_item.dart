import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
      // color: Colors.black12,
        image: DecorationImage(
          image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
          ),
          fit: BoxFit.cover
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(40),
      child: FittedBox(
        child: Text(
          'Neft va kimyo sanoati',
          style: TextStyle(
            color: Colors.white,
            fontSize: 70,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
