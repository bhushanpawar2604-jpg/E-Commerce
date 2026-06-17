import 'package:flutter/material.dart';

class OrderSuccessScreen
    extends StatelessWidget {
  const OrderSuccessScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle,
                size: 120,
                color: Colors.green,
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                "Order Placed Successfully",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              const Text(
                "Your order will be delivered soon.",
                textAlign:
                    TextAlign.center,
              ),

              const SizedBox(
                height: 30,
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/home',
                    (route) => false,
                  );
                },
                child: const Text(
                  "Back To Home",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}