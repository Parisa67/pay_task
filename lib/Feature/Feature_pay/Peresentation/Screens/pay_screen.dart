import 'package:flutter/material.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("موجودی فعلی: "),
        Text(
          "0",
          style: TextStyle(color: Colors.pink),
        )
      ],
    );
  }
}
