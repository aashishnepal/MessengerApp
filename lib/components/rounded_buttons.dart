import 'package:flutter/material.dart';

class RoundedButtons extends StatelessWidget {
  @override
  String? title;
  Color? bcolor;
  final VoidCallback? onPressed;

  RoundedButtons({@required this.bcolor, this.title, this.onPressed});
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: bcolor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title!,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
