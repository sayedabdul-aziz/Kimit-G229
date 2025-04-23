import 'package:first_app/doctor_profile/widgets/about_widget.dart';
import 'package:first_app/doctor_profile/widgets/address_and_time.dart';
import 'package:first_app/doctor_profile/widgets/doctor_header.dart';
import 'package:flutter/material.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        leading:
            const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        title: const Text(
          'Doctor Profile',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const DoctorHeader(),
              const SizedBox(height: 20),
              const AboutWidget(),
              const SizedBox(height: 15),
              const AddressAndTime(),
              const Divider(),
              const SizedBox(height: 15),
              const AddressAndTime(),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.calendar_month_outlined,
                            color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          'Book Appointment',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
