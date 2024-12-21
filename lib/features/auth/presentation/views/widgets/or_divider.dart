import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        SizedBox(
            height: 31,
            width: 55,
            child: Center(
                child: Text(
              "أو",
              style: Styles.textStyleSemibold16,
            ))),
        Expanded(child: Divider()),
      ],
    );
  }
}
