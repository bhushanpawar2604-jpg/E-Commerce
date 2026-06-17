import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/auth_provider.dart';
import 'providers/product_provider.dart';
import 'providers/cart_provider.dart';
import 'providers/wishlist_provider.dart';
import 'providers/search_provider.dart';
import 'providers/category_provider.dart';
import 'providers/review_provider.dart';

import 'theme/app_theme.dart';
import 'routes/app_routes.dart';
import 'providers/order_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SearchProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ReviewProvider(),
        ),

      ],
      child: const MegaMallApp(),
    ),
  );
}

class MegaMallApp extends StatelessWidget {
  const MegaMallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MegaMall',
      debugShowCheckedModeBanner:
          false,
      theme: AppTheme.lightTheme,
      initialRoute:
          AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}