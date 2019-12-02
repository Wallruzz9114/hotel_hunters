import 'package:flutter/material.dart';

class AppBarText extends StatelessWidget {

  const AppBarText({ this.text });

  final String text;

  @override
  Text build(BuildContext context) => Text(
    text,
    style: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
    ),
  );

}