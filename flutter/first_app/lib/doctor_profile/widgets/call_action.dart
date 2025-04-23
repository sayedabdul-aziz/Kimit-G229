import 'package:flutter/material.dart';

class CallAction extends StatelessWidget {
  const CallAction({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.call),
          Text(text,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
