import 'package:flutter/material.dart';

import '../consts/style.dart';

class CustomedContainer extends StatelessWidget {

  double? width;
  double? height;
  Widget? child;
  Color color;

  CustomedContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        )
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}
