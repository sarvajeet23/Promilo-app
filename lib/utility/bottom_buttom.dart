import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final Icon icon;
  final String lable;
  final VoidCallback onpress;
  final TextStyle? style;
  const BottomBar({
    super.key,
    required this.icon,
    required this.lable,
    required this.onpress,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Column(
        children: [icon, Text(lable, style: style)],
      ),
    );
  }
}
