import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: size.width,
        height: size.height * 0.05,
        child: TextField(
          cursorHeight: 5,
          cursorColor: Colors.grey,
          textAlignVertical: TextAlignVertical.center,
          style: const TextStyle(color: Colors.grey),
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            hoverColor: Colors.grey,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
      ),
    );
  }
}
