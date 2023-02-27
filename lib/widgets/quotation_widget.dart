import 'package:flutter/material.dart';

class QuotationWidget extends StatelessWidget {
  const QuotationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 580,
      padding: const EdgeInsets.symmetric(horizontal: 71, vertical: 75),
      decoration: const BoxDecoration(
        color: Colors.white30,
        image: DecorationImage(
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
            ),
            fit: BoxFit.cover),
      ),
      child: Container(
        padding:
            const EdgeInsets.only(top: 22, bottom: 40, right: 53, left: 40),
        color: const Color.fromRGBO(0, 0, 0, .4),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      'Want to get quotations?',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 55),
                  FittedBox(
                    child: Text(
                      'Want to get quotations?',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 21),
                  FittedBox(
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. \nUt praesent viverra viverra aliquet tincidunt purus.',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  FittedBox(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 94),
                        side: const BorderSide(color: Colors.white),
                  
                        // shadowColor: Colors.white
                      ),
                      child: Text(
                        'Batafsil',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
            if (MediaQuery.of(context).size.width > 1271)const TxtFields()
          ],
        ),
      ),
    );
  }
}

class TxtFields extends StatelessWidget {
  const TxtFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          FittedBox(
            child: const Text(
              "What to get quotations?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            // width: double.infinity,
            // height: ,
            color: const Color.fromRGBO(217, 217, 217, .59),
            padding: const EdgeInsets.all(28),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 600,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: 'Product Name or Keywords',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 600,
                        child: TextField(
                          maxLines: 4,
                          
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'Product Description'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        // height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: DropdownButton(
                          underline: Container(),
                          // dropdownColor: Colors.white,
                          // focusColor: Colors.white,                              
                          value: 1,
                          items: const [
                            DropdownMenuItem(child: Text('kg'),value: 1,),
                            DropdownMenuItem(child: Text('l'),value: 2,),
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  FittedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(0, 124, 216, 1),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 53),
                      ),
                      child: const FittedBox(
                        child: Text(
                          "Jo'natish",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
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
