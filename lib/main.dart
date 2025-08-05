import 'package:flutter/material.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/cart/cart_screen.dart';
import 'screens/wishlist/wishlist_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/orders/orders_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URBANZA',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (ctx) => const SplashScreen(),
        '/home': (ctx) => const HomeScreen(),
        '/cart': (ctx) => const CartScreen(),
        '/wishlist': (ctx) => const WishlistScreen(),
        '/login': (ctx) => const LoginScreen(),
        '/orders': (ctx) => const OrdersScreen(),
      },
    );
  }
}
