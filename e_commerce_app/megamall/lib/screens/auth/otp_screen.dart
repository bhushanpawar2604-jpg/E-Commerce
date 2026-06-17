import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("OTP")),
      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [

            const Text(
              "Enter OTP",
            ),

            const SizedBox(height: 20),

            TextField(
              keyboardType:
                  TextInputType.number,
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/home',
                  (route) => false,
                );
              },
              child:
                  const Text("Verify"),
            ),
          ],
        ),
      ),
    );
  }
}