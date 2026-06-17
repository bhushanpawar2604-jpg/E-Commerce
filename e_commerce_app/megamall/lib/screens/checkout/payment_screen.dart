import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() =>
      _PaymentScreenState();
}

class _PaymentScreenState
    extends State<PaymentScreen> {
  String paymentMethod = "Cash On Delivery";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            RadioListTile(
              value: "Cash On Delivery",
              groupValue: paymentMethod,
              title: const Text(
                "Cash On Delivery",
              ),
              onChanged: (value) {
                setState(() {
                  paymentMethod =
                      value.toString();
                });
              },
            ),

            RadioListTile(
              value: "UPI",
              groupValue: paymentMethod,
              title: const Text("UPI"),
              onChanged: (value) {
                setState(() {
                  paymentMethod =
                      value.toString();
                });
              },
            ),

            RadioListTile(
              value: "Card",
              groupValue: paymentMethod,
              title: const Text(
                "Debit/Credit Card",
              ),
              onChanged: (value) {
                setState(() {
                  paymentMethod =
                      value.toString();
                });
              },
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/order-success',
                  );
                },
                child: const Text(
                  "Place Order",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}