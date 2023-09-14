import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  CategoryTitle(
      {super.key,
      required this.title,
      required this.count,
      required this.buttonText,
      required this.onButtonTap});
  String title;
  int count;
  String buttonText;
  void Function() onButtonTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          count.toString(),
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
        ),
        const Spacer(),
        TextButton(onPressed: onButtonTap, child: Text(buttonText))
      ],
    );
  }
}
