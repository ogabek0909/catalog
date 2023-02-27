import 'package:flutter/material.dart';

class CategoryMenuWidget extends StatelessWidget {
  const CategoryMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 770,
        width: 247,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 72,
                child: const Text(
                  'Elements:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                    height: 0,
                  ),
                  itemCount: 11,
                  itemBuilder: (context, index) => const ListTile(
                    minVerticalPadding: 0,
                    title: Text(
                      'Category name',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
