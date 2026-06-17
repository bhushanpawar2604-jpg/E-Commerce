import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/cart_provider.dart';
import '../../providers/wishlist_provider.dart';
import '../../providers/auth_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final cartProvider =
        context.watch<CartProvider>();

    final wishlistProvider =
        context.watch<WishlistProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Account",
        ),
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.all(16),
        child: Column(
          children: [

            Container(
              padding:
                  const EdgeInsets.all(
                20,
              ),
              decoration:
                  BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(
                  20,
                ),
              ),
              child: const Column(
                children: [

                  CircleAvatar(
                    radius: 40,
                    child: Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),

                  SizedBox(
                    height: 12,
                  ),

                  Text(
                    "MegaMall User",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  Text(
                    "user@gmail.com",
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            GridView(
              shrinkWrap: true,
              physics:
                  const NeverScrollableScrollPhysics(),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              children: [

               GestureDetector(
  onTap: () {
    Navigator.pushNamed(
      context,
      '/orders',
    );
  },
  child: _menuCard(
    icon: Icons.shopping_bag,
    title: "My Orders",
    subtitle: "View Orders",
  ),
),

                _menuCard(
                  icon:
                      Icons.favorite,
                  title:
                      "Wishlist",
                  subtitle:
                      "${wishlistProvider.wishlistIds.length} Items",
                ),

                _menuCard(
                  icon:
                      Icons.shopping_cart,
                  title:
                      "Cart",
                  subtitle:
                      "${cartProvider.itemCount} Items",
                ),

                _menuCard(
                  icon:
                      Icons.settings,
                  title:
                      "Settings",
                  subtitle:
                      "Manage App",
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            ListTile(
              leading:
                  const Icon(
                Icons.help_outline,
              ),
              title:
                  const Text(
                "Help & Support",
              ),
              trailing:
                  const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),

            ListTile(
              leading:
                  const Icon(
                Icons.info_outline,
              ),
              title:
                  const Text(
                "About App",
              ),
              trailing:
                  const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),

            ListTile(
              leading:
                  const Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title:
                  const Text(
                "Logout",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onTap: () {

                context
                    .read<AuthProvider>()
                    .logout();

                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login',
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding:
          const EdgeInsets.all(
        15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(
          18,
        ),
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [

          Icon(
            icon,
            size: 35,
          ),

          const SizedBox(
            height: 10,
          ),

          Text(
            title,
            style:
                const TextStyle(
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          Text(
            subtitle,
            textAlign:
                TextAlign.center,
            style:
                const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}