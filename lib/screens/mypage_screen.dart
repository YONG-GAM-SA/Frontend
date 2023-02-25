import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Container(
          decoration: const BoxDecoration(color: Colors.orange),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  ClipOval(
                    child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Colors.purple,
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "권혁준",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "권혁준",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
