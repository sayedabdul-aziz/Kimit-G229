import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(
              color: Colors.indigo,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          'Former of the American Academy of Orthopedic Surgeons (AAOS) in 2016, Dr. Abdul-Aziz is a board-certified dentist with a passion for helping patients restore their smiles, teeth, and jaws. ',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
