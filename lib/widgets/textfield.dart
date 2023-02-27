import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  String hintText;
  Widget perfixIcon;
  TextInputType inputType;
  TextEditingController controller;
  String? Function(String? value)? validator;
  TextFieldForm(
      {super.key,
      required this.hintText,
      required this.perfixIcon,
      required this.controller,
      this.validator,
      this.inputType = TextInputType.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: 245,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        shadowColor: const Color.fromARGB(200, 135, 241, 255),
        child: TextFormField(
          validator: validator,
          keyboardType: inputType,
          decoration: InputDecoration(
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
    );
  }
}
