import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.deepOrange,
          size: 24,
        ),
        title: const Text(
          'My First App',
          style: TextStyle(color: Colors.deepOrange, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {
                //
              },
              icon: const Icon(
                Icons.search,
                color: Colors.deepOrange,
              ))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      colors: [Colors.deepOrange, Colors.black],
                      begin: Alignment.topLeft,
                      end: Alignment.centerRight),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 3, blurRadius: 10)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/car1.jpg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Ahmed Ali',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(color: Colors.deepOrange, fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook_rounded, color: Colors.deepOrange),
                      SizedBox(width: 15),
                      Icon(Icons.snapchat_rounded, color: Colors.deepOrange),
                      SizedBox(width: 15),
                      Icon(Icons.telegram_rounded, color: Colors.deepOrange),
                      SizedBox(width: 15),
                      Icon(Icons.call, color: Colors.deepOrange),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
