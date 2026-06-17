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
                color: Colors.green,
                size: 120,
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                "Order Successful",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              const Text(
                "Your order has been placed successfully.",
                textAlign:
                    TextAlign.center,
              ),

              const SizedBox(
                height: 30,
              ),

              SizedBox(
                width:
                    double.infinity,
                child:
                    ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/home',
                      (route) => false,
                    );
                  },
                  child: const Text(
                    "Continue Shopping",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}