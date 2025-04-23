import 'package:flutter/material.dart';

class TileDetails extends StatelessWidget {
  const TileDetails({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: Colors.indigo,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(width: 10),
        Text(text, style: const TextStyle(fontSize: 16))
      ],
    );
  }
}
