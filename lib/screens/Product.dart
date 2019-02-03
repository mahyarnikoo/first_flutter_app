import 'Package:flutter/material.dart';

class ProductScreen extends StatelessWidget{

  static const String routeName = "/Product";

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Product"),),
    body: new Container(
      child: new Center(
        child: new Text("Product Screen"),
      )
    ),
    );
  }


}