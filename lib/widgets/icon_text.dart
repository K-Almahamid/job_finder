import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  late final IconData icon;
  late final String text;

  IconText(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.yellow),
        const SizedBox(width: 10.0),
        Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
