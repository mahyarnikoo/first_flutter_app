import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/Product.dart';
import 'package:navigation_drawer/screens/account.dart';
import 'package:navigation_drawer/screens/home.dart';
import 'package:navigation_drawer/screens/converter.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HomeScreen(), // route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      // define the routes
      ConverterScreen.routeName: (BuildContext context) => new ConverterScreen(),
      AccountScreen.routeName: (BuildContext context) => new AccountScreen(),
      ProductScreen.routeName: (BuildContext context) => new ProductScreen(),
    },
  ));
}
