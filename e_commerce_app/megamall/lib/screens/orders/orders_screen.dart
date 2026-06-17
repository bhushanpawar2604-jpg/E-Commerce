import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/order_provider.dart';

class OrdersScreen
    extends StatelessWidget {
  const OrdersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final orderProvider =
        context.watch<OrderProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Orders",
        ),
      ),
      body:
          orderProvider.orders.isEmpty
              ? const Center(
                  child: Text(
                    "No Orders Yet",
                  ),
                )
              : ListView.builder(
                  itemCount:
                      orderProvider
                          .orders
                          .length,
                  itemBuilder:
                      (
                        context,
                        index,
                      ) {
                    final order =
                        orderProvider
                            .orders[index];

                    return Card(
                      margin:
                          const EdgeInsets
                              .all(12),
                      child: ListTile(
                        leading:
                            Image.asset(
                          order.productImage,
                          width: 60,
                        ),
                        title: Text(
                          order.productName,
                        ),
                        subtitle: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                          children: [
                            Text(
                              order.date,
                            ),
                            Text(
                              order.status,
                            ),
                          ],
                        ),
                        trailing:
                            Text(
                          "\$${order.price}",
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}