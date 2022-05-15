import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopcart/providers/auth.dart';
import 'package:shopcart/providers/cart.dart';
import 'package:shopcart/providers/orders.dart';
import 'package:shopcart/providers/products.dart';
import 'package:shopcart/screens/auth_screen.dart';
import 'package:shopcart/screens/cart_screen.dart';
import 'package:shopcart/screens/edite_product.dart';
import 'package:shopcart/screens/orders_screen.dart';
import 'package:shopcart/screens/product_detilse.dart';
import 'package:shopcart/screens/product_overview.dart';
import 'package:shopcart/screens/splach_screen.dart';
import 'package:shopcart/screens/user_products.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Auth()),
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: Orders()),
        ChangeNotifierProvider.value(value: Products()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: AuthScreen(),
        routes: {
          ProductDetailsScreen.routeName: (_)=> ProductDetailsScreen(),
          AuthScreen.routeName: (_)=> AuthScreen(),
          CartScreen.routeName: (_)=> CartScreen(),
          EditScreen.routeName: (_)=> EditScreen(),
          OrdersScreen.routeName: (_)=> OrdersScreen(),
          SplashScreen.routeName: (_)=> SplashScreen(),
          UserProductsScreen.routeName: (_)=> UserProductsScreen(),
        },
      ),
    );
  }
}
