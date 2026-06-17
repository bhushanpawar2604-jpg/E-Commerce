import 'package:flutter/material.dart';

class ForgotPasswordScreen
    extends StatelessWidget {
  const ForgotPasswordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Forgot Password",
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              decoration:
                  const InputDecoration(
                hintText:
                    "Enter Email",
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/reset-password',
                );
              },
              child: const Text(
                "Continue",
              ),
            ),
          ],
        ),
      ),
    );
  }
}