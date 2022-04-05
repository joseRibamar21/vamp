import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String? text;
  final Function() f;
  const CustomButtom({Key? key, required this.text, required this.f})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            onPrimary: Colors.red,
            elevation: 5,
            primary: const Color(0xFFF23A29)),
        onPressed: f,
        child: Text(
          text ?? "",
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
