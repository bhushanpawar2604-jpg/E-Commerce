import 'package:flutter/material.dart';

class ResetPasswordScreen
    extends StatelessWidget {
  const ResetPasswordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Reset Password"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              obscureText: true,
              decoration:
                  const InputDecoration(
                hintText:
                    "New Password",
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              obscureText: true,
              decoration:
                  const InputDecoration(
                hintText:
                    "Confirm Password",
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/login',
                );
              },
              child: const Text(
                "Reset Password",
              ),
            ),
          ],
        ),
      ),
    );
  }
}