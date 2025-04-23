import 'package:first_app/doctor_profile/widgets/call_action.dart';
import 'package:flutter/material.dart';

class DoctorHeader extends StatelessWidget {
  const DoctorHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            'assets/car1.jpg',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 15),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dr. Ahmed Abdul-Aziz',
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Dentist',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.star_rounded, color: Colors.amber),
                Text('4.5',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                CallAction(text: '1'),
                SizedBox(width: 10),
                CallAction(text: '2'),
              ],
            )
          ],
        )
      ],
    );
  }
}
