import 'package:flutter/material.dart';

import '../screens/splash/splash_screen.dart';

import '../screens/auth/login_screen.dart';
import '../screens/auth/register_screen.dart';
import '../screens/auth/otp_screen.dart';
import '../screens/auth/forgot_password_screen.dart';
import '../screens/auth/reset_password_screen.dart';

import '../screens/home/home_screen.dart';

import '../screens/search/search_screen.dart';

import '../screens/category/category_screen.dart';

import '../screens/product/product_detail_screen.dart';
import '../screens/product/filter_screen.dart';
import '../screens/product/sort_screen.dart';

import '../screens/wishlist/wishlist_screen.dart';

import '../screens/cart/cart_screen.dart';

import '../screens/profile/profile_screen.dart';

import '../screens/news/news_screen.dart';
import '../screens/news/news_detail_screen.dart';

import '../screens/checkout/checkout_screen.dart';
import '../screens/checkout/payment_screen.dart';
import '../screens/checkout/order_success_screen.dart';
import '../screens/orders/orders_screen.dart';


class AppRoutes {
  static const String splash = '/';

  static const String login = '/login';

  static const String register = '/register';

  static const String otp = '/otp';

  static const String forgotPassword = '/forgot-password';

  static const String resetPassword = '/reset-password';

  static const String home = '/home';

  static const String search = '/search';

  static const String category = '/category';

  static const String productDetail = '/product-detail';

  static const String filter = '/filter';

  static const String sort = '/sort';

  static const String wishlist = '/wishlist';

  static const String cart = '/cart';

  static const String profile = '/profile';

  static const String news = '/news';

  static const String newsDetail = '/news-detail';

  static const String checkout = '/checkout';

  static const String payment = '/payment';

    static const String orders =
            '/orders';
    static const String orderSuccess =
    '/order-success';

  static Map<String, WidgetBuilder>
      routes = {
    splash: (context) =>
        const SplashScreen(),

    login: (context) =>
        const LoginScreen(),

    register: (context) =>
        const RegisterScreen(),

    otp: (context) =>
        const OtpScreen(),

    forgotPassword: (context) =>
        const ForgotPasswordScreen(),

    resetPassword: (context) =>
        const ResetPasswordScreen(),

    home: (context) =>
        const HomeScreen(),

    search: (context) =>
        const SearchScreen(),

    category: (context) =>
        const CategoryScreen(),

    productDetail: (context) =>
        const ProductDetailScreen(),

    filter: (context) =>
        const FilterScreen(),

    sort: (context) =>
        const SortScreen(),

    wishlist: (context) =>
        const WishlistScreen(),

    cart: (context) =>
        const CartScreen(),

    profile: (context) =>
        const ProfileScreen(),

    news: (context) =>
        const NewsScreen(),

    newsDetail: (context) =>
        const NewsDetailScreen(),

    checkout: (context) =>
        const CheckoutScreen(),

    payment: (context) =>
        const PaymentScreen(),

    orderSuccess: (context) =>
        const OrderSuccessScreen(),

    orders: (context) =>
        const OrdersScreen(),
  };
}