import 'package:calculator_app/bmi/widgets/gender_card.dart';
import 'package:calculator_app/colors.dart';
import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({super.key});

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  bool isMale = true;
  double height = 160;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text('BMI Calculator',
            style: TextStyle(fontSize: 20, color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            genderType(),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Height', style: TextStyle(color: Colors.white)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toStringAsFixed(0),
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        const Text('cm', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 80,
                      max: 220,
                      activeColor: AppColors.primaryColor,
                      inactiveColor: AppColors.greyColor,
                      thumbColor: AppColors.primaryColor,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text('Calculate',
                        style: TextStyle(fontSize: 16, color: Colors.white)))),
          ],
        ),
      ),
    );
  }

  Expanded genderType() {
    return Expanded(
      child: Row(
        children: [
          GenderCard(
            icon: Icons.male,
            label: 'Male',
            onPressed: () {
              setState(() {
                isMale = true;
              });
            },
            isSelected: isMale,
          ),
          const SizedBox(width: 10),
          GenderCard(
            icon: Icons.female,
            label: 'Female',
            onPressed: () {
              setState(() {
                isMale = false;
              });
            },
            isSelected: !isMale,
          )
        ],
      ),
    );
  }
}
