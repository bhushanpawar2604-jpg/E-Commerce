import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final cartProvider =
        context.watch<CartProvider>();

    return Scaffold(
      appBar: AppBar(
        title:
            const Text("My Cart"),
      ),
      body:
          cartProvider.items.isEmpty
              ? const Center(
                  child: Text(
                    "Cart is Empty",
                  ),
                )
              : Column(
                  children: [

                    Expanded(
                      child:
                          ListView.builder(
                        itemCount:
                            cartProvider
                                .items
                                .length,
                        itemBuilder:
                            (
                              context,
                              index,
                            ) {

                          final item =
                              cartProvider
                                      .items[
                                  index];

                          return Card(
                            margin:
                                const EdgeInsets.all(
                              8,
                            ),
                            child:
                                Padding(
                              padding:
                                  const EdgeInsets.all(
                                10,
                              ),
                              child:
                                  Row(
                                children: [

                                  Image.asset(
                                    item
                                        .product
                                        .image,
                                    width:
                                        80,
                                    height:
                                        80,
                                  ),

                                  const SizedBox(
                                    width:
                                        12,
                                  ),

                                  Expanded(
                                    child:
                                        Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          item
                                              .product
                                              .name,
                                          style:
                                              const TextStyle(
                                            fontWeight:
                                                FontWeight.bold,
                                          ),
                                        ),

                                        const SizedBox(
                                          height:
                                              5,
                                        ),

                                        Text(
                                          "\$${item.product.price}",
                                        ),

                                        const SizedBox(
                                          height:
                                              8,
                                        ),

                                        Row(
                                          children: [

                                            IconButton(
                                              onPressed:
                                                  () {
                                                cartProvider
                                                    .decreaseQuantity(
                                                  item.product.id,
                                                );
                                              },
                                              icon:
                                                  const Icon(
                                                Icons.remove_circle_outline,
                                              ),
                                            ),

                                            Text(
                                              item
                                                  .quantity
                                                  .toString(),
                                            ),

                                            IconButton(
                                              onPressed:
                                                  () {
                                                cartProvider
                                                    .increaseQuantity(
                                                  item.product.id,
                                                );
                                              },
                                              icon:
                                                  const Icon(
                                                Icons.add_circle_outline,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  IconButton(
                                    onPressed:
                                        () {
                                      cartProvider
                                          .removeFromCart(
                                        item.product.id,
                                      );
                                    },
                                    icon:
                                        const Icon(
                                      Icons
                                          .delete,
                                      color:
                                          Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    Container(
                      padding:
                          const EdgeInsets.all(
                        16,
                      ),
                      child:
                          Column(
                        children: [

                          Row(
                            children: [

                              const Text(
                                "Total",
                                style:
                                    TextStyle(
                                  fontSize:
                                      20,
                                  fontWeight:
                                      FontWeight.bold,
                                ),
                              ),

                              const Spacer(),

                              Text(
                                "\$${cartProvider.totalPrice.toStringAsFixed(2)}",
                                style:
                                    const TextStyle(
                                  fontSize:
                                      22,
                                  fontWeight:
                                      FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 15,
                          ),

                          SizedBox(
                            width:
                                double.infinity,
                            height:
                                55,
                            child:
                                ElevatedButton(
                              onPressed:
                                  () {

                                Navigator.pushNamed(
                                  context,
                                  '/checkout',
                                );
                              },
                              child:
                                  const Text(
                                "Proceed To Checkout",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
    );
  }
}