import 'package:flutter/material.dart';

class PopButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.black,
      icon: Icon(Icons.arrow_back_outlined),
      iconSize: 30,
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
