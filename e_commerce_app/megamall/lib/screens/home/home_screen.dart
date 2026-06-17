import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/app_images.dart';

import '../../providers/product_provider.dart';

import '../../widgets/home/banner_slider.dart';
import '../../widgets/home/product_card.dart';
import '../../widgets/home/section_header.dart';

import '../../widgets/navigation/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState
    extends State<HomeScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final products =
        context
            .watch<ProductProvider>()
            .products;

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "MegaMall",
        ),

        actions: [

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
            ),
          ),

          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/cart',
              );
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
        ],
      ),

      bottomNavigationBar:
          BottomNavbar(
        currentIndex:
            selectedIndex,
        onTap: (index) {

          setState(() {
            selectedIndex = index;
          });

          switch (index) {

            case 0:
              break;

            case 1:
              Navigator.pushNamed(
                context,
                '/search',
              );
              break;

            case 2:
              Navigator.pushNamed(
                context,
                '/wishlist',
              );
              break;

            case 3:
              Navigator.pushNamed(
                context,
                '/cart',
              );
              break;

            case 4:
              Navigator.pushNamed(
                context,
                '/profile',
              );
              break;
          }
        },
      ),

      body: SafeArea(
        child: SingleChildScrollView(

          padding:
              const EdgeInsets.all(
            16,
          ),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/search',
                  );
                },
                child: Container(
                  height: 55,
                  decoration:
                      BoxDecoration(
                    color:
                        Colors.white,
                    borderRadius:
                        BorderRadius.circular(
                      12,
                    ),
                    border: Border.all(
                      color:
                          Colors.grey
                              .shade300,
                    ),
                  ),
                  child: const Row(
                    children: [

                      SizedBox(
                        width: 15,
                      ),

                      Icon(
                        Icons.search,
                      ),

                      SizedBox(
                        width: 10,
                      ),

                      Text(
                        "Search Products...",
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              BannerSlider(
                banners: [
                  AppImages.banner1,
                  AppImages.banner2,
                  AppImages.banner3,
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              const SectionHeader(
                title:
                    "Popular Categories",
              ),

              const SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection:
                      Axis.horizontal,
                  children: [

                    _categoryItem(
                      Icons.phone_android,
                      "Gadgets",
                    ),

                    _categoryItem(
                      Icons.checkroom,
                      "Fashion",
                    ),

                    _categoryItem(
                      Icons.sports_cricket,
                      "Sports",
                    ),

                    _categoryItem(
                      Icons.face,
                      "Beauty",
                    ),

                    _categoryItem(
                      Icons.laptop,
                      "Electronics",
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                width:
                    double.infinity,
                padding:
                    const EdgeInsets.all(
                  20,
                ),
                decoration:
                    BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(
                    20,
                  ),
                  gradient:
                      const LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.indigo,
                    ],
                  ),
                ),
                child: const Column(
                  children: [

                    Text(
                      "Mega Sale",
                      style: TextStyle(
                        color:
                            Colors.white,
                        fontSize: 24,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 5,
                    ),

                    Text(
                      "Up To 50% OFF",
                      style: TextStyle(
                        color:
                            Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              const SectionHeader(
                title:
                    "Trending Products",
              ),

              const SizedBox(
                height: 15,
              ),

              GridView.builder(
                shrinkWrap: true,

                physics:
                    const NeverScrollableScrollPhysics(),

                itemCount:
                    products.length,

                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      2,

                  childAspectRatio:
                      0.72,

                  crossAxisSpacing:
                      12,

                  mainAxisSpacing:
                      12,
                ),

                itemBuilder:
                    (
                      context,
                      index,
                    ) {

                  final product =
                      products[index];

                  return ProductCard(

                    product:
                        product,

                    onTap: () {

                      Navigator.pushNamed(
                        context,
                        '/product-detail',
                        arguments:
                            product,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _categoryItem(
    IconData icon,
    String title,
  ) {

    return Container(
      width: 90,
      margin:
          const EdgeInsets.only(
        right: 12,
      ),

      decoration:
          BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(
          15,
        ),
      ),

      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,

        children: [

          CircleAvatar(
            radius: 25,
            child: Icon(icon),
          ),

          const SizedBox(
            height: 8,
          ),

          Text(
            title,
            textAlign:
                TextAlign.center,
          ),
        ],
      ),
    );
  }
}