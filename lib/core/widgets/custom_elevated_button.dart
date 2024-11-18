// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;
  const CustomElevatedButton({
    Key? key,
    required this.texto,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(texto),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple.shade200,
        foregroundColor: Colors.white,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.black, width: 1),
        ),
        elevation: 5,
      ),
    );
  }
}
