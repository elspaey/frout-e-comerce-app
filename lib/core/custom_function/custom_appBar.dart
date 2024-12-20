import 'package:flutter/material.dart';

AppBar thAppBar(
  BuildContext context, {
  required String text,
  required TextStyle style,
  required Icon theIcon,
}) {
  return AppBar(
    leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: theIcon),
    centerTitle: true,
    title: Text(
      text,
      style: style,
    ),
  );
}
