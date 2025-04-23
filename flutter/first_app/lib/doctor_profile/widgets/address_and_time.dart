import 'package:first_app/doctor_profile/widgets/tile_details.dart';
import 'package:flutter/material.dart';

class AddressAndTime extends StatelessWidget {
  const AddressAndTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(8)),
      child: const Column(
        children: [
          TileDetails(
            icon: Icons.local_hospital,
            text: 'Cairo Hospital',
          ),
          SizedBox(height: 10),
          TileDetails(
            icon: Icons.watch_later_outlined,
            text: '8:00 AM - 10:00 PM',
          ),
          SizedBox(height: 10),
          TileDetails(
            icon: Icons.location_on,
            text: '2st street, Cairo, Egypt',
          )
        ],
      ),
    );
  }
}
