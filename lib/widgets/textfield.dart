import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  String hintText;
  Widget perfixIcon;
  TextInputType inputType;
  TextEditingController controller;
  String? Function(String? value)? validator;
  TextFieldForm({
    super.key,
    required this.hintText,
    required this.perfixIcon,
    required this.controller,
    this.validator,
    this.inputType = TextInputType.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: 340,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('helper'),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [               
                BoxShadow(
                  color: Color.fromRGBO(187, 253, 252, 1),
                  blurRadius: 20,
                  offset: Offset(4, 8)
                ),
              ],
            ),
            child: TextFormField(
              validator: validator,
              keyboardType: inputType,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: hintText,
                // label: Text(
                //   hintText,
                //   style: const TextStyle(color: Colors.blue),
                // ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: perfixIcon,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white)),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
